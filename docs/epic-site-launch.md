# Epic: Sacred Heart Church Website Launch

**Goal:** Take the approved design draft to a live, production-ready website at nhshc.ca  
**Owner:** darkdesk  
**Rate:** $55.50/hr (half rate for the church)  
**Estimated total:** ~$1,200 (site) + Kit setup = ~$1,600. $600 deposit received.
**Start condition:** ~~Design draft approved by Terry Power and Mary Ann Butt~~ **Approved Apr 16, 2026**  

---

## Sprint 0 — Sign-Off & Blockers (Pre-work) ✓
**Goal:** Clear all blockers before dev begins  
**Duration:** 1 week (dependent on client responses)

- [x] Get formal design approval from Terry and Mary Ann — Terry approved Apr 16
- [x] Confirm e-transfer email is `northharbourshc@gmail.com` — Terry confirmed Apr 9
- [ ] Get final cemetery copy from Mary Ann / Terry (deferred — current copy used for launch)
- [x] Confirm CanadaHelps profile exists and is searchable as "North Harbour Sacred Heart Church"
- [ ] Request high-res church photos (deferred — CSS hero treatment used for launch)
- [ ] Ask about logo (deferred — text wordmark used for launch)
- [x] Confirm DreamHost panel access works — confirmed Apr 16, DNS management verified
- [x] Clarify domain ownership — Melvin Leonard, confirmed Apr 9

**Deliverable:** All blockers resolved or deferred with client agreement

---

## Sprint 1 — Production Foundation (~3 hrs) ✓
**Goal:** Set up version control, project structure, and production-ready tooling  
**Completed:** Apr 9, 2026

- [x] Initialize Git repo
- [x] Set up `.gitignore`
- [x] Self-host fonts (EB Garamond, Cinzel, Lato as WOFF2)
- [x] Create `fonts/` directory with `@font-face` declarations
- [x] Add favicon from live site backup
- [x] Site works offline (no CDN dependencies)
- [x] Production directory structure in place

---

## Sprint 2 — Content & Copy (~3 hrs) ✓
**Goal:** Replace all placeholder content with final approved copy  
**Completed:** Apr 9, 2026

- [x] CSS texture/gradient hero (no high-res photo received)
- [x] Mary Ann copy revisions applied
- [x] "Open and Accountable" paragraph included
- [ ] Cemetery copy — deferred (Ida Linehan writing; current draft used for launch)
- [ ] Newsletter PDFs — deferred to Phase 2 (need to add to site)
- [x] Placeholder footer links removed (Documents section deferred until PDFs received)

---

## Sprint 3 — Kit Newsletter Integration (~2 hrs) ✓
**Goal:** Set up Kit (ConvertKit) and wire up the newsletter signup  
**Completed:** Apr 10, 2026

- [x] Kit account created (free plan)
- [x] Subscriber form created and embedded
- [x] Kit embed styled to match site design
- [x] Form integrated into newsletter section
- [ ] Welcome email automation — verify setup in Kit dashboard
- [ ] End-to-end test with real email — verify subscriber appears + welcome sent

---

## Sprint 4 — Responsive, Accessibility & QA (~3 hrs) ✓
**Goal:** Ensure the site works everywhere and meets accessibility standards  
**Completed:** Apr 16, 2026

- [x] Responsive CSS verified: mobile (375px), tablet (768px), desktop (1280px+)
- [x] Hamburger menu toggle with proper aria-expanded
- [x] Anchor links with smooth scrolling
- [x] Accessibility audit:
  - [x] No `<img>` tags without alt (site uses CSS backgrounds)
  - [x] Heading hierarchy fixed (h1 → h2 → h3, no skips — footer h4 changed to `<p>`)
  - [x] Skip nav link present
  - [x] ARIA labels on nav, sections, and interactive elements
  - [x] Keyboard navigation supported
  - [ ] Color contrast: gold labels on cream (~2.6:1) and stone text (~3.76:1) below WCAG AA — decorative text, not blocking launch
- [x] HTML validated via W3C — 0 errors, 0 warnings
- [x] All external links verified (CanadaHelps, gravesites DB, Kit form, mailto)
- [x] Placeholder `href="#"` links removed (except commented-out Facebook)
- [x] og:image and og:url meta tags added for social sharing
- [x] All "Parish" labels updated to "Church" per Terry's direction

**Deliverable:** Site passes QA checklist. Preview deployed to GitHub Pages.

---

## Sprint 4b — Pre-Launch Content Revisions (~2 hrs)
**Goal:** Apply Terry's Apr 17 feedback before going live  
**Status:** Awaiting revised copy from Terry + collaborators  
**Target:** Complete before May 2026 launch

- [ ] **Cemetery section rewrite** — current copy inaccurately describes fixing tombstones/gravesites. Terry clarified they won't do that — certain restoration work requires 3 other people's collaboration. Awaiting revised wording from Terry.
- [ ] **Our Story section revision** — less about the history of the project, more about the group/team. Awaiting specific direction from Terry.
- [ ] **Re-add footer Documents section** — publicly available charity documents: Articles of Incorporation, Bylaws, meeting minutes, etc. Link to PDFs as they become available.
- [ ] **Add "under construction" disclaimer** — visible banner or note stating this is the first iteration of the site and not all documents are available yet.

**Deliverable:** All content revisions applied, site ready for May launch

---

## Sprint 5 — Deployment & Go Live (~2 hrs)
**Goal:** Deploy to GitHub Pages and make the site live at nhshc.ca  
**Target:** May 2026  
**Blocked by:** Sprint 4b content revisions

- [x] GitHub Pages deploy workflow configured and tested
- [x] Preview site live at https://michaelorsd.github.io/SHC/
- [x] DreamHost panel access confirmed — DNS management verified
- [x] Back up the existing live site (already done — `backup/live-site/`)
- [ ] Change DreamHost hosting type to "DNS Only" for nhshc.ca
- [ ] Add GitHub Pages A records (185.199.108-111.153)
- [ ] Add www CNAME → michaelorsd.github.io
- [ ] Configure custom domain in GitHub repo Settings → Pages
- [ ] Verify HTTPS active via GitHub Pages
- [ ] Test all links, forms, and navigation on live nhshc.ca
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
| Sprint 3 — Kit Newsletter | included | $0 |
| Sprint 4 — QA & Accessibility | ~3 hrs | $166.50 |
| Sprint 4b — Content Revisions | ~2 hrs | $111.00 |
| Sprint 5 — Deployment | ~2 hrs | $111.00 |
| Sprint 6 — Handoff | ~1 hr | $55.50 |
| **Total** | **~14 hrs** | **~$777** |

### Payment Status
| Payment | Amount | Date |
|---------|--------|------|
| Deposit | $600 | Apr 2026 |
| Second payment | $600 | Apr 17, 2026 |
| **Total paid** | **$1,200** | **Paid in full** |

*Kit newsletter is free (no Supabase backend needed). Newsletter cost removed from scope. $1,200 covers the full current build. Remaining budget buffer (~$423) covers revision rounds and scope additions.*
