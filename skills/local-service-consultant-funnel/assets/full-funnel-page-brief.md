# Full Funnel Page Brief

Two pages, filed for later: a landing page with a four-field form and a thank-you page that names the exact next state. **Build trigger, printed first: build only when both are true: three paid clients on one unchanged offer, and four or more unprompted inbound contacts in any 30 days.** Until then the one screen in assets/credibility-page-brief.md is the web presence. Follows the page-brief structure in local-service-sales-page.

## Executive decision

- Recommended page type: one campaign landing page plus one thank-you page
- One audience: owner-operator trades within [service area] who quote in person
- One triggering job: "a quote went quiet, or a check came late, and someone told me about her"
- One primary action: Request a free quote check
- Actual next state: the consultant calls or texts within [reply window] to set a 20-minute read; the read is free; the written page is [first price] if he wants it; nothing is booked and nothing costs anything until he says so in writing
- Confidence: medium; the copy is written, the traffic source is not
- Largest unresolved risk: traffic. Without referrals sending people here, the page converts nobody

## Traffic and message match

- Source: referrers, the one-pager's link, the credibility page's contact line, later a Google Business Profile link
- Source promise: a free 20-minute read of one quote sheet
- Visitor intent: "is this worth 20 minutes?"
- Page promise: the same 20 minutes, free, and the same [first price] page if he wants it

## Offer card

Same as the credibility page, plus the free step named as its own offer: a 20-minute read of one quote sheet he sends, one index card with the one thing to change first, and a look at how his name and phone show up online.

## Evidence ledger

Same Hold rows as the credibility page, plus:

| Page statement | Evidence class | Source and date | Confidence | Publish, condition, or hold |
|---|---|---|---|---|
| "The read is free." | Verified fact once adopted | consultant policy | High | Publish |
| "I call within [reply window]." | Unknown until the window is set | five-decision sheet | | Hold |
| The four-field form goes to [inbox or number] | Unknown | plumbing | | Hold |

## Page map: landing page

| Section | Visitor question | Message | Proof or asset | CTA behavior |
|---|---|---|---|---|
| Header | Who is this? | [Business name], town, tap-to-call | none | call |
| Hero | What is this? | Headline "One page between your quote and your last check." Sub: send one quote sheet; a 20-minute read, free; the written page [first price] once; no monthly; no password | none | none |
| Form | What do I do? | Four fields and the button "Request a free quote check"; microcopy naming the next state | none | submit |
| Free and paid, side by side | What's free, what costs? | Free: the read, the card, the online look. Paid: the rebuilt sheet, the script, the truck card, the log, one real quote together | the lists | none |
| How it works | Then what? | Four numbered lines ending in the page in [turnaround] business days | process | none |
| Who | Who is she? | Real photo, one paragraph, the straight-talk line | photo | none |
| Straight answers | What about... | Five short questions: passwords, monthly, checks, promises of jobs, lawyer or accountant | policy | none |
| Where and when | Will she come here? | [service area]; rain days and evenings | none | none |
| Final CTA | OK, how? | The same button | none | scroll to form |
| Footer | Legit? | Business name, postal address, not-a-lawyer line, privacy line, accessibility line | none | none |

## Form

- Required first-step fields: what do you do (a short list of trades plus "something else"); town; your name; phone, call or text
- Optional: email
- Fields prohibited from the form: anything about access, keys, payment, customer names, or the job address
- Validation: inline text errors naming the field; entered values preserved on error
- Submission owner: the consultant
- Notification: [inbox or number], within a minute of submission
- CRM or list: none; a lead log row by hand the same day
- Thank-you state: the thank-you page, never a message that implies a booking
- Follow-up timing and owner: a call or text inside [reply window], by the consultant, under her own name
- Consent and privacy: "I only use this to reach you about the quote check. No list, no newsletter." No marketing permission is collected

## Page map: thank-you page

| Section | Message |
|---|---|
| Eyebrow | Your request is in |
| Headline | Here is exactly what happens next. |
| Three lines | I call or text [the number you gave] within [reply window]. We pick a 20-minute slot that fits your week. Have a blank quote sheet handy, or text a photo of one to [phone] now. |
| Plain line | Nothing is booked yet. The read is free. Nothing costs anything until you say so in writing. |
| Alternate route | If you'd rather not wait, call [phone]. |
| Footer | Not a lawyer, CPA, or insurance adviser. Privacy line. |

## Hero directions

Direction 1 (verified): the credibility page headline with the free-read sub line. Recommended: it matches every card and page already in his hand.
Direction 2 (evidence-informed): "Send me one quote you wrote. I'll tell you the one thing I'd change first." Held: leads with the ask before the promise.
Direction 3 (hypothesis): "The quote that went quiet is money you already earned." Held: a claim about his quotes before he has made it.

## Leadpages build map

