# VA Scope and Data Rules

Use this file the evening you post the VA job (Day 0) and again the day you grant access (Day 5-7). It is the VA's contract scope, the access plan, and the escalation map in one place. Copy it into the private client workspace, fill the brackets, and route the result through Gate C (VA hours are spend) and Gate G (data access) in `approval-batch-template.md`.

Three rules govern everything below. The VA gets a **role**, never a credential. The VA sees the **minimum** customer data a reply and a log require. Anything touching money, identity, price, or consent goes to the **owner**.

## Engage on deliverables and SLAs, not managed hours

Whether the VA is a contractor or an employee is decided by the IRS common-law control test (behavioral control, financial control, relationship of the parties), not by the label on the contract (irs.gov/businesses/small-businesses-self-employed/independent-contractor-self-employed-or-employee, government, not fetched this session, medium confidence). Dictating hours, methods, and minute-by-minute schedules is employee-like control. Define the work as outputs with deadlines, and let the VA choose tools and timing inside the SLA.

| Deliverable | SLA | Done means | Logged where |
|---|---|---|---|
| First written reply to every new marketplace or message lead | Within [5] minutes during answered hours [8am-8pm local] (judgment, plus marketplace responsiveness scoring) | Reply uses the approved script; lead row created | Lead log |
| Human callback offered on every lead that leaves a number | Owner or VA calls within 60 minutes (HBR, "The Short Life of Online Sales Leads," March 2011, industry_research, correlational, vendor co-authored) | Call attempted and outcome recorded | Lead log |
| Lead log complete | Same day | Source, timestamp, first-reply time, outcome, next step for every lead | Lead log |
| Approved items published | By Friday [time], only from `approved/` | Each item posted exactly as approved; file name and timestamp logged | Publish log |
| Review request sent to 100% of completed, paid jobs | Within 24 hours of job-paid in the FSM (judgment) | Identical ask, no incentive, no gating, never on Yelp | FSM |
| Follow-up on open quotes | 48 hours after the quote, one message, approved template only | Sent from the FSM; reply logged | Lead log |
| Weekly completion notes | Monday [time] | One line per deliverable, misses explained | Scorecard |

**Contract terms to include:** a written scope equal to this table; pay per deliverable, per milestone, or per hour block measured against the SLA, never a shift roster; the VA supplies their own equipment and software except where the data addendum names a registered device; no subcontracting; 30-day termination with same-day access revocation; scope changes in writing only.

**Tax paperwork before the first payment (judgment; confirm with an accountant):** a W-9 from a US contractor, with a Form 1099-NEC at the IRS reporting threshold (the threshold is scheduled to rise for payments made in 2026; check the current figure at irs.gov); a W-8BEN from a non-US individual performing the work outside the US, which generally needs no 1099. Hiring through Upwork shifts collection to the platform, and clients generally do not issue a 1099-NEC for Upwork-paid work; hiring directly through OnlineJobs.ph or a referral puts it back on you.

## NDA and data-handling addendum: minimum terms

