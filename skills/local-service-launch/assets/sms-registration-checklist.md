# SMS Registration Checklist

Use this file when a business needs to send application-to-person (A2P) texts from a US local number: missed-call text-back, review requests, appointment reminders. US carriers block unregistered A2P traffic (Twilio A2P 10DLC documentation; vendor; 2026; high; Twilio error 30034), so nothing automated can send until the campaign is approved.

## The rule that protects the launch

Do not let the SMS leg gate launch. Phone, web form, and receptionist request capture can be live on Day 1. Use the field-service app's in-app texting (the app registers under its own account and filters traffic until approval) and submit the carrier registration form on Day 0 anyway. Automated text-back is the last component to switch on. Campaign review takes 10-15 business days per Twilio's 2026 documentation (vendor; high), and each rejection adds a full cycle.

## Prerequisites

Prepare every row before the owner clicks submit. Rows 1 and 8 are owner-only identity items; an agent or VA cannot supply them.

| # | Item | What to prepare | Rejection cause it prevents |
|---|---|---|---|
| 1 | Legal business name and EIN | Exactly as filed with the IRS. No EIN: the sole-proprietor tier applies (OTP-verified US mobile, 1 campaign, 1 number, about 1,000 segments per day on T-Mobile, about 1 SMS per second, no vetting path). Get an EIN first (free, minutes, irs.gov) and register Low-Volume Standard instead | Legal name or EIN mismatch with IRS records |
| 2 | Business address and URL | A physical address and a public website or landing page that names the business | Unverifiable brand |
| 3 | Privacy policy page | Must mention texting, state that mobile information is not shared with third parties for marketing, and describe what is collected and how it is used (clauses below) | Privacy policy silent on SMS; missing the no-sharing sentence |
| 4 | Terms page | Message frequency, "Msg & data rates may apply," STOP and HELP instructions (clauses below) | Missing frequency or STOP/HELP |
| 5 | Opt-in evidence | Screenshot or URL of the form checkbox, unchecked by default and separate from the service-request submit button, plus a written description of the inbound flow (below) | Opt-in process too vague |
| 6 | Sample messages | Two or more, each with the brand name and STOP, matching the use case | Samples do not match the use case |
| 7 | Use case | Customer Care (or the single sole-proprietor use case). Do not select marketing unless a promotional program with its own consent exists | Mixed marketing content in an informational campaign (Twilio error 30913 pattern) |
| 8 | Registrant | The owner submits and completes the OTP within 24 hours; an agency or VA cannot be the registrant | Failed or expired OTP |

Sources: Twilio A2P 10DLC registration, sole-proprietor, and campaign-approval articles (help.twilio.com/articles/1260801864489; /11648245063067; /11847054539547); vendor; 2026; verified via Twilio's own github.com/twilio/ai repo because the help pages were egress-blocked; re-verify on the live page. The EIN-first rule is judgment applied to those docs.

### Privacy policy SMS clauses

Paste into the privacy policy page and adapt only the bracketed items. Tell the truth about service providers: the same page must accurately disclose that data is shared with the scheduling, phone, and AI vendors the business uses (FTC Act s. 5 treats misrepresented privacy practices as deceptive; government; high).

```
Text messaging. If you provide your mobile number, [Business Name] may send you text messages about your service request, appointments, and follow-up. Message frequency varies. Message and data rates may apply. Reply STOP to cancel and HELP for help.

We collect your name, phone number, email, service address, and the details of your request. We use them to respond to you, schedule and perform service, and send the messages described above.

Mobile information will not be shared with third parties or affiliates for marketing or promotional purposes. We share information only with service providers that help us run the business (scheduling, phone, texting, and AI assistant vendors), and they may use it only to provide those services to us.
```

### Terms page SMS clauses

```
SMS terms. By providing your mobile number or texting [Business Name], you agree to receive text messages about your service request and appointments. Message frequency varies, typically [number] messages per service visit. Message and data rates may apply. Reply STOP to opt out at any time. Reply HELP or contact [email or number] for help. Carriers are not liable for delayed or undelivered messages.
```

### Opt-in checkbox and inbound-flow description

Form checkbox, unchecked by default and not required to submit the quote request:

```
[ ] Yes, [Business Name] may text me about my request and appointments. Msg & data rates may apply. Reply STOP to opt out.
```

Written flow description for the registration form:

```
Consumers reach us in two ways. (1) They call or text our business number; if we miss the call, we send one informational text acknowledging the call and asking what they need. (2) They submit a quote request on [URL] and may tick an unchecked box consenting to texts about their request. We send no promotional texts from this campaign. All further texts are replies to the consumer or appointment-related messages. STOP is honored automatically and HELP returns contact information.
```

