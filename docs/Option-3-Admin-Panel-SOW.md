# Statement of Work — News-Posting Admin Panel
### Sacred Heart Church Website · "Option 3"

**Prepared for:** Terry Power & the Board, North Harbour Sacred Heart Church Corporation<br>
**Prepared by:** Michael<br>
**Date:** June 2026<br>
**Total:** ~$2,450 (~44 hours @ $55.50/hr, church rate)<br>
**Ongoing cost:** $0/month

---

## 1. What this is

A secure, board-only "back office" added to the existing website (nhshc.ca) that lets the **board log in and publish their own news — text plus a photo — straight to the site's "Updates" area**, with no developer needed for day-to-day posting.

Today, posting an update means emailing Michael. After this, a board member signs in, types the update, adds a photo, and clicks **Publish** — and it appears on the site within moments.

## 2. Why "admin-only" (and why that's the smart first step)

Built for **board/admin accounts only** — **no public sign-up**. This is deliberate:

- **Lower cyber-risk** — no public-facing registration to attack, and almost no personal data stored. Important for a charity.
- **Lower cost & complexity** — no member-approval queues or account management to build.
- **Simple to run** — a handful of trusted accounts the board controls.

Opening it to parishioners later is possible (see §5), but starting admin-only is the responsible, cost-effective foundation.

## 3. The technology

The public website stays exactly where it is (**GitHub Pages**, free). We add a small, secure back office using **Supabase** — a well-established, open-source platform used by thousands of organizations — on its **free tier**.

| Layer | Technology | Plain meaning |
|---|---|---|
| Public site | GitHub Pages (unchanged) | The website everyone already sees |
| Database | Supabase — PostgreSQL | Where the posts are stored |
| Login | Supabase Auth | How the board signs in securely |
| Photos | Supabase Storage | Where uploaded images live |
| Safety layer | PostgreSQL Row-Level Security | Guarantees only published posts are public |
| Screens | HTML / CSS / JavaScript | The posting pages, matching the current site |

- **Where the data lives:** Supabase's secure cloud — industry-standard, automatically backed up.
- **Who owns it:** the church. Everything is exportable at any time — **no lock-in**.
- **Ongoing cost:** **$0** on the free tier (ample for a parish's posting volume).

## 4. Scope — what's included (the 44 hours)

| Section | What it covers | Technology used | Hours | Cost |
|---|---|---|---|---|
| Backend + database | Secure storage for posts and photos | Supabase — managed PostgreSQL (free tier) | 3 | ~$165 |
| Admin login | Sign in, sign out, password reset | Supabase Auth (email + password) | 4 | ~$222 |
| Security layer | Ensures only published posts are ever public | PostgreSQL Row-Level Security (RLS) | 4 | ~$222 |
| Posting dashboard | Create / edit / publish / delete posts | Vanilla JavaScript + Supabase JS client (CDN); HTML/CSS forms | 6 | ~$333 |
| Photo uploads | Upload + auto-resize, one photo per post | Supabase Storage + in-browser resizing (Canvas API) | 3 | ~$167 |
| Display on the site | Posts appear in the "Updates" area | JavaScript reading from Supabase, into the existing page | 4 | ~$222 |
| Mobile, accessibility & checks | Works on phones; safe and accessible | Existing CSS design system; responsive + ARIA | 5 | ~$278 |
| Testing + your revisions | Full testing + 1–2 rounds of changes | Manual cross-browser/device QA | 5 | ~$278 |
| Guide + go-live | "How to post" guide; publish to the live site | GitHub Pages + existing GitHub Actions deploy | 3 | ~$167 |
| Contingency (20%) | Buffer for the security-critical parts | — | 7 | ~$389 |
| **Total** | | | **~44 hrs** | **~$2,450** |

## 5. What's NOT included (future options)

To keep the price firm and the scope clear, these are **not** part of this work. Each builds on top of this panel and can be added later as its own piece:

| Future add-on | What it adds | Time | Cost |
|---|---|---|---|
| Public parishioner posting | Public sign-up + admin approval before anything goes live | ~30 hrs | ~$1,600 |
| Photo galleries | Named photo albums + gallery view | ~16 hrs | ~$900 |
| Events + calendar | Post events as a list + a month-grid calendar | ~18 hrs | ~$1,000 |

*(Also not included: rich-text formatting toolbar, email notifications, comments.)*

## 6. Timeline

Roughly **2–3 weeks** of elapsed time from go-ahead:

- **Week 1 — Foundation:** backend + database, admin login, security layer.
- **Week 2 — The tool:** posting dashboard, photo uploads, display on the site.
- **Week 3 — Polish & launch:** mobile/accessibility, testing + your revision rounds, guide + go-live.

Calendar time depends on how quickly the board can turn around review/revisions.

## 7. Deliverables

On completion, the church has:

- A secure **login for board members** on the website.
- A **posting dashboard** to create / edit / publish / delete news posts, each with a photo.
- Published posts appearing **automatically in the "Updates" area** of nhshc.ca.
- A short written **"How to post" guide** for the board.
- Everything **live on nhshc.ca**.

## 8. Cost & payment

- **Total: ~$2,450** (~44 hours @ $55.50/hr).
- Billed **per section as completed** (milestone-based) — the church pays as the work lands and can pause at any point without leaving anything half-finished.
- *Optional:* a **50% deposit (~$1,225)** to begin, balance on completion — or simple pay-as-you-go. Whatever the board prefers.
- **No ongoing or monthly cost.**

## 9. Optional ongoing maintenance

Adding a login + database is a small new responsibility (occasional security and dependency updates). If the board would like it kept maintained: **~2–4 hrs/quarter** — optional, and separate from the build above.

## 10. Assumptions

- The Supabase free tier is sufficient for the parish's posting volume (comfortably).
- A small number of admin accounts to start; the board controls who has access.
- The existing site design/branding is reused for the posting screens.
- The board writes the content of the posts themselves.

## 11. Approval

If the board is happy to proceed:

Approved by: ____________________________  (Terry Power, President)   Date: ______________
