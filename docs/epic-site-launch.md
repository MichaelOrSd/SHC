# Epic: Sacred Heart Church Website Launch

**Goal:** Take the approved design draft to a live, production-ready website at nhshc.ca  
**Owner:** darkdesk  
**Rate:** $55.50/hr (half rate for the church)  
**Estimated total:** ~$1,200 (site) + Kit setup = ~$1,600. $600 deposit received.
**Start condition:** Design draft approved by Terry Power and Mary Ann Butt  

---

## Sprint 0 — Sign-Off & Blockers (Pre-work)
**Goal:** Clear all blockers before dev begins  
**Duration:** 1 week (dependent on client responses)

- [ ] Get formal design approval from Terry and Mary Ann
- [ ] Confirm e-transfer email is `northharbourshc@gmail.com` (Mary Ann's doc) — not `nhChurch@nhshc.ca`
- [ ] Get final cemetery copy from Mary Ann / Terry (currently placeholder)
- [ ] Confirm CanadaHelps profile exists and is searchable as "North Harbour Sacred Heart Church"
- [ ] Request high-res church photos (1920px+ for hero) from Terry or board members
- [ ] Ask about logo — Mary Ann mentioned she sent options previously, Ida had a suggestion. Get a decision or agree on text placeholder for launch.
- [ ] Confirm DreamHost panel access works (received Apr 9 from Melvin)
- [ ] Clarify domain ownership — who owns nhshc.ca registration?

**Deliverable:** All blockers resolved or deferred with client agreement

---

## Sprint 1 — Production Foundation (~3 hrs)
**Goal:** Set up version control, project structure, and production-ready tooling

- [ ] Initialize Git repo
- [ ] Set up `.gitignore` (`.env`, `.DS_Store`, `node_modules/`, etc.)
- [ ] Self-host fonts — download EB Garamond, Cinzel, Lato as WOFF2 files, remove Google Fonts CDN link
- [ ] Create `fonts/` directory with font files and `@font-face` declarations
- [ ] Add favicon (text placeholder or logo if received)
- [ ] Verify the site works fully offline (no external dependencies except CanadaHelps link)
- [ ] Set up basic directory structure for production:
  ```
  nhshc.ca/
  ├── index.html
  ├── css/style.css
  ├── fonts/
  ├── Images/
  ├── Newsletters/
  └── favicon.ico
  ```

**Deliverable:** Git repo with production file structure, site runs offline

---

## Sprint 2 — Content & Copy (~3 hrs)
**Goal:** Replace all placeholder content with final approved copy

- [ ] Swap in final cemetery copy (from Sprint 0)
- [ ] Insert high-res hero photo if received — otherwise finalize CSS texture/gradient hero
- [ ] Add church photos in appropriate sections (Our Story, Built by Hand, Cemetery) with proper `alt` text
- [ ] Verify all Mary Ann copy is accurate — check for typos, punctuation (comma after "gather", etc.)
- [ ] Write or finalize "Open and Accountable" paragraph — get client approval
- [ ] Add newsletter PDFs to `/Newsletters/` directory (3 existing PDFs from backup)
- [ ] Link footer document placeholders to actual PDFs where available (Articles of Incorporation, Bylaws)
- [ ] Update any remaining `#` placeholder hrefs or mark with `<!-- TODO -->` for Phase 2

**Deliverable:** All content finalized and approved, no placeholder text visible to visitors

---

## Sprint 3 — Kit Newsletter Integration (~2 hrs)
**Goal:** Set up Kit (ConvertKit) and wire up the newsletter signup

- [ ] Create Kit account (free plan — 10K subscribers, unlimited broadcasts)
- [ ] Create subscriber form in Kit dashboard
- [ ] Set up the 1 free automation: welcome email ("Thanks for subscribing to Sacred Heart Church updates")
- [ ] Get Kit embed code and replace `<!-- REPLACE WITH KIT EMBED FORM -->` in index.html
- [ ] Style the Kit embed to match the site's newsletter section (override Kit's default CSS)
- [ ] Test signup flow end-to-end: submit form → appears in Kit subscriber list → welcome email sent
- [ ] Confirm nhshcinfo@gmail.com receives notification of new subscribers (or set up in Kit)

