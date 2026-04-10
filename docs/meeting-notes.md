# Meeting Notes

---

## April 10, 2026 — Design Sign-Off Email Sent

- Emailed Terry Power (CC: Mary Ann Butt) requesting formal design sign-off
- Attached a screenshot of the current draft
- Waiting on their approval before starting the production build phase
- Live preview is also available at https://michaelorsd.github.io/SHC/ (not mentioned in the email — focused on the screenshot only)

### Pivot under consideration
- Moving from Kit to Supabase from the start instead of Kit-now-Supabase-later
- Rationale: church wants admin panel for content posting eventually (confirmed in Mar 3 notes). Kit branding on emails is a concern for business/professional context. Supabase-first avoids rework.
- Expected cost: $4,385 (Supabase from start) vs $4,953 (Kit now, migrate later)
- Not yet presented to Terry — will scope separately after design sign-off

---

## April 9, 2026 — Meeting with Terry Power

### Pre-Meeting
- Reviewed project status and prepared talking points
- Received Mary Ann Butt's revision notes via `Website Revision Suggestions.docx`
- DreamHost panel access confirmed received from Melvin Leonard

### Mary Ann's Feedback (from docx)
- Provided polished copy for Hero, Our Story, Cemetery, and Ways to Give sections
- E-transfer email for donations: **northharbourshc@gmail.com** (differs from nhChurch@nhshc.ca on file — needs confirmation)
- **CanadaHelps confirmed** as a donation method — listed under "North Harbour Sacred Heart Church", supports monthly credit card donations with annual tax receipt
- "Support Us" should be last in nav, separated from other items
- Add three value boxes: **Welcoming / Caring / Enduring**
- Add **"Open and Accountable"** paragraph
- Include Facebook community group mention alongside newsletter (no group exists yet)
- **Logo needed** — Mary Ann sent options previously, Ida had a suggestion. Decision pending.
- Likes the Classic Heritage design (Design 1) — aligns with Terry
- Says "This is a great start" — has more suggestions for next stage

### Decisions Made
- **Tech stack: HTML/CSS/JS** — static site, no framework, no build tools
- **Newsletter: Kit (formerly ConvertKit)** — free plan, 10K subscribers, unlimited broadcasts. Replaces Supabase backend proposal. Saves $444.
- **CanadaHelps for online donations** — no need for Stripe integration
- **Site build started** — first draft built locally at `site/index.html` with all Mary Ann/Terry revisions applied
- **Epic and sprint plan created** — see `docs/epic-site-launch.md`

### Work Completed Apr 9
- Built full site draft locally (`site/index.html`, `site/css/style.css`)
- Applied all Mary Ann feedback: updated copy, section order, value boxes, CanadaHelps, e-transfer email, Open and Accountable section
- Applied all Terry revisions: section reorder, "Support Our Church", Board below Cemetery
- Added "Built by Hand, Bound by Heart" section
- Updated Board of Directors to current 6-member roster
- Added Kit newsletter form placeholder
- Added mobile hamburger menu, skip nav, ARIA labels, SEO meta tags
- Created epic with 7 sprints: `docs/epic-site-launch.md`
- Cemetery section uses placeholder copy (awaiting final text)
- Follow-up email drafted and sent to Terry with action items

### Terry's Replies (Apr 9 email)
1. **E-transfer email: confirmed northharbourshc@gmail.com** — Bill Power set up nhChurch@nhshc.ca. Terry will monitor the gmail going forward.
2. **Cemetery copy: Ida Linehan will write it** — Terry will introduce Michael to Ida once site is viewable.
3. **CanadaHelps: confirmed active** — people have donated through it in the past.
4. **Photos: Terry will work on it** — use existing photos for the demo/initial site.
5. **Logo: Terry is sorting it out** — "There might be some confusion here. Leave that with me."
6. **Domain: Melvin Leonard owns nhshc.ca** — offers it free of charge to the church.

### Outstanding Items (updated)
- Cemetery copy — waiting on Ida Linehan
- High-res photos — Terry working on it, use existing for now
- Logo — Terry sorting it out
- Design approval still pending formal sign-off
- **Migration planned: GitHub Pages (site) + DreamHost email-only (~$24/yr)** — down from ~$170/yr

---

## April 7, 2026 - Follow-Up Emails Sent