- Surfaces: one landing page, one thank-you page
- Brand kit: none approved; same neutral structure as the credibility page
- Section order: as in the page map
- Components: form with four required fields and one optional; two buttons with the same label; tap-to-call in the header
- Integrations: form notification to [inbox or number]; no CRM
- Redirect: to the thank-you page on platform-confirmed success only
- Mobile, accessibility, performance: as the credibility page; visible labels on every field; errors described in text; 44 pixel targets
- Analytics: the event map below; no personal data in events or URLs
- Content and claims to exclude: prices above the first price, statistics, testimonials, star counts, countdowns, stock photos, fictional examples

## Measurement

| Stage | Event | Success condition | Owner | System |
|---|---|---|---|---|
| Exposure | page_view | correct page and campaign values | consultant | Leadpages |
| Intent | primary_cta_click | button clicked | consultant | Leadpages |
| Alternate contact | phone_click, text_click | correct route | consultant | Leadpages |
| Form engagement | form_start | first field touched | consultant | Leadpages |
| Lead capture | form_submit and generate_lead | platform success, not button click | consultant | Leadpages |
| Read arranged | appointment_request | slot agreed | consultant | lead log |
| Qualification | qualify_lead or disqualify_lead | sheet in hand, ticket about $3,000 or more | consultant | lead log |
| Sale | close_convert_lead | letter signed, paid | consultant | lead log |
| Delivery | completed_job | delivered per the letter | consultant | lead log |

- Primary metric: qualified requests per week
- Guardrails: reply inside [reply window] 100% of the time; disqualified rate under 30%
- Baseline: none until the first month
- Context only, never a target: 6.1% median conversion for professional-services campaign pages (Unbounce Conversion Benchmark Report, vendor, Q4 2024 data, retrieved 2026-09-15, not read at source); 1 to 2% for consulting website pages (FirstPageSage via aggregator, vendor, low confidence, not read at source). Neither describes warm, hand-delivered traffic.

## Prelaunch QA (from local-service-sales-page)

- Truth gate: every Hold row cleared; claims have evidence; request versus confirmation unambiguous
- Plumbing: a live submission appears in Leadpages, reaches [inbox or number], redirects to the thank-you page; call and text links reach the answered number
- Accessibility: labels, errors, focus, contrast, alternative text
- Measurement: form_start and form_submit fire once; generate_lead only on success; no personal data sent
- Device: the published URL tested on a real phone on a cellular connection
- Go or no-go: no-go until the triggers trip and the Hold rows clear

## Leadpages AI Builder prompts

Landing page:

```
Build one campaign landing page. Role: a free 20-minute quote-sheet read for local trades, offered by a solo consultant. Audience: owner-operator painters, pressure washers, handymen, and small remodelers in [service area] who quote in person. Traffic: referrals and hand-delivered cards; match the line "One page between your quote and your last check." One primary conversion: the form, button label "Request a free quote check". Next state, stated in microcopy under the button: "I call or text within [reply window] to set a 20-minute read. Nothing is booked yet, and nothing costs anything until you say so in writing." Verified facts: [business name], [town, state]; the read is free; the written page is [first price] paid once; no monthly, no contract, nothing renews; the consultant never asks for a password; no guarantee. Section order: header with tap-to-call; hero; the form (fields: what do you do, town, your name, phone call or text; email optional; consent line "I only use this to reach you about the quote check."); free and paid side by side; how it works in four numbered lines; who is doing this with one real photo slot and the straight-talk line; five straight answers; where and when; final button; footer with "not a lawyer, CPA, or insurance adviser", privacy line, accessibility line, [postal address]. Brand: neutral, one accent, one display face, one body face, no stock photos. Confirmation: redirect to the thank-you page only on confirmed submission. Notification: [inbox or number]. Mobile-first; 44 pixel targets; visible labels and errors; 4.5:1 contrast; visible focus. Analytics: page_view, primary_cta_click, phone_click, text_click, form_start, form_submit, generate_lead; no personal data in events or URLs. Prohibited: any price above [first price], statistics, testimonials, star ratings, countdowns, scarcity language, the words system, funnel, CRM, retainer, subscription, audit, guaranteed, ROI; fictional examples. Bracketed placeholders for every unknown.
```

Thank-you page:

```
Build one thank-you page. Role: confirm a free quote-check request and state the exact next step. Content: eyebrow "Your request is in"; headline "Here is exactly what happens next."; three numbered lines: "I call or text the number you gave within [reply window]", "We pick a 20-minute slot that fits your week", "Have a blank quote sheet handy, or text a photo of one to [phone] now"; a plain line "Nothing is booked yet. The read is free. Nothing costs anything until you say so in writing."; an alternate route "If you'd rather not wait, call [phone]."; footer with the not-a-lawyer line and the privacy line. No form, no offers, no upsell, no countdown. Same brand as the landing page. Analytics: page_view only.
```
