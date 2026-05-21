# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the **Sacred Heart Church** website rebuild for the parish in **North Harbour, St. Mary's Bay, Newfoundland (A0B 2V0)**. The church was established in the early 1950s and is a registered charity. The existing site at [nhshc.ca](https://nhshc.ca/) is a single-page static HTML site that needs modernization.

**Maintenance model:** darkdesk is the sole ongoing maintainer. No CMS is needed — all updates go through them directly.

## Repository Structure

```
SHC/
├── CLAUDE.md              # This file — project guidance for Claude Code
├── project.md             # Central project tracker — phases, decisions, budget, meeting notes
├── .env                   # Credentials (DO NOT read or commit — blocked by .claude/ignore and .gitignore)
├── .claude/ignore         # Prevents Claude Code from reading sensitive files
├── docs/                  # Project documentation and client assets
│   ├── current-site-content.md     # Scraped content from live nhshc.ca
│   ├── design-prompts.md           # 3 mockup prompts (Classic Heritage, Warm Community, Modern & Clean)
│   ├── meeting-notes.md            # Full meeting history with Terry Power
│   ├── Ways-to-Give-Implementation-Prompt.md  # Spec for comprehensive donation page
│   ├── Ways-to-Give-Sacred-Heart-Church.docx  # Content doc for donation page
│   ├── bylaws-directors.html       # Board of Directors / By-Laws HTML
│   └── (PDFs)                      # Articles of Incorporation, Board of Directors, By-Laws
└── backup/
    └── live-site/                  # Full SFTP backup of current nhshc.ca (Mar 3, 2026)
        └── nhshc.ca/
            ├── index.html          # Current live site HTML (source of truth for existing content)
            ├── Images/             # 4 church photos (1024px — too small for hero)
            ├── Newsletters/        # 3 PDF newsletters (Jul 2023, Feb 2024, Nov 2025)
            └── favicon.ico/.gif
```

## Key Files to Read First

- **`project.md`** — the single source of truth for project status, phases, decisions log, budget, client onboarding questions, and meeting summaries. Always check here before starting work.
- **`docs/meeting-notes.md`** — full meeting history and client context.
- **`backup/live-site/nhshc.ca/index.html`** — the current live site HTML, including Ida Linehan's exact welcome text.

## Project Status

- **Tech stack: HTML/CSS/JS (static)** — decided Apr 9. No framework, no build tools. Hosted on DreamHost via SFTP.
- **Design direction: Classic Heritage + "Built by Hand" section from Modern & Clean** — Terry Power's pick, awaiting final sign-off.
- **Hosting: GitHub Pages (planned)** — migrating from DreamHost. Email stays on DreamHost (~$24/yr). Domain owned by Melvin Leonard (free of charge to church).
- Development is tracked in phases in `project.md` (Phase 0: Design → Phase 1: Foundation → Phase 2: Core Pages → Phase 3: Enhancements → Phase 4: Launch)

### Terry's Design Revisions (Mar 6, 2026)
- "Support Our Parish" → **"Support Our Church"**
- Section order: Hero → Our Story → Cemetery → Board of Directors → Ways to Give → Newsletter → Footer
- Board of Directors moved below Cemetery section

## Church Leadership (Board of Directors) — Updated May 19, 2026
Names per Mona's May 19 list (maiden names in parentheses for female members, so readers connect them to North Harbour; members may opt out via Michael). Corrected surnames vs. prior list: Ida (Linehan) **Young**; Mona (Bonia) Pearce.
- **President:** Terry Power
- **Vice President & Treasurer:** Mary Ann (Walsh) Butt
- **Director:** Mona (Bonia) Pearce
- **Director:** Ida (Linehan) Young
- **Director:** Ann (Philpott) Power
- **Director:** Ken Walsh

## Corporation & Contacts (confirmed May 21, 2026 meeting + Articles of Incorporation)
- **Legal corporation name:** North Harbour Sacred Heart Church **Corporation** (per Articles of Incorporation filed Jan 19, 2023 — `docs/2023 01 19 Inc. Articles.pdf`). Terry believed "Inc." — the Articles use "Corporation" throughout. **Pending Terry's confirmation** as to which form the board wants to publish; Articles are authoritative.
- **Founding year:** 2023 (incorporation filed Jan 19, 2023).
- **Primary email:** northharbourshc@gmail.com (confirmed Apr 9 by Terry as the donations Gmail he monitors; reaffirmed May 21). Supersedes prior `nhshcinfo@gmail.com` and `nhChurch@nhshc.ca` for public-facing use.
- **E-Transfer mailbox:** nhChurch@nhshc.ca (Bill Power set this up; Terry to confirm whether this or the Gmail is the donations-of-record address).
- **Mailing address:** Box 23, Site 5, North Harbour, St. Mary's Bay, NL A0B 2V0.
- Cemetery database: https://shawnpowerancestry.com/gravesites/
- Credentials are in `.env` (never read or commit this file)

## Design & Tone

- Preserve the church's traditional and welcoming identity
- The "North Harbour gene of kindness, welcoming, embracing, and care" should carry through the design
- Current visual identity uses deep red (#8B0000) with Georgia serif — any redesign should respect this heritage feel unless the client approves a departure
- Deep red (#8B0000) primary, cream/ivory accents, serif headings

## Git & Version Control

- Git repo has **not been initialized yet** — planned for Phase 1 after tech stack decision
- `.gitignore` already configured to exclude `.env`, `.DS_Store`, editor swap files
- `.claude/ignore` blocks `.env` and credential files from Claude Code access
