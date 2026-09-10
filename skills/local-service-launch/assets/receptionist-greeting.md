# Receptionist Greeting

Use this file when you configure any AI phone receptionist (a field-service app add-on or a standalone product) for a small US home-service business. The first utterance is the compliance control: every AI receptionist product surveyed records and transcribes by default and none advertises a no-recording mode (judgment, 2026-09-07), so the greeting, not a vendor toggle, is what turns a recorded call into a consented call.

Paste the template verbatim. Change only the bracketed placeholders. Any other edit goes back through approval gate D.

## The approved first utterance

Say it before any question, inside the first 10 seconds, and make sure the recording itself captures it.

```
Thanks for calling [Business Name]. You have reached our automated assistant. This is an AI service, not a person, and it helps us after hours and when the line is busy. This call is recorded and transcribed by our third-party AI provider so our team can follow up. If you would rather not be recorded, hang up and text or email us at [number or email] and a person will reply. If you stay on the line, that works for us. How can I help?
```

### What each clause satisfies

| Clause | What it does | Statute or rule it satisfies | Source, tier, date, confidence |
|---|---|---|---|
| "automated assistant ... AI service, not a person" | Discloses the artificial identity before any interaction | Maine LD 1727 (clear and conspicuous notice, text or voice, eff. 2025-09-23); Colorado SB 24-205 s. 6-1-1704 (eff. 2026-06-30, enforcement stayed 2026-04-27); Utah Code 13-72 (disclose when asked; sunset 2027-07-01); Cal. B&P 17941 (disclosure is a complete defense for online bots) | legiscan.com/ME/text/LD1727/id/3255481; leg.colorado.gov/bills/sb25b-004; le.utah.gov/xcode/Title13/Chapter72; leginfo.legislature.ca.gov BPC 17941; government and industry_research; 2026-09-07; medium to high |
| "This call is recorded and transcribed" | Gives the recording notice that consent by continuing depends on | Cal. Penal Code 632 and 632.7 (all-party consent); Kearney v. Salomon Smith Barney, 39 Cal.4th 95 (2006): a business that adequately advises all parties at the outset, and the parties continue, has obtained consent | government; CA text verified via mirror 2026-09-07; high |
| "by our third-party AI provider" | Names the vendor category so the caller knows a third party captures the call | Cal. Penal Code 631 in-transit theory as applied to AI transcription vendors in Ambriz v. Google (N.D. Cal., motion to dismiss denied 2025-02-10); In re Otter.AI Privacy Litigation (N.D. Cal. 5:25-cv-06911) as the trend | industry_research and trade_press; 2025-02 to 2026-06; medium |
| "hang up and text or email us ... a person will reply" | A real alternative path, so staying on the line is voluntary | Consent-by-continuing doctrine (Kearney); an alternative must exist for consent to be voluntary | judgment; 2026-09-07; high |
| "If you stay on the line, that works for us" | Makes the consent-by-continuing mechanism explicit | Same as above | judgment; high |
| The announcement is itself recorded | Satisfies statutes that require the notice to appear in the recording | RCW 9.73.030(3) (the announcement "shall also be recorded"); Conn. Gen. Stat. 52-570d (verbal notice recorded at the start) | government; WA text verified via mirror 2026-09-07, high; CT not fetched, medium |
| Placement before any question, inside 10 seconds | Notice precedes any substantive content | All of the above; the 10-second target is judgment | judgment |

The AI self-identification does not satisfy any recording statute, and the recording notice does not satisfy any AI-disclosure statute. Keep both sentences (judgment, high, 2026-09-07).

## Configuration rules

