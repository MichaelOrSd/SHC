# Sacred Heart Church - Project Tracker

## Project Goal
Rebuild and modernize the Sacred Heart Church website (nhshc.ca) for the parish in North Harbour, Newfoundland.

> **Session startup:** Review `docs/meeting-notes.md` for full meeting history and client context.

---

## Site Audit (Current nhshc.ca) - Feb 27, 2026

### What Exists
| Section | Status | Notes |
|---------|--------|-------|
| Home/Welcome | Live | Historical narrative by Ida Linehan about the church's 1950s founding |
| About Us | Partial | Board of directors listed; document links are broken placeholders |
| Our History | Placeholder | Marked "coming soon" |
| Newsletters | Live | 3 PDFs available (Jul 2023, Feb 2024, Nov 2025) |
| Cemetery | Live | External link to shawnpowerancestry.com/gravesites/ |
| Donate | Live | E-Transfer and mail options listed |
| Contact | Live | Email and mailing address |

### What's Missing or Broken
- [x] Articles of Incorporation — received (2 PDFs in `docs/`)
- [ ] Financial Statements — still missing
- [x] Church Bylaws / Board of Directors — PDF saved to `docs/`
- [ ] Church history content (marked "coming soon")
- [ ] Mass/service schedule
- [ ] Event calendar
- [ ] Photo gallery / images of the church — **4 photos found on server** in `backup/live-site/nhshc.ca/Images/` (not used on live page)
- [ ] Accessibility improvements (alt text, ARIA labels, etc.)
- [ ] SEO meta tags and Open Graph data

### Tech Stack (Current)
- Plain HTML5, CSS3, vanilla JavaScript
- No framework, no build system, no CMS
- Hosted as static files
- PDF files served from `/Newsletters/` directory

---

## Development Tasks

### Phase 0 - Design Approval
- [x] **Design 3 site mockups with Sonnet to present to Terry** — prompts in `docs/design-prompts.md`
  - [x] Mockup 1: "Classic Heritage" — traditional, reverent, dark red
  - [x] Mockup 2: "Warm Community" — welcoming, people-focused, cream/red
  - [x] Mockup 3: "Modern & Clean" — contemporary, bold typography, red accent
- [x] Present mockups to Terry Power for feedback and selection (Mar 6)
- [ ] Finalize design direction — Terry favours **Design 1 (Classic Heritage)** with the "Built by Hand, Bound by Heart" section from **Design 3**. Both sent to Terry for detailed review. Awaiting final sign-off.

**Design revisions from Terry (Mar 6):**
- Change "Support Our Parish" → "Support Our Church"
- Move Board of Directors below Cemetery section
- Section order: Hero → Our Story → Cemetery → Board of Directors → Ways to Give → Newsletter → Footer

### Phase 1 - Foundation
- [x] Decide on tech stack for rebuild — HTML/CSS/JS static site (Apr 9)
- [x] Set up project structure and version control — Git repo initialized (Apr 9)
- [x] Design system: colors, typography, spacing — based on Classic Heritage mockup (Apr 9)
- [x] Responsive layout / mobile-first approach — implemented (Apr 9)
- [x] Self-host fonts — WOFF2 files, no CDN dependencies (Apr 9)
- [x] Favicon added from live site backup (Apr 9)

### Phase 2 - Core Pages
- [ ] Home page with hero section
- [ ] About page (history, board of directors, governing documents)
- [ ] Mass/service schedule page
- [ ] Newsletter archive + member signup
- [ ] **Ways to Give page** — comprehensive donate page, design-independent. Spec in `docs/Ways-to-Give-Implementation-Prompt.md`, content in `docs/Ways-to-Give-Sacred-Heart-Church.docx`. Sections: traditional giving, digital/e-Transfer, securities, legacy/planned giving, special campaigns.
- [ ] Contact page with form

### Phase 3 - Enhancements
- [ ] Photo gallery
- [ ] Event calendar
- [ ] Cemetery page — dedicated page with restoration story + link to Shawn Power's gravesites DB
- [ ] Accessibility audit and fixes
- [ ] SEO optimization
- [ ] Performance optimization

### Phase 4 - Launch
- [ ] Content migration from current site
- [ ] Domain/hosting setup
- [ ] Testing across browsers and devices
- [ ] Go live

