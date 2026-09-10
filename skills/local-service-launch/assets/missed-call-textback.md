# Missed-Call Text-Back

Use this file when you configure the automatic text that a field-service app or phone system sends after a call goes unanswered. The message is lawful without prior express written consent only while it stays informational. One added word of promotion changes its legal class. Paste the template verbatim; every other wording change goes back through approval gate D.

## The template

```
Hi, it's [Business Name]. Sorry we missed your call just now. Reply here with what you need and your ZIP code, or call us back at [number]. Msg & data rates may apply. Reply STOP to opt out.
```

Change placeholders only. Do not add a link to a pricing, offer, or review page.

## Why this is informational and not advertising

| Element | Rule | Source, tier, date, confidence |
|---|---|---|
| Prior express written consent (PEWC) is required only for a message that includes or introduces an "advertisement" or constitutes "telemarketing" | 47 CFR 64.1200(a)(2)-(3); (f)(1) defines advertisement as material advertising the commercial availability or quality of property, goods, or services; (f)(13) defines telemarketing as initiating a call to encourage a purchase | government; eCFR text mirror dated 2025-02-06, checked 2026-09-07; high |
| The template contains no price, discount, promotion, package, or "book now," so it neither advertises availability or quality nor encourages a purchase | Judgment applying (f)(1) and (f)(13) | judgment; 2026-09-07; high |
| A consumer who calls the business has released the number and given prior express consent to contact about the subject of the call | FCC 1992 TCPA Order para. 31 and 2012 Order, as restated in TCPA practice guides | judgment built on FCC orders; 2026-09-07; high; not legal advice |
| A single call-triggered auto-text is very unlikely to involve an "automatic telephone dialing system" | Facebook v. Duguid, 592 U.S. 395 (2021): an ATDS must use a random or sequential number generator | government; 2021; high |
| Business name and STOP satisfy carrier sample-message rules | CTIA Messaging Principles and Best Practices, May 2023; 10DLC campaign review | industry_research and vendor; 2023-05 and 2026; medium |
| Consent for calls does not automatically extend to texts, and the area is litigated | National Law Review, consent and revocation under the TCPA | trade_press; 2025; medium |

## Sending rules

| Rule | Detail | Source, tier, date |
|---|---|---|
| Exactly one message per missed call | No second attempt, no drip, no reminder. Every later text is a reply to something the consumer sent (conversational tier) | CTIA May 2023, industry_research, medium; judgment |
| Never to a number that sent STOP | The app must suppress the auto-text for any opted-out number. Verify this in the fake-lead QA (route 10) | 47 CFR 64.1200(a)(10)-(12), government, high, eff. 2025-04-11 |
| Honor revocation within 10 business days; target instant | "Stop, quit, end, revoke, opt out, cancel, unsubscribe" in a reply is per se reasonable; any reasonable means counts | Same; eff. 2025-04-11 |
| Optional one opt-out confirmation | Allowed only if sent within 5 minutes, contains no marketing, and is the only additional message | 47 CFR 64.1200(a)(12), government, high |
| Registered sender only | Send from the field-service app's registered number or a verified toll-free number, never an unregistered local number (see assets/sms-registration-checklist.md) | Twilio 10DLC docs, vendor, 2026, high |
| Log every send | Number (masked in reports), timestamp, template version, STOP status | judgment |
| No AI-voice callback | The follow-up to a missed call is this one text plus a human callback, never an outbound AI-voice call | FCC 24-17, government, 2024-02-08, high |

Human callback target after the text: within 60 minutes, 8am to 8pm. Basis: HBR "The Short Life of Online Sales Leads," March 2011, contact within one hour was about 7x as likely to qualify the lead as an hour later (industry_research; correlational; vendor co-authored). The 5-minute automated first touch is judgment plus marketplace and LSA responsiveness scoring.

## Words and phrases that turn this into telemarketing