**Deliverable:** Working newsletter signup, tested, styled to match site

---

## Sprint 4 — Responsive, Accessibility & QA (~3 hrs)
**Goal:** Ensure the site works everywhere and meets accessibility standards

- [ ] Test responsive layout: mobile (375px), tablet (768px), desktop (1280px+)
- [ ] Test hamburger menu on mobile — open/close, link navigation, scroll
- [ ] Verify all anchor links scroll correctly with nav offset
- [ ] Accessibility audit:
  - [ ] All images have descriptive `alt` text
  - [ ] Heading hierarchy is correct (h1 → h2 → h3, no skips)
  - [ ] Skip nav link works
  - [ ] ARIA labels on nav, sections, and interactive elements
  - [ ] Keyboard navigation works (tab through all links and form)
  - [ ] Sufficient color contrast (WCAG AA)
- [ ] Cross-browser testing: Safari, Chrome, Firefox (at minimum)
- [ ] Validate HTML (W3C validator)
- [ ] Check page load performance — images optimized, no unused CSS
- [ ] Test CanadaHelps link opens correctly
- [ ] Test gravesites database link opens correctly
- [ ] Test email `mailto:` links work

**Deliverable:** Site passes accessibility and QA checklist, works on all target devices/browsers

---

## Sprint 5 — Deployment & Go Live (~2 hrs)
**Goal:** Deploy to DreamHost and make the site live at nhshc.ca

- [ ] SFTP into DreamHost — confirm panel access and directory structure
- [ ] Back up the existing live site (already done — `backup/live-site/`)
- [ ] Upload production files to DreamHost via SFTP
- [ ] Verify site loads at nhshc.ca
- [ ] Test all links, forms, and navigation on the live site
- [ ] Verify SSL/HTTPS is active (DreamHost Let's Encrypt)
- [ ] Set up www → non-www redirect (or vice versa) if not already configured
- [ ] Submit sitemap or URL to Google Search Console (if access available)
- [ ] Send go-live confirmation to Terry and Mary Ann

**Deliverable:** nhshc.ca is live with the new site

---

## Sprint 6 — Post-Launch & Handoff (~1 hr)
**Goal:** Documentation and client walkthrough

- [ ] Write a short maintenance guide for darkdesk (how to update content, deploy changes, manage Kit)
- [ ] Walk Terry/Mary Ann through the live site
- [ ] Show them how Kit works — sending a broadcast newsletter, viewing subscribers
- [ ] Confirm they can find themselves on CanadaHelps
- [ ] Archive the old site backup
- [ ] Close out Sprint 0 action items — any deferred items become Phase 2 backlog

**Deliverable:** Client sign-off on live site, maintenance docs in place

---

## Backlog — Phase 2+ (Future)
Items deferred from this launch, to be scoped and quoted separately:

- [ ] Logo design and integration
- [ ] Facebook community group link (uncomment when group exists)
- [ ] News & Updates / Posts page
- [ ] Events calendar
- [ ] Photo gallery
- [ ] Interior and community photos
- [ ] Social media integration
- [ ] Contact form
- [ ] Mass/service schedule
- [ ] Remaining governing document PDFs (15-20 from Terry)
- [ ] User login / member area (Supabase or similar)
- [ ] Content posting / admin panel

---

## Budget Summary

| Sprint | Hours | Cost |
|--------|-------|------|
| Sprint 0 — Sign-Off & Blockers | 0 (client time) | $0 |
| Sprint 1 — Production Foundation | ~3 hrs | $166.50 |
| Sprint 2 — Content & Copy | ~3 hrs | $166.50 |
| Sprint 3 — Kit Newsletter | ~2 hrs | $111.00 |
| Sprint 4 — QA & Accessibility | ~3 hrs | $166.50 |
| Sprint 5 — Deployment | ~2 hrs | $111.00 |
| Sprint 6 — Handoff | ~1 hr | $55.50 |
| **Total** | **~14 hrs** | **~$777** |

*Under the original $1,200 estimate. Kit is free (no Supabase backend needed). Remaining budget gives buffer for revision rounds or scope additions.*