---

## Your To-Do List

### Current (Apr 16, 2026)
- [x] **Design sign-off received** — Terry approved Apr 16: "Please go ahead with the build."
- [x] **Newsletter wording change applied** — "Parish Newsletter" → "Church Newsletter" per Terry. Parish is the broader entity that will ultimately be linked to.
- [ ] **Sprint 4: Responsive/accessibility QA** — next up
- [ ] **Sprint 5: Deploy to GitHub Pages**
- [ ] **Sprint 6: Handoff & maintenance docs**
- [ ] **Supabase vs Kit decision** — Pivot proposed: move from Kit to Supabase from the start. Expected cost $4,385 vs $4,953 for Kit-then-Supabase. Not yet presented to Terry.

### Previous (Apr 9, 2026)
- [x] **E-transfer email confirmed: northharbourshc@gmail.com** — Terry confirmed Apr 9. nhChurch@nhshc.ca was set up by Bill Power.
- [ ] **Cemetery copy** — Ida Linehan will write it. Terry to introduce Michael to Ida once site is viewable.
- [x] **CanadaHelps confirmed active** — people have donated through it before.
- [ ] **High-res church photos** — Terry working on it. Using existing 1024px photos for demo.
- [ ] **Logo** — Terry sorting it out ("leave that with me").
- [x] **Domain ownership confirmed: Melvin Leonard** — owns nhshc.ca, offers it free of charge.
- [ ] **Design sign-off still pending** — Terry and Mary Ann both reviewing.
- [ ] **Migration: GitHub Pages (site) + DreamHost (email only)** — reduces costs from ~$170/yr to ~$24/yr. Melvin downgrades to email-only hosting.

### Completed
- [x] **Mary Ann Butt feedback received** — `Website Revision Suggestions.docx`. Updated copy, CanadaHelps confirmed, value boxes, logo needed.
- [x] **Site draft built locally** — `site/index.html` + `site/css/style.css` with all revisions applied (Apr 9).
- [x] **Tech stack decided: HTML/CSS/JS** — static site, no framework. Hosted on DreamHost.
- [x] **Newsletter approach decided: Kit (ConvertKit)** — free plan, 10K subs, unlimited broadcasts. No backend needed.
- [x] **Donation approach decided: E-Transfer + CanadaHelps** — no Stripe needed.
- [x] **Epic and sprint plan created** — `docs/epic-site-launch.md` (7 sprints, ~14 hrs, ~$777).
- [x] **DreamHost panel access** — received from Melvin Leonard (confirmed Apr 9).
- [x] **Log in to DreamHost** — SFTP backup complete. Full site downloaded to `backup/live-site/`.
- [x] **Request DreamHost panel access** — email sent Mar 3, access received Apr 9.
- [x] **Design mockup 1:** "Classic Heritage"
- [x] **Design mockup 2:** "Warm Community"
- [x] **Design mockup 3:** "Modern & Clean"
- [x] **Present to Terry** — Mar 6. He likes Design 1 + "Built by Hand" section from Design 3.
- [x] **By-Laws PDF** — Terry sent the By-Laws content via email. Saved as PDF.
- [x] **Site drafts shared with Mary Ann Butt** — sent for review.

### Still To Do
- [ ] Finalize design direction — formal sign-off from Terry and Mary Ann
- [x] Domain ownership: Melvin Leonard — confirmed Apr 9
- [ ] Get the 15-20 PDFs (governing docs, memberships, roles) — or a timeline for when they'll be ready
- [ ] Start collecting remaining content — cemetery restoration story, final copy edits
- [ ] Request photos from Terry/board if available
- [ ] Save any PDFs received into project assets folder

### Ongoing / As Needed
- [x] Back up current live site from DreamHost — saved to `backup/live-site/` on Mar 3
- [x] Set up Git repo for version control — initialized Apr 9
- [ ] Draft a simple project agreement/scope doc for Terry
- [ ] Store all credentials in a password manager (not just `.env`)

---

## Client Onboarding Questions (for Terry Power meeting)

