# Fake-Lead QA Script

Run this end-to-end test on the live surfaces before any paid dollar is loaded or any ad is enabled. Every lead route gets a fake lead from a test phone, and every route must log **pass** before Thumbtack is funded, Search ads go live, or Local Services Ads activate. A single **fail** or **conditional** on a live route blocks all paid spend by rule, not by judgment.

Time: about 2 hours for the tester, 30 minutes for the owner to watch once (judgment).

## Setup

- **Test identity:** use a second phone the owner or a team member controls. Never use a real customer's number or a number you do not own. Prefix every test with the word TEST in the lead log and the FSM.
- **Test address:** a real ZIP inside the approved service area, a made-up street, and the note "QA test, do not schedule."
- **Hours:** run the staffed-hours routes inside the stated answering window and the after-hours routes outside it. Do both on the same day if possible.
- **Consent for the test:** the tester consents to being recorded and texted by the business. Record that consent in the log; it is the only number the automated texts may reach during QA.
- **Clean-up:** delete or archive every TEST job, lead, and review request after the run. A test review request must never reach the review link with a real name attached.
- **Recording check:** if the receptionist records, the disclosure sentence must be audible in the first 10 seconds of the test call and present in the transcript.

## Grading

| Grade | Meaning | Effect |
|---|---|---|
| Pass | Every criterion met on the first attempt, evidence attached | Route is cleared |
| Conditional | Criteria met only with a workaround, or a non-blocking defect (typo, slow but inside SLA) | Fix and re-test the same day; counts as fail for the paid-spend gate until re-tested |
| Fail | Any criterion missed, no notification, wrong next step stated, PII leaked, STOP ignored | Paid spend blocked; fix, re-test, re-grade |

## Routes

| # | Route | Steps | Pass criteria |
|---|---|---|---|
| 1 | Web form | Submit the quote form from the test phone on mobile data | Confirmation states the true next step ("we will call or text within [window]"), not "booked"; notification lands in the lead log and the FSM within 2 minutes; timestamp recorded |
| 2 | Live call, staffed hours | Call the public number during the answered window | A human answers by the fourth ring, or the receptionist answers with the approved greeting including the AI and recording disclosures; lead logged with source "phone" |
| 3 | Live call, after hours | Call outside the answered window | Receptionist answers with the approved greeting; collects beds, baths, frequency, ZIP; holds a request, never books or quotes off-formula; refuses door, alarm, gate codes and card numbers; lead logged |
| 4 | Missed call to voicemail | Let the call ring out during staffed hours with the receptionist off | Voicemail states the callback window; missed call appears in the lead log; a human callback is attempted within 60 minutes |
| 5 | Text-back after a missed call | Same as 4, once carrier registration has cleared | Exactly one informational text arrives: business name, no price, no discount, no "book now", and "Reply STOP to opt out"; re-test on the day registration clears |
| 6 | Inbound text | Text the business number with "Do you clean in [town]?" | Reply within the automated first-touch target; the thread lands in the FSM inbox; a human or receptionist reply is on-script |
| 7 | Yelp Request-a-Quote | Send a quote request from a Yelp test account | Reply within the target window from the approved opener; no review solicitation anywhere in the reply; lead logged with source "yelp" |
| 8 | Marketplace message | Send a message through the marketplace inbox (budget still $0) | Reply within the target window; lead logged with source "marketplace"; no price outside the approved formula |
| 9 | Review ask on a paid test job | Mark a TEST job complete and paid in the FSM | The identical review SMS and email fire 1-4 hours later to the test number only; no incentive, no sentiment question, no staff-name request; link resolves to the live review page |
| 10 | STOP honored | Reply STOP to the review or reminder text | No further automated text arrives; the contact shows opted out in the FSM; a single confirmation text (if any) arrives within 5 minutes and contains nothing promotional |
| 11 | 3-star-or-lower escalation | Simulate a 3-star review or a "not happy" reply | Reply is held for owner approval, not auto-posted; owner receives an escalation notice; reply template offers a re-clean, never a refund-for-edit |
| 12 | Pause instead of cancel | Reply "I need to cancel" on a recurring TEST client | The pause menu is offered (skip, monthly, hold slot until [date]) before any cancellation; slot-hold policy matches the approved text |
| 13 | No PII in analytics or URLs | Submit the form, then inspect GA4 DebugView and the confirmation URL | No name, phone, email, or address in any event parameter, page path, or query string; events fire: form_start, form_submit, generate_lead, phone_click, text_click |
| 14 | Mobile click-to-call and click-to-text | Tap the phone and text buttons on the page from the test phone | Dialer opens with the correct number; SMS composer opens with the correct number; both taps register as events |