1. **Routing.** Put the receptionist on the first ring only if nobody can answer the phone at all. Otherwise configure it as overflow (after the fourth ring) and after-hours. Reason: stated Local Services Ads hours must equal answered hours. Reported effective 2026-10-01, a missed call during stated hours where the caller stays more than 20 seconds may be billed as a lead (support.google.com/localservices/answer/15100654 plus Search Engine Land Aug 2026; platform_primary; snippet-confirmed; medium; re-verify on the live page).
2. **Outcome.** Set the bot to submit a request or hold a tentative slot, never to confirm a booking, until the booking-readiness gate in local-service-sales-page (Phase 6) passes. The bot says "a person will confirm your time and price."
3. **Hard refusal.** The bot must never ask for, accept, or store door codes, alarm codes, gate codes, lockbox codes, key locations, or card numbers. If a caller volunteers one, the bot says exactly: "I am not able to take that over the phone. A team member will collect it securely before your visit." Nothing volunteered is written to the transcript summary or the job notes.
4. **Quoting.** The bot never states a price outside the owner-approved formula. If no formula exists, it collects bedrooms, bathrooms, approximate square footage, frequency, and ZIP, and says a person will confirm the price.
5. **Outbound calling blocked.** The bot never dials out. AI-generated voices are "artificial voice" under the TCPA (FCC 24-17, 2024-02-08; government; high), so an outbound AI-voice call needs prior express consent plus identification and opt-out disclosures. Callbacks are made by a human or by text.
6. **Never claims to be human.** When asked, the bot answers: "Yes, I am an automated AI assistant." Utah Code 13-72 requires disclosure when asked (government; medium).
7. **Data.** Confirm in writing that recordings are not used to train the vendor's models, where they are stored, and how long they are kept (judgment drawn from the Otter.ai pleadings).
8. **Escalation.** Any caller who asks for a person gets the human path (transfer during staffed hours, callback promise after hours) with no argument.

## Vendor verification checklist

Send these eight questions before paying for any receptionist product. A "no" on 2, 3, 4, or 7 disqualifies the product for this use.

| # | Question | Required answer |
|---|---|---|
| 1 | Are calls recorded and transcribed by default, and can recording be disabled globally or per area code? | Default stated in writing; disable option noted |
| 2 | Can we set the first utterance verbatim, including the recording disclosure, before any question? | Yes |
| 3 | Can the bot be prohibited from asking for or storing door, alarm, gate, and lockbox codes and card numbers, and what happens if a caller volunteers them? | Yes; volunteered values are dropped, not stored |
| 4 | Can the bot be limited to creating a request or hold rather than a confirmed booking? | Yes |
| 5 | Where are recordings stored, for how long, and are they used to train models? | Written answer; no training use, or an opt-out |
| 6 | Will you sign a data-processing addendum and list sub-processors? | Yes |
| 7 | Can the bot be blocked from placing outbound calls? | Yes |
| 8 | What is the exact price, included volume, and overage? | In writing; vendor-reported; verify at signup |

## Bot do-not-do list

- Do not answer any call without the disclosure sentence.
- Do not place outbound AI-voice calls (FCC 24-17).
- Do not ask for or accept door, alarm, gate, or lockbox codes, key hiding spots, or card numbers.
- Do not quote a firm price or confirm a booking unless the calendar write is real and the formula is approved.
- Do not claim to be human if asked.
- Do not send more than one automated text per missed call, and never a promotional text from the informational campaign (see assets/missed-call-textback.md).
- Do not answer licensing, insurance, or guarantee questions beyond the approved wording.
- Do not collect anything from a caller who says they do not want to be recorded; end the call politely and give the text or email path.

## Test-call checklist

Run from a phone the business controls, once during staffed hours and once after hours. Log the results in the fake-lead QA record (assets/fake-lead-qa-script.md).

| # | Check | Pass criterion |
|---|---|---|
| 1 | Disclosure timing | The AI and recording sentences are audible within the first 10 seconds, before any question |
| 2 | Disclosure in the recording | The vendor's recording and transcript both contain the full disclosure |
| 3 | Alternative path | The text or email path stated in the greeting is live and a person replies |
| 4 | "Are you a real person?" | Bot answers that it is an automated AI assistant |
| 5 | Volunteered access code | Bot gives the exact refusal line; the code appears nowhere in the summary or notes |
| 6 | Price question | Bot stays inside the approved formula or defers to a person |
| 7 | Booking question | Bot creates a request or hold; confirmation language says a person will confirm |
| 8 | Outbound attempt | No callback is placed by the bot; the request lands in the human callback queue |
| 9 | Missed-call text | Exactly one informational text arrives, or none while carrier registration is pending |

## Where the greeting is mandatory versus prudent

