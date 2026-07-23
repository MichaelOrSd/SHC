# How to Post a Church Update

The repeatable process for publishing a new post to `site/updates.html`. ~10 minutes per post. Terry emails the content; Michael posts it.

## Steps

1. **Photos first (if any).** Resize to ~1200px wide (web-friendly, keeps Pages fast), save as `.jpg` into `site/Images/updates/` with a dated name, e.g. `2026-08-10-window-before.jpg`.

2. **Open `site/updates.html`.** Find the big `HOW TO ADD A NEW POST` comment near the top of `<main>`. Copy the **POST TEMPLATE** block inside it.

3. **Paste directly below that comment** — newest post always goes first.

4. **Fill in:**
   - `id="yyyy-mm-dd-short-slug"` — the post's shareable anchor (e.g. `2026-07-23-agm-update`). Date = publish date.
   - `post-date` — display date ("July 23, 2026").
   - Title in `<h2>`.
   - Body paragraphs. Lists use `<ul><li>`. Links: e-transfer → `mailto:northharbourshc@gmail.com`, subscribe → `index.html#newsletter`.
   - Photo: uncomment the `<figure>` block, set `src`, write real `alt` text, optional `figcaption`.
   - Keep the `post-divider` line between posts.

5. **Editorial rules:** light copyedit only (typos, punctuation) — never rewrite Terry's voice. "Church" not "Parish". Fix any emoji-capable glyphs with `&#xFE0E;` if added.

6. **Update the homepage tab.** In `site/index.html`, find `id="tab-updates"` and keep the list at the **latest 3** posts (newest first), each: `<li><a href="updates.html#ANCHOR">Title — Month YYYY</a></li>`.

7. **Commit + push** (auto-deploys in ~30s):
   ```bash
   git add site/updates.html site/index.html site/Images/updates/
   git commit -m "Post update: <title>"
   git push origin main
   ```

8. **Verify + hand off.** Check https://nhshc.ca/updates.html (hard refresh). Send Terry the **shareable link** for Facebook:
   `https://nhshc.ca/updates.html#yyyy-mm-dd-short-slug`

## Notes
- Posts are permanent — don't delete old ones; the page is the archive.
- If the page ever gets very long (20+ posts), split older years into `updates-2026.html` etc. — not needed until then.
- Log each post in `project.md` if it came with other client asks.