### Access & Ownership
- [ ] **Domain registrar** - Who owns nhshc.ca? Do you have login credentials for the registrar (GoDaddy, Namecheap, etc.)?
- [x] **Hosting** - DreamHost. SFTP access credentials received (stored securely outside repo). Domain and hosting paid for by Melvin Leonard.
- [x] **Email accounts** - nhshcinfo@gmail.com credentials received. nhchurch@nhshc.ca is a fully hosted IMAP email on DreamHost (set up by Mel Leonard). Credentials stored securely outside repo.
- [ ] **DNS** - Is there anyone currently managing this, or was it a one-time setup?

### Current Site
- [x] **Who built the original site?** Bill Power, ~25 years ago.
- [ ] **Are there any files/assets not on the live site?** (photos, documents, history drafts, the missing PDFs for Articles of Incorporation, Bylaws, Financial Statements)
- [x] **Is the cemetery database (shawnpowerancestry.com) maintained by someone in the parish?** Shawn Power's site stays external. Church wants their own cemetery page covering their restoration work, with a link out to the gravesites DB.

### Content & Priorities
- [ ] **What's the #1 thing you want people to find on the site?** (mass times, donation info, contact, history)
- [ ] **Do you have mass/service schedules to publish?** How often do they change?
- [ ] **Do you have photos of the church** (building, interior, events, historical)?
- [ ] **The history section says "coming soon" - is there content ready or does someone need to write it?**
- [x] **Who will update the site going forward?** You (darkdesk) will be the ongoing maintainer. No CMS needed - updates go through you.

### Functional Requirements
- [ ] **Do you want a contact form**, or is the email address sufficient?
- [ ] **Any interest in an events calendar?** (fundraisers, community events, seasonal services)
- [ ] **Online donations** - Happy with E-Transfer, or want to accept credit cards online? (Stripe, Canada Helps, etc.)
- [ ] **Do you need a members-only or admin area**, or is everything public?

### Budget & Timeline
- [ ] **Is there a budget for hosting/domain renewal?** (sets expectations on paid tools vs. free tiers)
- [ ] **Any hard deadline?** (anniversary, seasonal event, bishop visit, etc.)
- [ ] **Is this volunteer work or a paid engagement?** - Be clear upfront so scope doesn't creep.

### Approval Process
- [ ] **Who has final approval on content and design?** Can Terry sign off alone, or does everything go to the full board? (This determines turnaround time on every decision.)

---

## Meeting Notes

> Full meeting notes are in `docs/meeting-notes.md`. Summaries below.

### Mar 3, 2026 - Meeting with Terry Power + Work Session
- Transparency is a key value — Terry has done all graveyard labour by hand
- Melvin Leonard currently hosts site and uploads content; pays for domain/hosting
- Site connection info received via Bill Parsons email (credentials stored securely outside repo)
- Content needs: docs/minutes, updated info, fundraising links, posts page
- 15-20 PDFs to upload (auth memberships, roles, governing documents)
- Newsletter section to continue
- Future: social media integration (posts that can be shared to SM over time)
- Cemetery: want their own page with restoration story, not just a link to Shawn Power's site