Caller location controls which law applies (Kearney v. Salomon Smith Barney, Cal. 2006; government; high), so treat every inbound call as potentially all-party and run the greeting everywhere. The table says where it is legally required rather than merely wise. Confidence: CA, FL, WA high (statute text verified via mirror); others medium; DE and MI low-medium. Verify on the official pages listed in references/compliance-floor.md.

| Status | States | Basis |
|---|---|---|
| Mandatory (all-party recording consent) | CA, FL, WA, IL, PA, MD, MA, MT, NH, NV, CT, DE (treat as all-party) | State wiretap and privacy statutes; see references/compliance-floor.md |
| Mandatory (AI identity disclosure, text or voice) | ME | LD 1727, eff. 2025-09-23 |
| Mandatory in form, enforcement stayed | CO | s. 6-1-1704, eff. 2026-06-30; AG enforcement stayed 2026-04-27 |
| Disclose when asked | UT | Utah Code 13-72; sunset 2027-07-01 |
| Gray | MI | MCL 750.539c; participant recording permitted under Sullivan v. Gray; federal courts split |
| Prudent (one-party for phone calls) | All other states and federal law | 18 U.S.C. 2511(2)(d); callers from all-party states still import their law |

## Approvals needed

| Item | Gate | Owner decision |
|---|---|---|
| Greeting text with both disclosures | D | Approve verbatim, or return with edits |
| Overflow versus first-ring routing, and staffed hours | A, G | Confirm who answers and when |
| Request or hold versus book | E, G | Confirm the booking-readiness gate result |
| Vendor choice after the 8-question checklist | C | Approve spend; vendor-reported prices, verify at signup |

## Sources and evidence

| Claim | Tier | Source | Date | Confidence |
|---|---|---|---|---|
| CA Penal Code 632, 632.7, 637.2 (greater of $5,000 per violation or 3x actual; no injury needed) | government | leginfo.legislature.ca.gov, PEN 637.2 | text verified via mirror 2026-09-07 | high |
| Ambriz v. Google: an AI transcription vendor can be a 631 wiretapper | industry_research | goodwinlaw.com alert Feb 2025; courthousenews.com order PDF | 2025-02-10 | medium |
| In re Otter.AI Privacy Litigation | trade_press | npr.org 2025-08-15; courtlistener.com docket 71118721 | 2025-08 to 2026-06 | medium |
| RCW 9.73.030(3): the announcement must itself be recorded | government | app.leg.wa.gov/rcw/default.aspx?cite=9.73.030 | verified via mirror 2026-09-07 | high |
| Conn. Gen. Stat. 52-570d | government | cga.ct.gov/current/pub/chap_925.htm | not fetched; verify | medium |
| Kearney v. Salomon Smith Barney: caller location and consent by continuing | government | 39 Cal.4th 95 (2006) | 2006 | high |
| FCC 24-17: AI voices are artificial voice under the TCPA | government | docs.fcc.gov/public/attachments/FCC-24-17A1.pdf | 2024-02-08 | high |
| Maine LD 1727 | industry_research | legiscan.com/ME/text/LD1727/id/3255481 | eff. 2025-09-23 | medium |
| Utah Code 13-72 | government | le.utah.gov/xcode/Title13/Chapter72/13-72.html | eff. 2024-05-01; amended 2025-05-07 | medium |
| Colorado 6-1-1704 effective date and enforcement stay | government | leg.colorado.gov/bills/sb25b-004; SB26-189 fiscal note 2026-05-06 | eff. 2026-06-30; stay 2026-04-27 | medium |
| Cal. B&P 17941 | government | leginfo.legislature.ca.gov, BPC 17941 | verified via bill-text mirror 2026-09-07 | high |
| LSA missed-call billing from 2026-10-01 | platform_primary | support.google.com/localservices/answer/15100654 | snippet-confirmed 2026-08; re-verify on the live page | medium |
| All receptionist products record by default | judgment | vendor survey in the research corpus | 2026-09-07 | medium |

This is guidance, not legal advice. Consult counsel licensed in the business's state before the receptionist takes a live call, especially in CA, FL, WA, IL, PA, MD, MA, NH, NV, CT, DE, or ME.
