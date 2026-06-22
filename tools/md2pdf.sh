#!/usr/bin/env bash
#
# md2pdf — convert a Markdown file to a styled PDF.
#
#   Uses markdown-it (Node) to render HTML, then headless Chrome/Brave to print a PDF.
#   No system installs beyond Node + a Chromium-based browser (which you already have).
#
# Usage:
#   ./md2pdf.sh <input.md> [output.pdf]
#
#   - If output.pdf is omitted, the PDF is written next to the input (same name).
#
# Tweak the look: edit the CSS block in the render step below.
#
set -euo pipefail

# ---- args ----------------------------------------------------------------
if [ $# -lt 1 ]; then
  echo "Usage: md2pdf.sh <input.md> [output.pdf]" >&2
  exit 1
fi
INPUT="$1"
[ -f "$INPUT" ] || { echo "md2pdf: file not found: $INPUT" >&2; exit 1; }
OUTPUT="${2:-${INPUT%.*}.pdf}"

# ---- 1. find a Chromium-based browser ------------------------------------
CHROME=""
for c in \
  "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  "/Applications/Brave Browser.app/Contents/MacOS/Brave Browser" \
  "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge" \
  "/Applications/Chromium.app/Contents/MacOS/Chromium" \
  "$(command -v google-chrome 2>/dev/null || true)" \
  "$(command -v chromium 2>/dev/null || true)" \
  "$(command -v chromium-browser 2>/dev/null || true)"; do
  if [ -n "$c" ] && [ -x "$c" ]; then CHROME="$c"; break; fi
done
[ -n "$CHROME" ] || { echo "md2pdf: no Chrome/Brave/Edge/Chromium found." >&2; exit 1; }
command -v node >/dev/null 2>&1 || { echo "md2pdf: Node.js is required (https://nodejs.org)." >&2; exit 1; }

# ---- 2. ensure the markdown renderer is installed (cached, one-time) ------
LIB="$HOME/.md2pdf"
if [ ! -d "$LIB/node_modules/markdown-it" ]; then
  echo "md2pdf: first run — installing the markdown renderer (one time)…" >&2
  mkdir -p "$LIB"
  ( cd "$LIB" && npm install markdown-it --no-audit --no-fund --silent )
fi

# ---- 3. write the renderer (refreshed each run so style edits take effect) -
cat > "$LIB/render.js" <<'NODE'
const fs = require('fs');
const MarkdownIt = require('markdown-it');
const md = new MarkdownIt({ html: true, linkify: true, typographer: true });
const body = md.render(fs.readFileSync(process.argv[2], 'utf8'));
const css = `
@page { size: Letter; margin: 1.8cm; }
* { box-sizing: border-box; }
body { font-family: Georgia,'Times New Roman',serif; color:#1c1208; line-height:1.5; font-size:11pt; }
h1 { color:#8B0000; font-size:20pt; margin:0 0 2pt; }
h3 { color:#8B0000; font-weight:normal; font-size:12.5pt; margin:2pt 0 14pt; }
h2 { color:#8B0000; font-size:13.5pt; border-bottom:2px solid #B8962E; padding-bottom:3pt; margin:20pt 0 8pt; page-break-after:avoid; }
p { margin:6pt 0; }
hr { border:none; border-top:1px solid #ccc; margin:14pt 0; }
table { border-collapse:collapse; width:100%; margin:8pt 0 12pt; font-size:9.5pt; }
th,td { border:1px solid #cfc4b0; padding:5pt 7pt; text-align:left; vertical-align:top; }
th { background:#f3ece0; color:#8B0000; }
tr { page-break-inside:avoid; }
ul,ol { margin:6pt 0; padding-left:20pt; }
li { margin:3pt 0; }
a { color:#8B0000; text-decoration:none; }
code { background:#f3ece0; padding:1pt 3pt; font-size:9.5pt; }
pre { background:#f7f2e8; padding:8pt 10pt; overflow:auto; }
pre code { background:none; padding:0; }
blockquote { margin:8pt 0; padding:2pt 12pt; border-left:3px solid #B8962E; color:#3a2e1e; }
img { max-width:100%; }
`;
fs.writeFileSync(
  process.argv[3],
  `<!DOCTYPE html><html><head><meta charset="utf-8"><style>${css}</style></head><body>${body}</body></html>`
);
NODE

# ---- 4. render Markdown -> HTML -> PDF ------------------------------------
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
HTML="$TMP/page.html"

node "$LIB/render.js" "$INPUT" "$HTML"

"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$OUTPUT" "file://$HTML" >/dev/null 2>&1 || \
"$CHROME" --headless --disable-gpu \
  --print-to-pdf="$OUTPUT" "file://$HTML" >/dev/null 2>&1

if [ -f "$OUTPUT" ]; then
  echo "✓ md2pdf: created $OUTPUT"
else
  echo "md2pdf: PDF creation failed." >&2
  exit 1
fi