### Sample messages

```
1. Hi, it's [Business Name]. Sorry we missed your call just now. Reply here with what you need and your ZIP code, or call us back at [number]. Msg & data rates may apply. Reply STOP to opt out.
2. [Business Name]: your cleaning is scheduled for [day] at [time]. Reply here with any questions. Reply STOP to opt out.
3. Hi [First name], thanks for having [Business Name] today. Would you leave an honest Google review? [link]. Reply STOP to opt out.
```

## Timelines

| Step | Time | Source, tier, confidence |
|---|---|---|
| Brand registration | Minutes to days; respond to the OTP within 24 hours | Twilio docs via github.com/twilio/ai; vendor; 2026; high |
| Campaign review | 10-15 business days; plan 2-3 calendar weeks; each rejection adds a cycle | Same; high. Community reports of 1-3 weeks agree (trade_press; medium) |
| Toll-free verification (the bridge) | 3-5 business days. Order a toll-free number from the app or a VoIP provider on Day 0 and submit verification, so it can carry the text-back if the campaign is still pending on Day 7 | Same; high |
| Sole-proprietor to standard transition | After an EIN is obtained, re-register the brand | twilio.com/docs/messaging/compliance/a2p-10dlc/transition-sole-proprietor-to-standard-brand; vendor; medium |

Calendar a status check on business days 5, 10, and 15. If the app shows no approved status by day 15, open a support ticket with the campaign ID. Two things to confirm with the app vendor on Day 0, because their help centers were egress-blocked (judgment; low): whether it registers the brand and campaign on the business's behalf and the approval time it states, and whether its missed-call text feature suppresses STOP numbers and sends exactly one message per missed call.

## Fees

All fees are vendor-reported and low confidence: from memory of 2024-2025 pricing plus one 2026 competitor teardown. Verify on the field-service app's fee page or twilio.com/en-us/messaging/pricing/us-a2p-10dlc at signup. The amounts are immaterial to the decision; do not let a fee question delay submission.

| Fee | Reported amount | Confidence |
|---|---|---|
| Sole-proprietor brand registration | About $4 one-time | low |
| Campaign vetting | About $15 one-time; one teardown cites $19.50 | low |
| Monthly campaign fee | About $2 per month sole-proprietor; $1.50-$10 per month standard low-volume | low |
| Toll-free verification | Usually free | low |

## Rejection recovery

1. Read the rejection reason in the app or the campaign registry notice. Do not resubmit blind; a second rejection costs another full review window.
2. Match the reason to the prerequisites table: privacy policy silent on SMS or missing the no-sharing sentence (row 3), samples that do not match the use case (row 6), vague opt-in (row 5), legal name or EIN mismatch (row 1), marketing content in a Customer Care campaign (row 7).
3. Fix the website page or form first, take a fresh screenshot, then resubmit the same day with the corrected fields.
4. If the app registers on the business's behalf and gives no reason, ask its support for the campaign ID and the registry's stated cause.
5. Keep the toll-free bridge sender live until the campaign is approved, then move the text-back to the registered local number and re-run fake-lead QA routes 4, 5, and 10.

## Approvals needed

| Item | Gate | Owner decision |
|---|---|---|
| Privacy policy and terms pages | B, G | Approve the SMS clauses and the service-provider disclosure before publishing |
| Opt-in checkbox wording and placement | G | Approve; confirm it is unchecked and separate from submit |
| Sample messages | D | Approve verbatim |
| EIN and legal-name entry, OTP | A | Owner enters and submits |
| Toll-free bridge number | C | Approve the number cost (vendor-reported; verify at signup) |

## Sources and evidence

| Claim | Tier | Source | Date | Confidence |
|---|---|---|---|---|
| Registration requirements, timelines, sole-proprietor limits, error codes | vendor | help.twilio.com/articles/1260801864489; /11648245063067; /11847054539547 (via github.com/twilio/ai) | 2026 | high |
| Fees | vendor | twilio.com/en-us/messaging/pricing/us-a2p-10dlc | memory of 2024-2025; unverified | low |
| CTIA no-sharing privacy clause requirement | industry_research | api.ctia.org, May 2023 Messaging Principles and Best Practices PDF | 2023-05; not fetched | medium |
| Truthful privacy statements under FTC Act s. 5 | government | ftc.gov/business-guidance/resources/start-security-guide-business | current | high |
| EIN is free and issued online in minutes | government | irs.gov/businesses/small-businesses-self-employed/get-an-employer-identification-number | current; not fetched | high |

This is guidance on carrier policy, not legal advice. Consult counsel licensed in the business's state on the privacy policy and terms wording before publishing.