No state privacy statute with a revenue or volume threshold reaches a small cleaning business (the CCPA threshold is $26.6M revenue or 100,000 consumers; judgment from the statute text). What still applies: the FTC Act section 5 "reasonable security" standard (FTC "Start with Security": control access sensibly, require secure passwords, make sure service providers implement reasonable security, do not collect data you do not need; ftc.gov/business-guidance/resources/start-security-guide-business, government, not fetched this session, medium confidence), state UDAP laws, state breach-notification statutes (triggered by a name plus SSN, driver's license, or financial account number; phone plus address alone usually does not trigger them), and ordinary negligence if leaked entry instructions lead to a burglary. Put these terms in writing before granting any access.

| Term | Minimum wording to capture | Why |
|---|---|---|
| Confidentiality | All customer, lead, pricing, and business data is confidential during and after the engagement | Survives termination; basis for any claim |
| Role-limited access | Access only through named platform roles the owner grants; nothing beyond the deliverables | Matches the role matrix below |
| No download, export, or screenshots | No exporting, downloading, printing, photographing, or screen-capturing customer or lead data | Exports are the usual leak path |
| No personal tools or unapproved AI | No copying data into personal email, notes, spreadsheets, chat apps, or any AI tool the owner has not approved in writing | Consumer AI tools may retain inputs |
| No shared logins | Never use, request, or store the owner's credentials; every platform login is the VA's own named user | Every platform's terms bar credential sharing |
| 2FA | Two-factor authentication on every account the VA holds for this work, on the VA's own authenticator | Stops credential-stuffing takeovers |
| Registered device | Work happens from one named device with a lock screen, disk encryption, and current updates | Bounds lost-device exposure |
| 24-hour exposure reporting | Any suspected loss, leak, phishing, or wrong-recipient message is reported to the owner within 24 hours | Breach-notification clocks start at discovery |
| Same-day revocation | On termination or suspension the owner revokes every role the same day; the VA confirms deletion of residual data within 48 hours | Offboarding is where data walks |
| No subcontracting | No delegation to another person without written approval | Keeps the access list real |

Consult counsel licensed in the business's state before relying on this addendum. This is guidance, not legal advice.

## Platform role matrix

Grant the lowest role that covers the deliverable. The owner keeps the top role everywhere. Every platform below offers a delegate role, so credential sharing is never required. Role names were snippet-confirmed or are judgment because the official pages were egress-blocked; re-verify on the live page before granting.

| Platform | Role to grant the VA | Owner keeps | Source, tier, status |
|---|---|---|---|
| Google Business Profile | Manager (near-owner access; cannot add or remove users or remove the profile) | Primary owner; only the primary owner can transfer primary ownership | support.google.com/business/answer/3403100, platform_primary, snippet-confirmed 2026-09-07 |
| Google Ads | Standard (campaign build and edits) | Admin (users, access, billing); an agency MCC link does not grant billing by default | support.google.com/google-ads/answer/9978556, platform_primary, snippet-confirmed 2026-09-07 |
| Meta Business Portfolio and Page | Person with Partial access; Page tasks Content and Messages | Full control (assign or remove access, delete assets) | facebook.com/business/help/442345745885606, platform_primary, snippet-confirmed 2026-09-07 |
| Yelp for Business | Additional user on the business account | Account owner; the claim code arrives on the business phone | biz.yelp.com support center, judgment, low confidence |
| Thumbtack | Team member only where the category offers it; otherwise the VA works from forwarded lead notifications | Account-holder identity, background-check consent, weekly budget, targeting preferences | help.thumbtack.com, judgment, low confidence |
| Jobber | Manager or Dispatcher (clients, requests, quotes, schedule, client messages) | Admin (billing, integrations, account settings) | help.getjobber.com user-permissions article, vendor, judgment, low confidence |
| Housecall Pro | Office Staff with scoped permission toggles; no settings, pricebook, or reports unless a deliverable needs them | Account owner | help.housecallpro.com, vendor, judgment, low confidence |
| Nextdoor and Facebook groups | None. Neighborhood replies need the owner's verified-resident or personal account, and Nextdoor prohibits automated posting | Owner replies as a neighbor; the agent may draft | help.nextdoor.com, judgment; automation prohibition snippet-confirmed |
| Domain registrar, DNS, website billing, bank, payment processor | None, ever | Everything | Judgment |

## VA do-not-do list

- Never send a message that is not an approved template or a direct answer inside the approved script.
- Never state a price, discount, or recurring term outside the owner-approved formula.
- Never state licensing, bonding, insurance, or background-check facts; route the question to the owner.
- Never reply to a review of 3 stars or lower; log it and escalate.
- Never edit name, address, phone, hours, URL, or categories on any listing. NAP edits are owner-only.
- Never solicit a Yelp review, offer any incentive for a review, or ask only happy customers.
- Never send marketing texts. Only informational replies to inbound messages, from the FSM.
- Never export, download, screenshot, or copy customer data anywhere.
- Never request, view, or record entry instructions, alarm codes, gate codes, key locations, or card numbers.
- Never post in community groups or reply as a neighbor.
- Never fund a channel, change a budget, buy software, or accept a platform's terms on the owner's behalf.
- Never add or remove a user on any platform.
- Never publish anything that is still in `pending-approval/`.

## Owner-only identity gates

These cannot be delegated to a VA, an agency, or an AI agent. Each is tied to the owner's identity or to the paying entity.

| Gate | Why it is owner-only | Source, tier, status |
|---|---|---|
| Google Business Profile video verification | One continuous unedited take of 30 seconds or more, recorded inside Google's flow on a mobile device at the base address, showing location context, evidence of the business, and proof of authorization | support.google.com/business/answer/14271705, platform_primary, snippet-confirmed; re-verify on the live page |
| Thumbtack account holder | Identity verification and background-check consent belong to the account holder; the terms bar account sharing | help.thumbtack.com, judgment, low confidence |
| A2P 10DLC registrant | An EIN for a Standard or Low-Volume Standard brand, or the owner's US mobile OTP for the sole-proprietor tier | Telnyx and Twilio docs via mirrors, platform_primary, snippet-confirmed 2026-09-07 |
| Google Ads advertiser verification | Verifies the entity paying for ads; an agency MCC does not bypass it | support.google.com/adspolicy/answer/9703665, trade_press plus judgment, low confidence |
| Local Services Ads screening | Background check on the owner and every field worker who enters homes, plus insurance verification | support.google.com/localservices/answer/6224841, trade_press plus judgment, low confidence |
| Signatures, money, users | Signing anything, paying anyone, adding or removing users, changing bank or payment details | Judgment |

## Sourcing timelines and rates

All rates are vendor-reported or individual-reported, undated unless noted, and unverified on a live page; verify at signup and re-price from live job posts on Day 0. Timelines are judgment; no platform publishes a time-to-hire guarantee. Add 1-2 days for your own interview availability.

| Route | First productive hour | Rate | Fees and paperwork |
|---|---|---|---|
| Upwork | Day 5-7 (judgment) | Philippines $5-12/hr; LatAm $8-15/hr; US $18-25+/hr (vendor-reported; verify at signup) | Client pays a 3% or 5% marketplace fee plus a one-time contract initiation fee (Upwork pricing page captured 2026-05-31, platform_primary, snippet-confirmed); the platform collects W-9 or W-8BEN; optional NDA at contract |
| OnlineJobs.ph | Day 7-10 (judgment) | Full-time Filipino VAs reported at $400-1,500/month; sources conflict by 2x (vendor-reported; verify at signup) | Employer subscription, no escrow, direct payment, no built-in NDA; collect the W-8BEN yourself |
| US agency (Belay, Time Etc, and similar) | Day 7-14 (judgment) | $20-50/hr, usually sold as monthly hour blocks (vendor-reported; verify at signup) | Contract with the agency, which handles the assistant's taxes |
| US benchmark | n/a | BLS Occupational Outlook Handbook, Secretaries and Administrative Assistants, 2024 median $22.82/hr (government, via mirror; re-verify at bls.gov/ooh) | Sanity bound for any US-based quote |

Budget judgment: 10 hours per week of offshore VA time runs roughly $75-200 all-in; the same hours through a US agency run roughly $300-700. Hiring process: post the AI-drafted job with a paid 20-minute screening task, score proposals with the written rubric, run two or three 15-minute calls, and hire by Day 4-5 on Upwork or Day 5-7 on OnlineJobs.ph. Any Day 0-4 task labeled "VA" is really "owner" or "agent drafts, owner sends."

## Escalation table

The VA logs the trigger, does only the "VA action" column, and stops. The owner decides.

| Trigger | VA action | Owner decides within |
|---|---|---|
| Review of 3 stars or lower, any platform | Log it; do not reply | 24 hours (judgment) |
| Refund, reclean, or damage claim | Acknowledge receipt with the approved line; promise nothing | Same business day |
| Any pricing question outside the approved formula | "The owner will confirm pricing"; log | Same business day |
| Licensing, bonding, insurance, or background-check question | Route verbatim; do not answer | Same business day |
| Any consent question (SMS opt-in, recording, marketing permission, STOP) | Honor STOP at once in the FSM; route the rest | 24 hours; STOP handled immediately |
| Any NAP or listing edit request (name, address, phone, hours, URL, categories) | Log; never edit | Next approval batch |
| Request for entry, alarm, or gate details | Decline; route to the owner or crew lead | Same business day |
| Media, legal, or platform-policy notice | Forward the notice; do not respond | Same business day |
| Platform suspension, verification, or billing message | Text summary to the owner, no screenshot | Same business day |

## Data-minimization rule

The VA-visible lead sheet and FSM view contain only what a reply and a log require: first name, phone, ZIP, service requested, lead source, status, and timestamps. Street address stays in the FSM under role-limited view where the platform allows it. Entry instructions, alarm codes, gate codes, lockbox and key locations, pet and child notes, and payment details live in owner- or crew-only fields and are never visible to the VA, the AI receptionist, or the agent. No exports from any system. The agent refers to customers by job ID in every file it writes.

## Green status is not success

Any automated run (a cloud Routine, a Desktop scheduled task, or a headless `claude -p` job) reports a status, and the status only says the run finished. Cloud Routines run with no approval prompts and every connected connector writable by default (code.claude.com/docs/en/routines, platform_primary, fetched 2026-09-07), so a finished run may have done nothing, or the wrong thing. Before marking a run complete:

1. Read the transcript, not the summary line.
2. Confirm each expected artifact exists in `pending-approval/` with its CLAIMS USED and APPROVALS NEEDED tables.
3. Check the permission_denials list; every send, publish, or spend attempt should appear there as blocked.
4. Confirm nothing landed outside `pending-approval/` or `reports/`.
5. Record the check in the weekly scorecard.

The same rule applies to the VA's weekly notes: "done" is a logged file name and timestamp, not a checkbox.

## CLAIMS USED

| Statement | Evidence class | Source | Date |
|---|---|---|---|
| Contractor status follows the IRS common-law control test | 1 | irs.gov independent-contractor page, government, not fetched this session | 2025 guidance |
| GBP Managers cannot add or remove users or remove the profile | 1 | support.google.com/business/answer/3403100, snippet-confirmed | 2026-09-07 |
| Google Ads Standard access excludes user management | 1 | support.google.com/google-ads/answer/9978556, snippet-confirmed | 2026-09-07 |
| Meta Partial access covers Content and Messages tasks | 1 | facebook.com/business/help/442345745885606, snippet-confirmed | 2026-09-07 |
| Upwork client fee is 3% or 5% plus an initiation fee | 1 | Upwork pricing page capture, snippet-confirmed | 2026-05-31 |
| BLS 2024 median for administrative assistants is $22.82/hr | 1 | BLS OOH, government, via mirror | 2024 |
| Contact within one hour is about 7x as likely to qualify a lead as an hour later | 3 | HBR, March 2011, correlational, B2C and B2B mix | 2011 |
| VA time-to-first-hour by route | 3 | Judgment | 2026-09-07 |
| VA hourly rates by region | 3 | Vendor-reported, unverified | undated |
| Yelp, Thumbtack, Jobber, and Housecall Pro role names | 3 | Judgment; pages egress-blocked | 2026-09-07 |

## APPROVALS NEEDED

| Item | Gate | Owner decision |
|---|---|---|
| VA scope table, SLA values, and pay basis | C | |
| NDA and data-handling addendum text | G | |
| Platform roles to grant and the date granted | G | |
| VA-visible fields in the lead sheet and FSM | G | |
| Escalation response times | D | |
