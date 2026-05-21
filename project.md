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
- [x] Finalize design direction — Terry approved Apr 16. Classic Heritage + "Built by Hand" from Modern & Clean. "Parish" → "Church" applied site-wide.

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

### Current (May 14, 2026)
- [x] **Mona accepted single-page approach (May 14)** — after Michael's explainer email walking her through the scrolling single-page format, Mona replied: "It's all as clear as mud :-). Thank you for explaining it to me. I hadn't worked on a scrolling website format in the past." Multi-page restructure proposal effectively withdrawn.
- [x] **Mona's draft content arrived (May 19)** — "About Us" copy + updated Board list received over the long weekend. Archived to `docs/about-us-mona-pearce.md`. Open flags: founding year "2004(?)" unconfirmed; new Mount Cashel/Archdiocese narrative needs tone+accuracy review (tension with Terry's "less project history" steer); board names changed (maiden names + corrected surnames — Ida Linehan→**Ida (Linehan) Young**, **Mona (Bonia) Pearce**). Mona also asks if Michael has her Christmas-drafted Support Us / Contact Us / Newsletter content + Newsletter PDFs — **reply needed**.
- [ ] **Ida to do final stylistic edit of the site** — Mona's suggestion (May 14): once content is in, Ida polishes for voice/symmetry across all sections. Confirms Mona's earlier instinct that Ida should drive the writing voice. **Loop Ida in once content is loaded.**
- [ ] **Pre-launch chat with Terry — next week (week of May 18)** — Terry has asked to meet after Mona's content arrives, to walk through any remaining gaps before launch. Need to prep:
  - Refresher on email-capture / newsletter campaign solution (see "Newsletter refresher" note below — Terry explicitly asked for this in advance)
  - Status of cemetery copy (still outstanding)
  - Status of high-res photos (still outstanding)
  - Status of CanadaHelps direct link / CRA number (Mary Ann)
  - Status of governance documents for footer Documents section
- [ ] **Splash page name** — still open question: keep "Sacred Heart Church" as primary headline with legal corp name as subtitle, vs. legal corp name as the headline. Raised in May 11 explainer; no board pushback yet. **Bring up with Terry in next week's chat.**
- [ ] **Charitable status + tax-deductible language on Support Us** — must state we are a registered charitable organization and donations are tax deductible (Mona, Apr 25). Blocked on CRA registration number from Mary Ann.

### Newsletter / email-capture solution (refresher for Terry, May 14)
Terry asked for a refresher on the email capture + campaign solution before next week's chat. Current setup:

- **Platform: Kit (formerly ConvertKit)** — chosen Apr 9. Free plan covers up to **1,000 subscribers** with unlimited broadcasts. No monthly cost. (Kit's free tier was 10K when we made the call; they've since reduced it to 1K. Plenty of headroom for a parish list — current paid tier kicks in around $25/mo at 1K subs if we ever need to upgrade.)
- **Signup form** is already embedded on the site in the **Newsletter** section. Visitor enters email → flows directly into Kit. No backend, no database, no Supabase needed.
- **Sending newsletters/campaigns** — done from the Kit web dashboard. Compose, schedule, hit send. Subscriber list, open/click metrics, unsubscribes all handled by Kit.
- **Styling:** newsletters currently go out using Kit's **default plain template** — no custom church branding yet. Scoped as a small follow-on piece of work (see below).
- **Costs:** $0 ongoing. Originally scoped Supabase backend at $444; replaced by Kit and saved that cost.
- **Future option:** if the church later wants newsletters delivered from a custom domain (e.g. newsletter@nhshc.ca) instead of Kit's default sender domain, we can configure that — small one-time setup, no recurring cost.
- **Migration path:** if Kit limitations ever become an issue, subscriber list exports to CSV cleanly and can be moved to Supabase or another provider without losing data.

### Custom newsletter template — scope estimate (May 14, 2026)
A custom-branded HTML email template for Kit, matching the Classic Heritage site design (deep red, Georgia serif, cream backgrounds, church logo header, branded footer). **Not yet built.** Suggested as a small follow-on after launch.

