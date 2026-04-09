# PROMPT: Implement "Ways to Give" Page for nhshc.ca

Paste this into Claude Code (Sonnet) to implement the Ways to Give / Donate page on the nhshc.ca site.

---

## Task

Add a comprehensive "Ways to Give" / "Donate" page to the nhshc.ca Sacred Heart Church heritage site. This page should present ALL donation options available to church members, from traditional to digital to legacy giving. It must match the existing site design, feel welcoming and trustworthy, and make it as easy as possible for someone to donate.

## Page Structure

Build a `/donate` or `/ways-to-give` route (match whichever routing pattern the project uses). The page should contain the following sections, in this order:

### 1. Hero / Intro Section
- Heading: "Ways to Give"
- Subheading: "Supporting the Mission of Sacred Heart Church"
- Brief paragraph explaining that the church offers many ways to give and every contribution matters.
- A prominent **"Donate Now"** CTA button that scrolls to or links to the online giving section.

### 2. In-Person & Traditional Giving
Display these methods in a clean card or grid layout:

**Sunday Offering** — Cash or cheque in the collection basket. Numbered offering envelopes are available at the church entrance for tax receipt tracking.

**Offering Envelopes** — Pre-printed weekly/monthly envelopes assigned to your household. Contact the parish office to be assigned envelope numbers.

**Cheque by Mail** — Mail a cheque payable to "Sacred Heart Church" to the parish mailing address. Include your name, address, and envelope number for receipting.

### 3. Digital & Electronic Giving
This is the most important section — make it visually prominent. Display in cards/grid:

**Interac e-Transfer** — Send from your bank to the church's designated email (e.g., donate@nhshc.ca). Auto-deposit enabled. Email the church your name and donation amount for tax receipt tracking. *Include a copy-to-clipboard button for the email address.*

**Online Giving** — Embedded or linked donation form (placeholder for Canada Helps, Donorbox, or Tithe.ly integration). Supports credit card, debit, and ACH bank transfer. Note: ACH costs only ~$0.30/transaction vs 2.15%+ for credit cards.

**Recurring / Automatic Giving** — Set up weekly or monthly automatic donations through the online giving platform for consistent, hassle-free support.

**Pre-Authorized Debit (PAD)** — Authorize the church to withdraw a set amount on a schedule. Download the PAD authorization form (link to a PDF). Often the lowest-fee option.

**QR Code Giving** — Display an actual QR code on the page (generate one linking to the online donation URL or use a placeholder). "Scan to Give" — works with any smartphone camera.

**Text-to-Give** — Text a keyword (e.g., "GIVE") to a designated number to receive a donation link. No login or registration required.

### 4. Securities & Capital Gifts
Include an eye-catching callout/banner explaining the **Canadian tax advantage**: donating publicly traded securities (stocks, mutual funds, bonds) eliminates capital gains tax entirely, and the donor receives a tax receipt for the full market value. This can make giving securities significantly more cost-effective than cash.

Then list:

**Publicly Traded Securities** — Transfer stocks, mutual funds, or bonds directly to the church. No capital gains tax. Full market value tax receipt. Contact the parish office or diocese for the transfer form.

**Gifts-in-Kind** — Non-cash gifts (property, equipment, assets). The church issues a receipt based on fair market value. Independent appraisal required for non-publicly-traded assets.

### 5. Legacy & Planned Giving
Style this section with a warm, reflective tone — perhaps a subtle background color or a bordered section:

**Bequest (Gift in Will)** — Designate Sacred Heart Church in your will. Can be a specific dollar amount, a percentage of your estate, or a specific asset. Your estate receives the charitable tax deduction. Include sample bequest language if possible.

**Life Insurance** — Name the church as beneficiary of a policy. Premiums may be tax-deductible.

**Charitable Gift Annuity** — Transfer assets in exchange for guaranteed lifetime income, with the remainder going to the church. Administered through the diocese.

**Endowment Fund** — A permanent fund where only investment income is used. Creates a perpetual legacy of support.

### 6. Special Campaigns & Events
Brief section with:
- Capital campaigns (time-limited drives for specific projects like restoration)
- Special collections (designated Sunday collections for missions, disaster relief, etc.)
- Fundraising events (community dinners, heritage events — link to events page if one exists)
- Employer matching (remind parishioners to check if their employer matches charitable gifts)

### 7. Footer Info Block
At the bottom of the page, include:
- The church's **mailing address** for cheque donations
- **Charitable registration number** (use placeholder: `[CHARITY REG #]`)
- Note that all donations of $20+ receive a charitable tax receipt
- Contact info for the parish office for questions about giving
- A final warm closing line: "Every gift, no matter the size, helps sustain Sacred Heart Church and preserve our heritage for future generations."

## Design Guidelines

- **Match the existing nhshc.ca site design** — use the same color palette, fonts, spacing patterns, and component styles already in the project.
- Use icons for each giving method if the project uses an icon library (Lucide, Heroicons, etc.). Suggested icons: church/cross for traditional, smartphone for digital, chart/trending-up for securities, heart for legacy, calendar for campaigns.
- The "Donate Now" button and e-Transfer email should be the most visually prominent elements.
- Ensure the page is fully responsive (mobile-first).
- Add smooth scroll behavior if using anchor links within the page.
- Add the page to the site's main navigation (label: "Donate" or "Give").

## Placeholder Content Notes
- Use `donate@nhshc.ca` as the e-Transfer email (placeholder — church will confirm)
- Use `[PHONE NUMBER]` and `[MAILING ADDRESS]` as placeholders for contact info
- Use `[CHARITY REG #]` for the charitable registration number
- For the online giving form, create a styled placeholder section with a "Coming Soon" note or a link to `#` that can be replaced with the actual platform embed later
- For the QR code, either generate one programmatically or use a placeholder image
- For the PAD form, link to `#` or `/forms/pad-authorization.pdf` as a placeholder

## Technical Notes
- Review the existing codebase structure before starting — check routing, component patterns, and styling approach.
- Create the page component in whatever pattern the project uses.
- Add the route to the router configuration.
- Add "Donate" to the main navigation.
- If the site uses Tailwind, use Tailwind classes. If it uses CSS modules or styled-components, match that.
- Ensure all text is accessible (proper heading hierarchy, alt text, ARIA labels on interactive elements).
- The QR code can use a library like `qrcode.react` or `qrcode` if available, or just be a placeholder SVG/image.