### Route 5 note: text-back timing

The text-back cannot be tested until the FSM's carrier registration clears, which can take 10-15 business days (Twilio-authored guidance, vendor, 2026). Mark route 5 "pending registration" in the record, not conditional. On the day it clears, run routes 4, 5, and 10 again and update the record. Until then, the voicemail promise is the only after-miss touch, and paid channels that rely on the text leg stay off.

### Route 9 note: what a compliant review ask looks like

Identical message to every completed job, one reminder at plus 3 days, STOP language, no incentive of any kind, no "were you happy?" gate, no request to name a staff member. Google's review policy prohibits incentives, gating, and insider reviews (support.google.com/contributionpolicy/answer/7400114, platform_primary, snippet-confirmed; re-verify on the live page). FTC 16 CFR Part 465 bans sentiment-conditioned incentives and fake reviews, with civil penalties over $50,000 per violation, adjusted every January (government, 2024 rule; Jan 2025 figure $53,088). Yelp is never solicited.

### Route 13 note: what counts as PII

Any of name, phone, email, street address, or entry instructions in an event parameter, URL path, query string, or page title. A ZIP alone is acceptable. Access codes and card numbers must not exist in any marketing form at all.

## Speed targets used in grading

| Touch | Target | Basis |
|---|---|---|
| Automated first touch (voicemail promise, text-back, receptionist) | Within 5 minutes, usually seconds | Judgment plus marketplace and LSA responsiveness scoring |
| Human callback, 8am-8pm | Within 60 minutes | HBR "The Short Life of Online Sales Leads," March 2011: contact within one hour was about 7x as likely to qualify the lead as an hour later (industry_research, correlational, vendor co-authored) |
| Human callback, after hours | First thing next morning | Judgment |
| Marketplace and Yelp reply | Within minutes 8am-8pm | Judgment; platforms score responsiveness |

## Go/no-go record

Copy this table into `ops/qa/go-no-go-YYYY-MM-DD.md` in the private workspace. Attach a screenshot or log line for each row.

| # | Route | Grade | Evidence (screenshot, log line, timestamp) | Defect found | Fix owner | Re-test date |
|---|---|---|---|---|---|---|
| 1 | Web form | | | | | |
| 2 | Live call, staffed hours | | | | | |
| 3 | Live call, after hours | | | | | |
| 4 | Missed call to voicemail | | | | | |
| 5 | Text-back after missed call | | | | | |
| 6 | Inbound text | | | | | |
| 7 | Yelp Request-a-Quote | | | | | |
| 8 | Marketplace message | | | | | |
| 9 | Review ask on paid test job | | | | | |
| 10 | STOP honored | | | | | |
| 11 | 3-star-or-lower escalation | | | | | |
| 12 | Pause instead of cancel | | | | | |
| 13 | No PII in analytics or URLs | | | | | |
| 14 | Mobile click-to-call and text | | | | | |

### Decision

| Field | Entry |
|---|---|
| Date and tester | |
| Routes passed / total | |
| Routes pending registration | |
| Paid-spend gate | GO only if every live route reads Pass; otherwise NO-GO |
| Owner signature and date | |
| Next scheduled re-test | The day carrier registration clears; after any change to greeting, templates, form, or number |

## When to re-run

- Any change to the greeting, a template, the form, the number, or the FSM automations.
- The day carrier registration clears (routes 4, 5, 10).
- Before each new paid channel activates (Thumbtack, Search, LSA).
- After any platform-side change such as a new phone provider or a builder migration.

## Sources and evidence

| Claim | Tier | Source | Date |
|---|---|---|---|
| Google review policy: no incentives, no gating, no insider reviews | platform_primary, snippet-confirmed | support.google.com/contributionpolicy/answer/7400114 | accessed 2026-09-07 |
| FTC reviews rule and penalty level | government | 16 CFR Part 465; 16 CFR 1.98 | rule effective 2024-10-21; penalty figure Jan 2025 |
| TCPA: informational text-back needs no written consent; revocation honored within 10 business days | government | 47 CFR 64.1200 | effective 2025-04-11 |
| One-hour callback evidence | industry_research | HBR, "The Short Life of Online Sales Leads" | March 2011 |
| Carrier registration 10-15 business days | vendor | Twilio-authored 10DLC guidance | 2026 |

Recording and AI disclosure rules vary by state. Consult counsel licensed in the business's state before the receptionist takes a live call.
