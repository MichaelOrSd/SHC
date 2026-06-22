# Sacred Heart Church Website — What's Next

*A plain-language plan with costs, prepared for the Board.*
*All work at the church rate of **$55.50/hr**. The original website build is complete and paid in full — everything below is new and optional, offered so you can pick what fits the budget.*

---

## Where we are today ✅

The new website is **live and secure at nhshc.ca**, with the church email working exactly as before — at **no ongoing cost**. It already has the welcome/history, About Us, Board of Directors, Documents, Cemetery, a donation section (CanadaHelps + e-Transfer), and an email-newsletter signup.

**Nothing below is required to keep running.** The church operates fully today. Everything that follows is about **growing reach and giving** — and it's laid out so you can stop at any budget line.

---

## The strategy, in one paragraph

We looked at how small, volunteer-run parishes actually thrive. Three things stand out for a parish like ours: **(1) lean on email** — it's the channel you own and the one donors prefer (small parishes raise far more per email contact than through social media, and Facebook now shows a page to only ~2% of followers); **(2) activate the diaspora** — people with North Harbour roots who've moved away give out of identity and belonging, and a church is the natural way to reach them; and **(3) turn the cemetery into a year-round memorial-giving channel** — tribute/"in memory of" giving is common (about a third of donors give it) and a natural fit we're currently not using. Social media is optional and can wait.

---

## The plan, by priority

### 🟢 Tier 1 — Highest value, lowest cost *(strongly recommended)*

Small tweaks to the **existing** site that directly drive subscribers and donations. Not required to operate — but the best return per dollar on this whole list.

| Item | What it does | Hours | Cost |
|---|---|---|---|
| **Memorial giving + "Cemetery Perpetual Care Fund"** | Adds "In memory of / In honour of" giving and a named cemetery fund — taps the biggest underused giving source for a parish with a cemetery | 1.5 | ~$85 |
| **Recurring-giving + tax-receipt wording** | "$10/month keeps the lights on and the cemetery cared for" + "instant CRA tax receipt" — both proven to lift giving | 0.5 | ~$30 |
| **Newsletter QR code + diaspora invitation** | A scan-to-subscribe code for printed bulletins, and a "anyone with North Harbour roots" hook on the signup | 1 | ~$55 |
| **Tier 1 total** | | **~3 hrs** | **~$170** |

*Note: the memorial-giving item also needs a quick ~10-minute setup in CanadaHelps (creating the "Cemetery Perpetual Care Fund") by whoever manages the church's CanadaHelps account — likely Mary Ann. Exact step-by-step instructions provided.*

### 🟡 Tier 2 — Custom Newsletter Template *(recommended next investment)*

Email is the highest-return channel we own, so it's worth making it look like the church rather than a generic form. A branded, reusable template you fill in and send in a few clicks.

| Step | What's involved | Hours | Cost |
|---|---|---|---|
| **Design** | Translate the site's look into an email-safe layout; one mockup round for approval | 2 | ~$111 |
| **Build** | Hand-code the template (renders correctly even in Outlook); reusable blocks: header, story, image, button, footer | 3 | ~$167 |
| **Set up in email system (Kit)** | Load it in; configure the required mailing-address footer, unsubscribe link, and branding | 1 | ~$55 |
| **Testing** | Verify it looks right in Gmail, Apple Mail, Outlook, iPhone and Android | 2 | ~$111 |
| **How-to guide** | A simple guide for composing a newsletter with the template | 1 | ~$55 |
| **Tier 2 total** | | **~9 hrs** | **~$500** |

### 🔵 Tier 3 — News-Posting Portal *(optional — only if you want to post updates yourselves)*

Lets the board **log in and publish text + photo updates** straight to the website's "Updates" area, no developer needed. Built **admin-only** (no public sign-up) on purpose — it keeps things simple, cheap, and **low cyber-risk**, since there are no public accounts to attack and almost no personal data stored.

**The technology — in plain terms**

The public website stays exactly where it is (GitHub Pages, free). We add a small, secure "back office" using **Supabase** — a well-established, open-source platform used by thousands of organizations — which provides three things on its **free tier**: a **database** (where the posts live), a **login system**, and **photo storage**. The posting screens are built with the same plain web technology the current site already uses (HTML, CSS, JavaScript) — no heavy frameworks, nothing exotic to maintain.