**Work completed Mar 3:**
- Set up project structure: `docs/`, `backup/`, `.env`, `.gitignore`, `.claude/ignore`
- Received updated Board of Directors (6 members replacing 4) — created PDF
- Received 2x Articles of Incorporation PDFs from Terry
- Scraped and saved all current site content to `docs/current-site-content.md`
- Confirmed governance docs (Articles, Financial Statements, Bylaws) are NOT on the live server — all `#` placeholders
- SFTP backup of entire live site to `backup/live-site/`
- Discovered 4 unused church photos on the server (`Images/` directory) — too small for hero (1024px), need originals
- "Ways to Give" page fully specced — implementation prompt + content doc added to `docs/`
- By-Laws source docx received (`2022 11 22 Sacred Heart RCC By-Law 1 rfp.docx`)
- Full HTML source captured with exact Ida Linehan welcome text
- Emailed Terry (CC'd Mel + Bill) requesting DreamHost panel access
- Created 3 design prompts in `docs/design-prompts.md` for mockup generation
- Budget set at ~$800-1200 for Phase 1 basic site
- Scheduled Mar 8 meeting at 1:00 PM with Terry

### Feb 27, 2026 - Project Kickoff
- Reviewed current site at nhshc.ca
- Identified broken placeholder links and missing content
- Project directory initialized at `/Users/darkdesk/Desktop/VSC/SHC/`
- Created CLAUDE.md and project.md for tracking

---

## Decisions Log

| Date | Decision | Rationale |
|------|----------|-----------|
| Feb 27, 2026 | Project initialized | Starting fresh rebuild of nhshc.ca |
| Mar 3, 2026 | Hosting confirmed: DreamHost | SFTP access received; Melvin Leonard pays for hosting/domain |
| Mar 3, 2026 | Need posts/updates page | Terry wants ability to share news and fundraising links |
| Mar 3, 2026 | 15-20 PDFs to upload | Governing docs, memberships, roles — significant content task |
| Mar 3, 2026 | Budget: $1,200 site + $444 newsletter = ~$1,650 | Half rate ($55.50/hr) for the church. Newsletter backend is add-on. |
| Mar 3, 2026 | 3 design mockups before build | Present Classic Heritage, Warm Community, and Modern & Clean to Terry |
| Mar 3, 2026 | Cemetery: own page, not just a link | Restoration story + link to Shawn Power's gravesites DB |
| Mar 3, 2026 | DreamHost panel access requested | Email sent to Terry, CC'd Mel + Bill. Access received Apr 9 |
| Mar 3, 2026 | Board of Directors updated | New roster from Terry: 6 members replacing original 4 |
| Mar 3, 2026 | Articles of Incorporation received | 2 PDFs saved to `docs/` |
| Mar 3, 2026 | By-Laws / Directors PDF created | Saved to `docs/` |
| Mar 3, 2026 | Newsletter: Supabase backend (recommended) | Set up DB now to avoid rework when user login/posting comes in Phase 2+ |
| Mar 3, 2026 | Future: user login + content posting | Confirmed as a future requirement — Supabase auth ready for this |
| Mar 3, 2026 | Church photos too small for hero | 1024px max — need originals from Terry for full-width hero (1920px+) |
| Mar 6, 2026 | Design direction: Classic Heritage + "Built by Hand" from Modern | Terry's pick — awaiting final sign-off after detailed review |
| Mar 6, 2026 | "Support Our Parish" → "Support Our Church" | Terry's wording preference |
| Mar 6, 2026 | Board of Directors moved below Cemetery | Lower priority in page hierarchy per Terry |
| Mar 3, 2026 | "Ways to Give" page spec complete | Comprehensive giving page — applies regardless of design choice. Spec + content in `docs/` |
| Mar 3, 2026 | By-Laws docx received | `docs/2022 11 22 Sacred Heart RCC By-Law 1 rfp.docx` |
| Apr 7, 2026 | Follow-up emails sent to Mary Ann Butt + Terry Power | Mary Ann reviewing site drafts — checking in on feedback. Terry pinged on design sign-off, DreamHost access, and photos |
| Apr 9, 2026 | Tech stack: HTML/CSS/JS (static) | No framework needed. DreamHost serves static files via SFTP |
| Apr 9, 2026 | Newsletter: Kit (ConvertKit) free plan | 10K subscribers, unlimited broadcasts. Replaces Supabase proposal — saves $444 |
| Apr 9, 2026 | Donations: E-Transfer + CanadaHelps | No Stripe needed. CanadaHelps handles monthly/credit card with tax receipts |
| Apr 9, 2026 | Mary Ann Butt feedback received | docx with revised copy, CanadaHelps info, value boxes, logo request |
| Apr 9, 2026 | Site draft built locally | `site/index.html` — all revisions applied, ready for review |
| Apr 9, 2026 | Epic/sprint plan created | 7 sprints, ~14 hrs, ~$777. See `docs/epic-site-launch.md` |
| Apr 9, 2026 | E-transfer email discrepancy flagged | Mary Ann says northharbourshc@gmail.com, records say nhChurch@nhshc.ca — awaiting confirmation |
| Apr 10, 2026 | Design sign-off email sent | Email to Terry + Mary Ann with screenshot attached, awaiting reply |
| Apr 10, 2026 | Supabase pivot under consideration | Cheaper in expected case ($4,385 vs $4,953) and avoids Kit→Supabase rework. Not yet presented to client |
| Apr 9, 2026 | DreamHost panel access received | Melvin Leonard granted access Apr 9 |
| Apr 9, 2026 | E-transfer email confirmed | northharbourshc@gmail.com — Terry confirmed. nhChurch@nhshc.ca was Bill's setup |
| Apr 9, 2026 | CanadaHelps confirmed active | People have donated through it before |
| Apr 9, 2026 | Domain owned by Melvin Leonard | Offers it free of charge. Need Melvin to update DNS or transfer |
| Apr 9, 2026 | Cemetery copy: Ida Linehan writing | Terry to intro Michael to Ida once site is viewable |
| Apr 9, 2026 | Hosting migration: GitHub Pages + DreamHost email-only | Site on GitHub Pages (free), email stays on DreamHost (~$24/yr). Down from ~$170/yr |
| Apr 16, 2026 | **Design sign-off received from Terry** | "Please go ahead with the build." Build phase unblocked |
| Apr 16, 2026 | Newsletter wording: "Church Newsletter" not "Parish" | Per Terry: Parish is the broader entity that will ultimately be linked to. Church-scoped language belongs on this site |

---

## Budget & Pricing

### Project Estimate

Rate: $111/hr — working at half rate ($55.50/hr) for the church.

| Item | Hours | Cost |
|------|-------|------|
| Frontend build (static site) | ~22 hrs | $1,200 |
| ~~Newsletter backend (Supabase)~~ | ~~8 hrs~~ | ~~$444~~ |
| Newsletter: Kit (free plan) | ~2 hrs | $111 |
| **Revised Total** | **~24 hrs** | **~$1,311** |
| **Sprint estimate (see epic)** | **~14 hrs** | **~$777** |

### Newsletter Backend Strategy

**Recommendation: Set up Supabase now** (not Mailchimp or a simple serverless function)

Why build for expansion now:
- Church wants user login and content posting down the road (confirmed)
- Supabase gives us: real Postgres database, REST API, and built-in auth — all free tier
- Newsletter signup → store emails in a `subscribers` table
- When Phase 2 comes, add `users` and `posts` tables to something that already exists
- Avoids rework: going Mailchimp now means migrating data, rebuilding the signup flow, and re-confirming subscribers later (4–6 hrs of wasted rework)

**Supabase newsletter backend (2–4 hrs):**
- Supabase project setup + schema (1–2 hrs)
- Newsletter signup form → DB integration (1–2 hrs)
- nhshcinfo@gmail.com gets notified on each new subscriber

### How to Pitch to Terry

Frame it as: *"We can do this the cheap way now and pay more later, or spend a little more now and never have to redo it."*

Present as two line items:
1. **Site build: $1,200** — full landing page with all sections, responsive, polished
2. **Newsletter backend (add-on): $444** — Supabase setup, sets the foundation for newsletter signups now and user accounts + content posting later

Total ~$1,650 — at a discounted rate for the church. The backend add-on is the smart investment because they're already thinking long-term.

### Future Phases (not in this quote)
- User login + authentication (Supabase auth already in place)
- Content posting / blog / updates (admin panel, posts table)
- Events calendar
- Online payments (Stripe / Canada Helps integration)
- Social media integration

---

## Content Inventory

### Available Content (from current site)
- Welcome narrative (by Ida Linehan) — full exact text in `backup/live-site/nhshc.ca/index.html`
- Board of Directors listing (outdated on live site — updated roster in `docs/`)
- 3 newsletter PDFs
- Donation instructions (E-Transfer + mail)
- Contact info (email, mailing address)
- **4 church photos** found on server (not displayed on live page): `backup/live-site/nhshc.ca/Images/`
  - `church1.jpg` — front entrance view
  - `church2.jpg` — side angle with community centre wing
  - `church3.jpg` — grounds view
  - `churchlogo.jpg` — road sign with church in background (good hero candidate)

### Content Needed
- Church history (full write-up)
- Photos of the church building, interior, community — **4 exterior photos found on server**, may still want interior + community photos from Terry
- Mass/service times
- Articles of Incorporation (PDF)
- Financial Statements (PDF)
- Church Bylaws (PDF)
- Event listings
- 15-20 PDFs: memberships, roles, and other governing documents (from Mar 3 meeting)
- Fundraising links and info
- Posts/updates content for new posts page