| Phase | Work | Hours |
|-------|------|-------|
| Design | Translate site design into email-safe layout (header treatment, section blocks, button styles, footer with church address + unsubscribe). One mockup round with Terry for approval. | ~2 hrs |
| Build | Hand-code the HTML email template — table-based layout for Outlook compatibility, inlined CSS (email clients strip `<style>` blocks), responsive mobile collapse. Reusable content blocks: header, intro, story, image, CTA button, footer. | ~3 hrs |
| Set up in Kit | Upload as a template, configure default footer (church mailing address required by CASL/CAN-SPAM), unsubscribe link, branding settings. Optional: custom sender domain (`newsletter@nhshc.ca`) — small DNS work. | ~1 hr |
| Cross-client testing | Verify rendering in Gmail, Apple Mail, Outlook desktop + web, iPhone Mail, Android Gmail. Email rendering varies — Outlook is the usual rabbit hole. Fix issues found. | ~2 hrs |
| Documentation | Short guide for Terry on composing a newsletter with the template — what to edit, image sizing, send process. | ~1 hr |
| **Total** | | **~9 hrs** |

**Cost at church rate ($55.50/hr): ~$500.** Not included in the original $1,200 scope — this would be a separate small engagement, billed only if/when the church wants the custom template built. Plain Kit template is fully functional at launch; custom styling is a quality-of-life upgrade.
- [ ] **Confirm legal corporation name** — likely "Sacred Heart Roman Catholic Church" per by-laws (`docs/2022 11 22 Sacred Heart RCC By-Law 1 rfp.docx`); need exact name from Articles of Incorporation for splash page.
- [ ] **Add charitable status messaging to Support Us** — must state we are a registered charitable organization and donations are tax deductible (Mona, Apr 25).
- [x] **History piece received from Ida (Apr 29)** — Anne Marie Dalton's "Recollections and Records – Establishing the History of North Harbour Church" forwarded by Ida. Saved to `docs/history-anne-marie-dalton.md` (PDF original also available from Ida if needed).
- [x] **History integration (May 19)** — Ida's call: full piece on its own page (`site/history.html`), surfaced via an understated "More history →" link in Our Story (no excerpt taking word space on the homepage). Built and live in the working site. Open: replace placeholder permission line if Anne Marie wants different wording; optional — swap the standalone page for a downloadable PDF if the board prefers a true file download (easy change).
- [ ] **Mona's prior content suggestions** — Mona to dig out and resend prior content/suggestions she sent Terry. Watch inbox.
- [ ] **Cemetery section rewrite** — awaiting feedback from Terry + collaborators. Current wording re: fixing tombstones/gravesites is inaccurate — certain work requires 3 other people's involvement. Do NOT go live until revised copy received.
- [ ] **Our Story section revision** — Terry wants less history of the project, more about the group/team. Awaiting specific direction.
- [ ] **Footer documents section** — re-add Documents section for publicly available charity docs (Articles of Incorporation, Bylaws, meeting minutes, etc.). Launch with "under construction" disclaimer.
- [ ] **"Under construction" disclaimer** — Terry wants the site to launch in May with a note that this is the first iteration and not all documents are available yet.
- [ ] **CanadaHelps direct link** — current link goes to canadahelps.org homepage. Email sent to Mary Ann Apr 17 requesting direct donation page URL or CRA charity registration number (BN). Will update once received.
- [ ] **Sprint 5: Deploy to GitHub Pages** — target: May 2026. DNS cutover ready. Blocked on cemetery rewrite + Our Story revision + nav-structure consensus.
- [ ] **Sprint 6: Handoff & maintenance docs**

### Previous (Apr 17, 2026)
- [x] **Design sign-off received** — Terry approved Apr 16: "Please go ahead with the build."
- [x] **Newsletter wording change applied** — All "Parish" labels updated to "Church" site-wide.
- [x] **Sprint 4: Responsive/accessibility QA** — complete.
- [x] **DreamHost access confirmed** — DNS management verified. Billing privileges not included (auto-renewal needs Melvin).
- [x] **Preview site deployed** — https://michaelorsd.github.io/SHC/
- [x] **Supabase vs Kit decision** — Sticking with Kit. Supabase deferred to Phase 2.