Any of these in the automated text makes it an advertisement or telemarketing under 47 CFR 64.1200(f)(1) and (f)(13). It then requires PEWC (a signed agreement identifying the seller and the number, (f)(9)), a separate marketing campaign in carrier registration, and a separate unchecked opt-in box on the form. Carriers can suspend the informational campaign for sending it (Twilio campaign-approval guidance, error 30913 pattern; vendor; 2026; high).

| Category | Examples banned in this message |
|---|---|
| Price or discount | "$[X] off," "starting at $[X]," "[X]% off," "first clean $[X]," "free," "deal," "coupon," "promo," "special" |
| Urgency or booking push | "book now," "book today," "limited time," "today only," "spots are filling," "lock in your slot" |
| Offer or package | "new customer offer," "package," "bundle," "upgrade," "add-on deal," "gift card" |
| Cross-sell | "refer a friend and get," "leave a review and get," "sign up for weekly and save" |
| Links | Any link to a pricing, offer, booking-with-price, or review page |
| Quality claims | "best-rated," "#1," "5-star cleaning," "guaranteed" |

If the owner wants a promotional text program later, build it as a separate campaign with its own consent evidence. Never mix it into this message (approval gates D, E, and G).

## Exposure

- TCPA statutory damages: $500 per message, up to $1,500 per message for willful or knowing violations, on a class basis (47 U.S.C. 227(b)(3); government; high).
- State mini-TCPAs (for example Fla. Stat. 501.059 and Wash. RCW 19.190) target telemarketing or commercial content; the informational template is outside their scope (judgment; medium; a state-specific check is needed if the text ever becomes promotional).
- Local Services Ads: a missed LSA call that is returned by text counts as a charged lead (support.google.com/localservices/answer/15100654; platform_primary; snippet-confirmed 2024-08; re-verify on the live page). Make the text a real intake, not a throwaway, but keep it informational.

## Approvals needed

| Item | Gate | Owner decision |
|---|---|---|
| Template text | D | Approve verbatim |
| Consent line on the intake form and STOP suppression setting | G | Approve wording and confirm the setting |
| Any future promotional text program | D, E, G | Separate decision; separate campaign |

## Sources and evidence

| Claim | Tier | Source | Date | Confidence |
|---|---|---|---|---|
| PEWC only for advertisement or telemarketing; definitions | government | ecfr.gov/current/title-47/chapter-I/subchapter-B/part-64/subpart-L/section-64.1200 | mirror dated 2025-02-06 | high |
| Revocation rules, 10 business days, 5-minute confirmation | government | federalregister.gov/documents/2024/03/05/2024-04563; docs.fcc.gov FCC-24-24A1.pdf | eff. 2025-04-11 | high |
| Revoke-all limb waived to 2027-01-31 | government | DA 26-12 (2026-01-06), via a TCPA rules mirror | 2026-01 | medium |
| Facebook v. Duguid ATDS holding | government | 592 U.S. 395 | 2021 | high |
| CTIA messaging tiers | industry_research | api.ctia.org, 230523 Messaging Principles and Best Practices PDF | 2023-05; not fetched | medium |
| Twilio rejection causes, including mixed marketing content | vendor | help.twilio.com/articles/11847054539547 | 2026, via github.com/twilio/ai | high |
| FCC 24-17 artificial voice | government | docs.fcc.gov/public/attachments/FCC-24-17A1.pdf | 2024-02-08 | high |
| HBR one-hour callback evidence | industry_research | hbr.org/2011/03/the-short-life-of-online-sales-leads | 2011-03 | high; correlational |
| LSA charged-lead rule for returned missed calls | platform_primary | support.google.com/localservices/answer/15100654 | snippet-confirmed; re-verify | medium |

This is guidance, not legal advice. Consult counsel licensed in the business's state before the first automated text goes out, especially in FL, WA, OK, or CT, which have their own texting statutes.