- **Where the data lives:** Supabase's secure cloud (industry-standard, automatically backed up).
- **Who owns it:** the church — everything can be exported at any time, no lock-in.
- **Ongoing cost:** **$0** on the free tier (more than enough for a parish's posting volume).

**The tools, section by section:**

| Section | What it covers | Technology used | Hours | Cost |
|---|---|---|---|---|
| Backend + database | Secure storage for posts and photos | **Supabase** — managed **PostgreSQL** database (free tier) | 3 | ~$165 |
| Admin login | Sign in, sign out, password reset | **Supabase Auth** (email + password) | 4 | ~$222 |
| Security layer | Ensures only published posts are ever public | **PostgreSQL Row-Level Security (RLS)** rules | 4 | ~$222 |
| Posting dashboard | Create / edit / publish / delete posts | **Vanilla JavaScript** + the **Supabase JS client** (loaded via CDN); HTML/CSS forms styled to match the site | 6 | ~$333 |
| Photo uploads | Upload + auto-resize, one photo per post | **Supabase Storage** + in-browser image resizing (Canvas API) | 3 | ~$167 |
| Display on the site | Posts appear in the "Updates" area | JavaScript reading from Supabase, rendered into the existing page | 4 | ~$222 |
| Mobile, accessibility & checks | Works on phones; safe and accessible | The site's existing **CSS design system**; responsive layout + **ARIA** accessibility | 5 | ~$278 |
| Testing + your revisions | Full testing + 1–2 rounds of changes | Manual cross-browser/device testing (Chrome, Safari, Firefox, iOS, Android) | 5 | ~$278 |
| Guide + go-live | "How to post" guide; publish to the live site | **GitHub Pages** + the existing **GitHub Actions** auto-deploy; written admin guide | 3 | ~$167 |
| Contingency (20%) | Buffer for the security-critical parts | — | 7 | ~$389 |
| **Tier 3 total** | | | **~44 hrs** | **~$2,450** |

**One honest note on upkeep:** adding a login + database is a small new responsibility — occasional security and dependency updates. Budget roughly **~2–4 hrs/quarter** if you'd like me to keep it maintained. This is optional and separate from the build above; the site itself stays free to run.

### ⚪ Reserved for the future *(not needed now)*

- **Public member logins + approval** (~+30 hrs / +$1,600) — lets parishioners (not just the board) submit content. More "community feel," but more cyber-risk and admin work. Easy to add later.
- **Photo galleries, events, and a calendar** — add only if the need appears.

---

## What's necessary vs. optional — the bottom line

| | What | Cost |
|---|---|---|
| **Necessary to operate** | Nothing — the site is live and does the job today | $0 |
| **Best value (recommended regardless)** | Tier 1 quick wins | ~$170 |
| **Recommended investment** | Tier 2 newsletter template | ~$500 |
| **Optional (when budget allows)** | Tier 3 self-posting portal | ~$2,450 |
| **Future only** | Public member logins, galleries, events | later |

### Pick-your-budget packages

| Package | Includes | One-time | Ongoing |
|---|---|---|---|
| **Essentials** | Tier 1 quick wins | **~$170** | $0 |
| **Essentials + Newsletter** | Tier 1 + Tier 2 | **~$670** | $0 |
| **Everything** | Tier 1 + Tier 2 + Tier 3 | **~$3,120** | $0 |

Each item can be done as its own small piece, billed on completion — so the church pays as it goes and can stop at any line without leaving anything half-finished.

---

## Top recommendations (cheap, high-impact)

1. **Commit to a consistent monthly email** — your highest-return channel, and the one that reaches the diaspora.
2. **Add a QR code to the bulletin** linking to the signup — the easiest way to grow the list from the pews.
3. **Add "In memory of / In honour of" giving + a Cemetery Perpetual Care Fund** — a natural fit we're not yet using.
4. **Promote "in lieu of flowers" donations** with a direct link in obituaries/funeral notices.
5. **Run one annual diaspora "homecoming" giving campaign** (Christmas or a summer feast day).
6. **Lead every donation ask with monthly recurring giving.**
7. **Route donors to CanadaHelps** and advertise the **instant tax receipt** (and the tax savings).

*(Worth skipping for now: text-message platforms, weekly emails, and a Facebook Page — too much upkeep for a volunteer board.)*

---

## Two housekeeping notes (for Melvin)

- **Downgrade the DreamHost plan to email-only** (~$24/yr) to capture the planned savings — ideally before the **July 30** hosting renewal.
- **Turn on domain auto-renewal** (currently off; the domain expires March 2027).

---

*Full research sources (on how small parishes handle news, subscribers, and donations) available on request.*