### Older (Apr 9, 2026)
- [x] **E-transfer email confirmed: northharbourshc@gmail.com** — Terry confirmed Apr 9. nhChurch@nhshc.ca was set up by Bill Power.
- [ ] **Cemetery copy rewrite** — current wording is inaccurate (they won't fix tombstones/gravesites — certain work needs 3 other people). Awaiting revised copy from Terry + collaborators.
- [x] **CanadaHelps confirmed active** — people have donated through it before.
- [ ] **High-res church photos** — Terry working on it. Using existing 1024px photos for demo.
- [ ] **Logo** — Terry sorting it out ("leave that with me").
- [x] **Domain ownership confirmed: Melvin Leonard** — owns nhshc.ca, offers it free of charge.
- [x] **Design sign-off received** — Terry approved Apr 16.
- [ ] **Migration: GitHub Pages (site) + DreamHost (email only)** — reduces costs from ~$170/yr to ~$24/yr. Melvin downgrades to email-only hosting.

### Completed
- [x] **Mary Ann Butt feedback received** — `Website Revision Suggestions.docx`. Updated copy, CanadaHelps confirmed, value boxes, logo needed.
- [x] **Site draft built locally** — `site/index.html` + `site/css/style.css` with all revisions applied (Apr 9).
- [x] **Tech stack decided: HTML/CSS/JS** — static site, no framework. Hosted on DreamHost.
- [x] **Newsletter approach decided: Kit (ConvertKit)** — free plan, 1,000 subs (Kit reduced from 10K), unlimited broadcasts. No backend needed.
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
- [x] Finalize design direction — Terry approved Apr 16
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

### May 21, 2026 — Terry call (with Ida + Mary Ann Butt)

Group call held; Mona out (tile/floor work cancellations). Decisions:

1. **Primary email = northharbourshc@gmail.com.** Terry to confirm it's also the address tied to the donations setup; we'll standardize on whatever the donations one is. Mona's `NLChurch@nhshc.ca` was a typo. Footer + Support Us "By Mail" card on site updated today.
2. **Legal name — Terry believes "North Harbour Sacred Heart Church Inc."** but will confirm. **Articles of Incorporation (filed Jan 19, 2023, `docs/2023 01 19 Inc. Articles.pdf`) actually use "Corporation," not "Inc."** Need to reconcile with Terry before publishing the name anywhere with finality. Naming directive going forward: be consistent — use one form everywhere.
3. **Founding year = 2023.** Confirmed by the Articles' Jan 19, 2023 filing date. Terry to confirm officially.
4. **Mailing address = Box 23, Site 5, North Harbour, St. Mary's Bay, NL A0B 2V0.** Applied to footer + Support Us card.
5. **About Us section goes ABOVE Board of Directors** — Board is a subset of About Us. **Terry is taking over the About Us copy** (current Mona draft is too broad). Awaiting his version; placement on site held until copy arrives.
6. **Contact Us — no dedicated section needed.** Stays in the footer. Mona's draft is parked as reference only.
7. **Cemetery copy** — Michael asked: do we already have new copy? **Answer: no.** Per Terry's Apr 9 commit, Ida Linehan is writing it; nothing new sits in `docs/`. The current live "Cemetery" section already links out to Shawn Power's external gravesites database (correct), but the narrative paragraphs above that link are still placeholder and need Ida's draft.
8. **Volunteer / paid grounds workers** — Mary Ann (Butt) and Ida agreed: acknowledgments go in the **newsletter**, not on the main site. No site-level acknowledgments section needed.

**Other:**
- Terry will deliver the latest About Us copy; on-site location TBD by Terry (default: above Board per #5).
- Michael to send a fresh recap email once site changes are in — clear deliverables per person, plus a Kit "how to send a newsletter" reference.
- Custom Kit newsletter template scope to be re-confirmed (~$500 / ~9 hrs from prior estimate; treated as separate engagement after launch).

### May 19, 2026 — Ida's Reply (decisions)
Ida (Linehan) Young replied to the group thread:
- **Name confirmed** — "Ida (Linehan) Young" is good as-is (already live on site + CLAUDE.md).
- **Mount Cashel / Archdiocese narrative — Ida votes EXCLUDE.** Not a fan of "the messiness of Mount Cashel and everything"; says anyone who wants that history can find it elsewhere. Prefers the cleaner newer history + Anne Marie's piece to carry it; the lawsuit material adds negativity and may turn people off. Aligns with Terry's standing "less project history" steer. **Direction: drop the founding-lawsuit narrative from the site.** Mona authored it but explicitly invited edits; Terry's explicit nod still courteous (already asked in the reply email) but two of three relevant voices + prior steer now align on exclusion.
- **Anne Marie's history piece — DONE.** Ida wants a simple "More history" / downloadable-style link under Our Story, not taking word space, giving the curious the full piece. Implemented: standalone styled page `site/history.html` (full Anne Marie text, print-friendly, site fonts/colours) + understated "More history →" link added in the Our Story section of `site/index.html`. Ida found the piece insightful and wants Anne Marie's work credited — page carries her byline + acknowledgments + permission line.
- **Note from Ida:** she's swamped (book launch) and worried about losing thread items in long Gmail chains — asked that anything else needed from her go in a *fresh* email. Nothing is currently outstanding from Ida (all three asks answered).

### May 19, 2026 — Mona's "About Us" Content Arrives
Mona emailed her draft "About Us" copy and an updated Board list over the long weekend (the draft promised in the May 14 thread). Cover note invites Ida to "edit liberally" and Terry to "correct inaccuracies in dates or names for the Archdiocese" — content is explicitly a **draft**. Archived verbatim to `docs/about-us-mona-pearce.md`.

Key points:
- **New founding narrative**: ties the church's purchase to the Mount Cashel abuse rulings and the Archdiocese's creditor-protection property sales. Factually grounded but a notable tone shift from the current poetic "Our Story", and in tension with Terry's standing steer (Apr 16 / Apr 25) of *less project history, more about the group/team*. Editorial call needed before publishing.
- **Founding year unconfirmed** — written as "2004 (?)". Verify against Articles of Incorporation / Terry.
- **Board names changed** — maiden names added for female members (members may opt out via Michael); two surnames corrected vs current site/CLAUDE.md: **Ida (Linehan) Young** (was "Ida Linehan"), **Mona (Bonia) Pearce**. CLAUDE.md board list now stale.
- **Christmas content** — Mona asks whether Michael already holds her earlier Support Us / Contact Us / Newsletter-intro drafts + Newsletter PDFs; offers to resend. **Reply owed.**

**Actions taken (May 19):**
- Board list applied to live site (`site/index.html`) and CLAUDE.md updated with Mona's names + corrected surnames.
- Founding narrative held out of the live site pending Terry (accuracy/appetite) + Ida (voice) review — per Michael, may see more edits.
- Reply email drafted: `docs/email-about-us-reply.html` (to Mona/Terry/Ida) — routes the narrative + founding-year questions to Terry/Ida, asks Mona to resend her Christmas Support Us/Contact Us/Newsletter content, and folds the remaining pre-launch items (cemetery rewrite, CanadaHelps/CRA, high-res photos, splash name, Anne Marie's history, Kit refresher) into the week-of-May-18 chat agenda.

### May 14, 2026 — Mona Accepts Single-Page Approach + Terry Returns
After Michael's May 11 explainer email walking Mona through the single-page scrolling layout (and how all her About Us contents are already on the page), Mona replied:

> "It's all as clear as mud :-). Thank you for explaining it to me. I hadn't worked on a scrolling website format in the past. Now that I know what I need to do, I'll get my stuff to you by the weekend. I suggest Ida do a final edit of the site so there's a symmetry to the writing style and content."

**Outcome:** multi-page restructure proposal withdrawn. Single-page (Terry-approved Apr 16) confirmed as the direction. Mona's draft content arriving by **May 16–17**. Mona explicitly endorses Ida as the final stylistic editor for the whole site.

Terry then chimed in:

> "Thanks all for the work on this in my absence. Michael, once you receive the above mentioned stuff from Mona, you and I can chat next week to discuss any outstanding gaps before launch. In advance of that chat, can you refresh my memory on what our solution will be for capturing email addresses and subsequent email campaigns?"

**Outcome:** Terry is back in the loop and driving toward launch. Wants a pre-launch chat **week of May 18** after Mona's content is in. Asked Michael to pre-brief him on the Kit (newsletter) solution. Refresher captured in Current To-Do section.

### May 11, 2026 - Follow-up Email from Mona Pearce (Director)
Mona has not seen any feedback or decisions from the group on her Apr 25 splash page / restructure proposal. Key points:

- **Status:** "I haven't seen any feedback or decisions on the splash page of our website?"
- **Draft content:** Mona has draft content ready to go but acknowledges it may need modification once group consensus is reached.
- **About Us menu — clarified contents:**
  - Brief history (how and why the church was established)
  - Articles of Incorporation
  - Board of Directors
  - By-Laws
  - Annual Financial Statements
  - Newsletters
- **Terminology:** "I definitely feel we should NOT refer to ourselves as (Executive Committee)." — keep "Board of Directors".
- **Tone:** "Look forward to resolving this soon." — Mona is signalling impatience with the lack of group response.

**Action items:** Re-prompt Terry + board for decisions. Lock in "Board of Directors" (not "Executive Committee") as the standing term. About Us menu content list now confirmed by Mona — can be pre-structured even before final splash/nav decisions land. See Current To-Do.

### Apr 25, 2026 - Email from Mona Pearce (Director)
Welcome email to Michael with structural feedback on the site. Key points:

- **Likes the colours and font.** Recognises Ida's writing in current copy ("so beautifully written") and notes her own style is "more like an annual report" — suggests Ida polish her contributions for consistent voice across the site.
- **Splash page name:** wants the name of the **corporation** displayed (not just "Sacred Heart Church"), since the corporation owns both the church and the cemetery.
- **Main Menu proposal:** About Us · Our Church · Our Cemetery · Support Us · Contact Us. Leadership (Board), Newsletter, and all documents should sit **under About Us** — not as top-level menu items.
- **Support Us:** must indicate registered charitable status and that donations are tax deductible.
- **Content:** she has prior suggestions/content sent to Terry — will dig out and resend to all. Ann Marie has circulated her own history of the church; Mona suggests Ann Marie + Ida collaborate on the History pieces.
- **Process note:** "If there is a consensus on the splash page and menu, in the next few days, then we can start and go from there. We don't want Michael constantly editing and redesigning it."

**Action items captured in To-Do list (Current section).** Holding all structural changes until group consensus reached — current single-page design with 5-section flow (Hero → Our Story → Cemetery → Board → Ways to Give → Newsletter) was already approved by Terry Apr 16, so Mona's multi-page nav is a material change requiring board alignment.

**Apr 26 — Reply-all sent.** Acknowledged Mona's feedback, confirmed structural edits on hold pending consensus, and asked the group (especially Terry, who signed off on the current single-page layout) to respond within the "next few days" window Mona proposed so the May launch isn't slipped indefinitely. Requested yes/no (or alternative) on three items: (1) legal corporation name on splash page, (2) proposed multi-page nav with About Us / Our Church / Our Cemetery / Support Us / Contact Us, (3) registered-charity + tax-deductibility language on Support Us.

### Apr 17, 2026 - Meeting with Terry Power (Pre-Launch Review)
- Cemetery section needs rewrite — they won't be fixing tombstones or gravesites. Certain restoration work requires collaboration with 3 other people. Waiting for revised wording from Terry + collaborators.
- Our Story section: Terry wants less about the history of the project, more about the group/team.
- Footer: re-add a Documents section for publicly available charity documents (Articles of Incorporation, Bylaws, meeting minutes, etc.)
- Launch target: May 2026 with a disclaimer that the site is under construction / first iteration — not all documents available yet.
- Terry paid additional $600 — total paid $1,200, paid in full for current scope.
- Newsletter cost removed from scope (Kit is free, no Supabase backend needed).

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
| Apr 9, 2026 | Newsletter: Kit (ConvertKit) free plan | 1,000 subscribers (was 10K when chosen — Kit has since reduced free tier), unlimited broadcasts. Replaces Supabase proposal — saves $444 |
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
| Apr 16, 2026 | All "Parish" labels updated to "Church" site-wide | Hero subtitle, board section, footer, meta descriptions — consistent with Terry's principle |
| Apr 16, 2026 | Sprint 4 QA complete | HTML validates clean, placeholder links removed, og tags added, accessibility fixes applied |
| Apr 16, 2026 | DreamHost panel access confirmed | Melvin granted access. DNS management works. Billing privileges not included (auto-renewal needs Melvin) |
| Apr 16, 2026 | Supabase deferred to Phase 2 | Sticking with Kit for launch. CSV migration to Supabase later is straightforward |
| Apr 16, 2026 | Preview site sent to Terry | https://michaelorsd.github.io/SHC/ — awaiting go-ahead to make live |
| Apr 17, 2026 | Meeting with Terry — pre-launch revisions | Cemetery section needs rewrite (won't fix tombstones — needs 3 collaborators). Our Story: less project history, more about the group/team. Add footer Documents section for public charity docs. Launch target: May 2026 with "under construction" disclaimer |
| Apr 17, 2026 | Terry paid additional $600 | Total paid: $1,200 ($600 deposit + $600). Paid in full for current scope. Newsletter cost removed (Kit is free) |
| Apr 17, 2026 | CanadaHelps direct link requested | Email sent to Mary Ann for direct donation page URL or CRA BN. Current link goes to homepage — poor UX |
| Apr 25, 2026 | Mona Pearce proposed restructure (open) | Splash page should use legal corporation name; nav should be About Us / Our Church / Our Cemetery / Support Us / Contact Us with Board, Newsletter, docs nested under About Us; Support Us must state charitable/tax-deductible status. **Holding until group consensus** — conflicts with Terry's already-approved single-page design |
| Apr 26, 2026 | Reply-all sent to Mona's restructure proposal | Acknowledged feedback, confirmed all structural edits on hold pending consensus, asked group (esp. Terry) to weigh in within Mona's "next few days" window to protect May launch. Requested yes/no on splash name, nav structure, charitable-status messaging |
| Apr 29, 2026 | History piece received from Ida | Anne Marie Dalton's "Recollections and Records" — full church history from 1800s through 2023 community purchase. Saved to `docs/history-anne-marie-dalton.md`. Needs voice review with Ida + Ann Marie before publishing |
| May 11, 2026 | Mona follow-up — no group response to Apr 25 proposal | 16 days since Mona's restructure email and no replies from Terry/board. Mona has draft content ready. Confirmed About Us menu contents (history, Articles, Board, By-Laws, Financials, Newsletters). Firm: do NOT use "Executive Committee" — keep "Board of Directors". May launch at risk pending consensus |
| May 11, 2026 | Explainer email sent to Mona + all | Walked Mona through single-page scrolling format and showed all her About Us contents are already on the page. Offered "About" anchor link in nav as a discoverability cue. Compromise on splash: "Sacred Heart Church" as headline with legal corp name as subtitle. Door left open for future dedicated pages as content grows |
| May 14, 2026 | **Multi-page restructure withdrawn — single-page approach confirmed** | Mona accepted the single-page format after the explainer ("clear as mud :-). Thank you for explaining it to me. I hadn't worked on a scrolling website format in the past"). Path to May launch unblocked on structural question |
| May 14, 2026 | Mona's draft content arriving by May 16–17 | Mona to send through draft copy by the weekend. Ida nominated by Mona as the final stylistic editor of the site for voice symmetry |
| May 14, 2026 | Pre-launch chat with Terry — week of May 18 | Terry wants to meet after Mona's content lands to discuss any remaining gaps before launch. Asked Michael to pre-brief him on the email-capture / newsletter campaign solution (Kit) |

---

## Budget & Pricing

### Project Estimate

Rate: $111/hr — working at half rate ($55.50/hr) for the church.

| Item | Hours | Cost |
|------|-------|------|
| Frontend build (static site) | ~22 hrs | $1,200 |
| Newsletter: Kit (free plan) | included | $0 |
| **Total** | **~22 hrs** | **~$1,200** |

### Payment Status

| Payment | Amount | Date |
|---------|--------|------|
| Deposit | $600 | Apr 2026 |
| Second payment | $600 | Apr 17, 2026 |
| **Total paid** | **$1,200** | **Paid in full for current scope** |

### Future Phases (not in this quote — to be scoped separately)
- Supabase migration (newsletter backend + user login + content posting)
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
- **Church history (Anne Marie Dalton)** — full write-up received Apr 29, 2026 via Ida. Saved to `docs/history-anne-marie-dalton.md`. Covers 1800s parish history, 1954 build, architecture/theology, bishops' visits, community life, twentieth century to community purchase in 2023.

### Content Needed
- ~~Church history (full write-up)~~ ✓ Received Apr 29 — needs voice review with Ida + Ann Marie before publishing
- Photos of the church building, interior, community — **4 exterior photos found on server**, may still want interior + community photos from Terry
- Mass/service times
- Articles of Incorporation (PDF)
- Financial Statements (PDF)
- Church Bylaws (PDF)
- Event listings
- 15-20 PDFs: memberships, roles, and other governing documents (from Mar 3 meeting)
- Fundraising links and info
- Posts/updates content for new posts page