### Status
- Mary Ann Butt has been reviewing the site drafts — no feedback received yet
- Follow-up email sent to Mary Ann (mary_ann_butt@hotmail.com) asking for her thoughts on the drafts
- Follow-up email sent to Terry Power checking in on:
  - Final design sign-off (Classic Heritage + "Built by Hand" section)
  - DreamHost panel access (still waiting on Melvin Leonard)
  - High-res church photos (still needed for hero image)

### Outstanding Items
- Design approval still pending — awaiting feedback from both Mary Ann and Terry
- ~~DreamHost panel access not yet set up by Melvin~~ — **received Apr 9**
- No high-res photos received yet
- Tech stack decision blocked until design is finalized

---

## March 6, 2026 - Design Review with Terry Power

### Design Decision
- Presented all 3 mockups to Terry
- **Terry likes Design 1 ("Classic Heritage") best** as the overall direction
- **Also likes the "Built by Hand, Bound by Heart" section from Design 3 ("Modern & Clean")** — wants to incorporate it
- Both designs sent to Terry for a more detailed look-through
- Awaiting final sign-off after Terry reviews both in detail

### Design Revisions Requested
- Change "Support Our Parish" → **"Support Our Church"**
- **Move Board of Directors section down** — place it below the Cemetery section (lower priority in page hierarchy)

### Section Order (revised)
1. Hero
2. Our Story / History
3. Cemetery (restoration story)
4. Board of Directors (moved down)
5. Ways to Give / Donate
6. Newsletter Signup
7. Footer

---

## March 3, 2026 - Meeting with Terry Power (Page 1)

**Location:** North Harbour, St. Mary's Bay
**Subject:** Sacred Heart Church website rebuild

### Transparency
- Terry has done all labour work by hand — graveyard maintenance
- Melvin Leonard currently hosts the site and uploads content

### Content Needs
- Docs / Minutes — need to update info on the site
- Links for fundraising (noted as priority)
- Posts page — ability to share updates
- Auth memberships / roles — 15-20 PDFs to be uploaded (governing documents, membership records, etc.)
- Newsletter section

### Cemetery
- Want their own dedicated cemetery page — not just a link to Shawn Power's ancestry site
- Content should cover the restoration work they're doing on the cemetery
- Shawn Power's gravesites database can still be linked, but the page should stand on its own with the church's own cemetery story

### Future Plans
- Over time, add social media posts (SM/Posts) — start posting content that can later be shared to social media

### Functionality Requirements (confirmed)
- Basic landing page with: church history, story of purchasing the church, community & members
- Updated board of directors text (no photos at this time)
- Donation functionality (E-Transfer + mail — needed ASAP)
- Newsletter signup for members
- More than a "basic landing page" but these are the priority features for launch

### Budget
- Basic site priced at ~$800-1200
- Keep Phase 1 cheap and on-purpose; propose bigger build-out in later phase

### Design Approach
- 3 mockup concepts to present to Terry for approval
- Prompts saved in `docs/design-prompts.md`

### Hosting & Access
- Connection info for current site received via email from Bill Parsons (Feb 27, 2026)
- **Credentials are stored securely outside this repo** — do NOT commit passwords
- Hosting is on DreamHost (SFTP access available)
- Domain and hosting paid for by Melvin Leonard
- Current deployment is basic HTML served as static files
- DreamHost panel access requested via email to Terry (CC'd Mel Leonard + Bill Parsons) on Mar 3 — awaiting Mel to add as Account Privilege user

### Documents Received (Mar 3)
- Articles of Incorporation — 2 PDFs from Terry
- Board of Directors (updated) — created as PDF from Terry's updated list
- Current site content scraped and saved to `docs/current-site-content.md`
- Confirmed: Articles of Incorporation, Financial Statements, and Bylaws do NOT exist on the live server — all placeholder `#` links

---

## Feb 27, 2026 - Project Kickoff

- Reviewed current site at nhshc.ca
- Identified broken placeholder links and missing content
- Project directory initialized
- Created CLAUDE.md and project.md for tracking
- Original site was built by Bill Power ~25 years ago

### Key Findings from Site Audit
- Single-page static HTML site with anchor navigation
- 3 newsletter PDFs available (Jul 2023, Feb 2024, Nov 2025)
- Placeholder links (#) for Articles of Incorporation, Financial Statements, Church Bylaws
- "Our History" section marked "coming soon"
- No mass times, no event calendar, no images
- Cemetery links to external shawnpowerancestry.com/gravesites/
