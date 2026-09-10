# Compliance Floor

This reference is the legal and platform-policy floor under every asset in local-service-launch. It is guidance, not legal advice. Read it before you draft a review ask, a text template, a receptionist greeting, a VA agreement, a hiring post, or a Local Services Ads setup.

## How to read this file

- **Tier**: government (statute, regulation, court order, agency page), platform_primary (the platform's own help or policy page), industry_research, trade_press, vendor, judgment.
- **Confidence**: high, medium, low. Most primary hosts (ftc.gov, ecfr.gov, support.google.com, yelp.com, state legislature sites, fcc.gov, dol.gov) were egress-blocked when this corpus was built on 2026-09-07. "Verified via mirror" means the statute text was read on a faithful copy; "snippet-confirmed" means only search excerpts were read. Re-verify any snippet-confirmed entry on the live page before it appears in client-facing material or drives spend.
- **Dates**: effective dates are the law's own; access dates are 2026-09-07 unless stated.

## Reviews

### FTC Consumer Reviews and Testimonials Rule, 16 CFR Part 465

Effective 2024-10-21 (government; high). Section numbering below follows the codified rule, in which 465.3 is reserved; some summaries number the provisions differently, so re-verify section numbers on ecfr.gov before quoting them.

| Section | What it bans | What it means for a cleaning business |
|---|---|---|
| 465.2 | Fake or false reviews and testimonials, including AI-generated reviews and reviews by people with no actual experience | Never write, draft, or generate review text; never backfill a new profile |
| 465.4 | Buying positive or negative reviews: compensation or incentives conditioned, expressly or by implication, on a particular sentiment | No "5 stars gets $10 off"; no reward for removing a negative review |
| 465.5 | Undisclosed insider reviews by owners, employees, or their relatives | No reviews from the owner, cleaners, family, or friends without disclosure |
| 465.6 | Company-controlled review sites presented as independent | No "independent" review page the business runs |
| 465.7 | Review suppression by unfounded legal threats, physical threats, intimidation, or false accusations; misrepresenting that reviews shown on the business's own site are all or most reviews when negative ones were suppressed | Never threaten a reviewer; label any curated on-site display "selected reviews" and link to the full profile |
| 465.8 | Buying fake indicators of social-media influence | No purchased followers or likes |

- Asking real customers for honest reviews remains permitted (FTC rule Q&A; ftc.gov/business-guidance/resources/consumer-reviews-testimonials-rule-questions-answers; government; snippet-confirmed; medium).
- An unconditional incentive ("honest review, $10 off either way") is not banned by Part 465, but the Endorsement Guides (16 CFR Part 255) require clear and conspicuous disclosure, and Google bans it outright. Operational rule: no incentive of any kind (government plus platform_primary; medium).
- Penalty: civil penalties for knowing violations of a trade regulation rule are over $50,000 per violation, adjusted every January; the January 2025 figure was $53,088 at 16 CFR 1.98, and the January 2026 figure is higher. Each day of a continuing violation is a separate violation (ftc.gov/news-events/news/press-releases/2025/02/ftc-publishes-inflation-adjusted-civil-penalty-amounts-2025; government; high on the mechanism, medium on the current figure).
- First enforcement signal: 2025-12-22, 10 companies, warning letters (notices, not enforcement actions). Conduct flagged included gatekeeping to hide negative reviews, sentiment-conditioned incentives, undisclosed insider reviews, AI-generated reviews, and company-run review sites (ftc.gov/news-events/news/press-releases/2025/12/ftc-warns-10-companies-about-possible-violations-agencys-new-consumer-review-rule; government; high). Do not repeat any breakdown of who received them; that detail is unverified.

### Google review policy

support.google.com/contributionpolicy/answer/7400114 (platform_primary; snippet-confirmed; high on substance; re-verify on the live page). Prohibits:

- Offering money, products, or services for reviews, which means any incentive, conditioned or not.
- Review gating: discouraging or prohibiting negative reviews, or selectively soliciting positive reviews.
- Reviews by owners, employees, or agencies of their own business, and fake engagement.
- Consequence: Google can block a profile from receiving new reviews and unpublish existing ones.

Do not cite any 2026 policy update about staff quotas or staff names; that claim is unverified. As a matter of judgment, do not ask customers to include specific content such as a staff member's name, and do not tie cleaner pay to review counts. Google's own guidance on getting reviews (support.google.com/business/answer/3474122; platform_primary; snippet-confirmed; re-verify on the live page): share the permanent review short link, reply to reviews, value all reviews, no incentives. AI-drafted replies are acceptable when a human authorizes them (Search Engine Land, 2026-03; trade_press; medium); owner approval on every reply to a 3-star-or-lower review is the house rule.

### Yelp

Yelp asks businesses not to solicit reviews at all, by link, signage, or follow-up; solicited reviews are less likely to be recommended, and compensated or suspicious activity can draw a public Consumer Alert (yelp-support.com/article/Don-t-Ask-for-Reviews; trust.yelp.com/recommendation-software; platform_primary; snippet-confirmed; high; re-verify on the live page). Rule: never solicit Yelp reviews; a passive "Find us on Yelp" badge only; the automated ask links to Google only.

### Required configuration

| Rule | Detail | Basis |
|---|---|---|
| Identical ask to 100% of completed, paid jobs | Same message, same timing, no sentiment pre-screen, no "were you happy?" gate. An internal quality question is allowed only if the public link appears in the same message regardless of the answer | Google gating ban; FTC warning letters flagged gatekeeping |
| One reminder at plus 3 days, then stop | Two sends per job maximum, both logged | judgment |
| Recurring clients asked once | Not after every visit | judgment |
| No incentive, no suggested review text, no staff-name request | See above | Part 465; Google policy; judgment |
| STOP language on every text; no promotion in the ask | Keeps the message informational under the TCPA | 47 CFR 64.1200; see Messaging |
| On-site display labeled "Selected reviews from our Google profile" with a link to all reviews | Curated subsets must not be presented as representative | 16 CFR 465.7(b) |
| No LocalBusiness review or aggregateRating schema for the business's own reviews | Self-serving review markup has produced no star rich results since 2019-09-16; adding it invites a misrepresentation question for no benefit | developers.google.com/search/blog/2019/09/making-review-rich-results-more-helpful; platform_primary; high |
| Referral rewards never mentioned in a review ask | Keeps reward and review in separate messages | Part 465; Google policy |

## Messaging

| Rule | Detail | Source | Tier | Date | Confidence |
|---|---|---|---|---|---|
| PEWC only for advertisement or telemarketing | 47 CFR 64.1200(a)(2)-(3); definitions at (f)(1), (f)(9), (f)(13). Informational texts need prior express consent, which a consumer gives by providing the number for that purpose | ecfr.gov/current/title-47/chapter-I/subchapter-B/part-64/subpart-L/section-64.1200 | government | eCFR mirror 2025-02-06 | high |
| Revocation by any reasonable means; honor within 10 business days; one confirmation text within 5 minutes with no marketing | 47 CFR 64.1200(a)(10)-(12); FCC 24-24 | federalregister.gov/documents/2024/03/05/2024-04563 | government | eff. 2025-04-11 | high |
| "Revoke one program revokes all" limb waived | Waived to 2027-01-31 by DA 26-12 | docs.fcc.gov (order not fetched) | government | 2026-01-06 | medium |
| AI-generated voice is "artificial voice" under the TCPA | FCC 24-17 declaratory ruling. Outbound AI-voice calls require prior express consent (written for marketing) plus identification and opt-out disclosures. An inbound-only bot answers a call the consumer made, so the ruling does not reach it (statutory-text judgment; high) | docs.fcc.gov/public/attachments/FCC-24-17A1.pdf | government | 2024-02-08 | high |
| One-to-one consent rule vacated | Eleventh Circuit, 2025-01-24; the FCC later repealed it. Lead-generation consent still requires clear disclosure of who will contact the consumer | federalregister.gov 2024-19028; Kelley Drye and Wiley summaries | government and trade_press | 2025-01-24 | high |
| Statutory damages | $500 per message or call; up to $1,500 if willful or knowing; class actions | 47 U.S.C. 227(b)(3) | government | statute | high |
| State mini-TCPAs | Florida (Fla. Stat. 501.059), Washington (RCW 19.190), Oklahoma, and Connecticut target telemarketing or commercial texts; informational texts are outside their scope | state statutes; not fetched | government | current | medium |
| CAN-SPAM for commercial email | 15 U.S.C. 7701 et seq.; 16 CFR Part 316. Accurate header and subject, physical postal address, working opt-out honored within 10 business days. Transactional email (confirmations, invoices) is exempt from most requirements but must carry truthful headers. Penalties apply per separate email at the FTC per-violation level | ftc.gov/business-guidance/resources/can-spam-act-compliance-guide-business | government | current; not fetched | medium |
| Carrier registration | Unregistered A2P traffic is blocked; see assets/sms-registration-checklist.md | help.twilio.com A2P 10DLC articles | vendor | 2026 | high |

Templates: assets/missed-call-textback.md (the informational text-back) and assets/receptionist-greeting.md (no outbound AI-voice calls).

## Call recording

### Federal rule and the caller-location rule

- Federal law is one-party consent: 18 U.S.C. 2511(2)(d) lets a party to the communication record absent a criminal or tortious purpose (law.cornell.edu/uscode/text/18/2511; government; high).
- The stricter state's law generally applies to interstate calls. Kearney v. Salomon Smith Barney, 39 Cal.4th 95 (2006), applied California law to calls from Georgia into California, and states that a business that adequately advises all parties at the outset that the call is recorded, and the parties continue, has obtained consent (government; high). Treat every inbound call as potentially all-party.
- Every AI receptionist product surveyed records and transcribes by default; the greeting is the control, not a vendor toggle (judgment; medium; 2026-09-07).

### State table for telephone calls

Tier: government (statute text). Access date 2026-09-07. "Verified via mirror" rows were read on a faithful copy of the statute; all other rows come from the Reporters Committee recording guide (rcfp.org/reporters-recording-guide) and 2026 legal-reference mirrors and must be checked on the official page listed after the table.

| State | Rule for phone calls | Statute | Civil exposure | Confidence |
|---|---|---|---|---|
| CA | All-party. 632 confidential communications; 632.7 any cellular or cordless call, no confidentiality requirement (Smith v. LoanMe, 2021); 631 third-party interception in transit | Penal Code 631, 632, 632.7; remedy 637.2 | Greater of $5,000 per violation or 3x actual damages; no injury required; class actions | High (637.2 verified via mirror) |
| FL | All-party | Fla. Stat. 934.03(3)(d); remedy 934.10 | Actual, not less than $100 per day or $1,000; punitive; fees; third-degree felony | High (934.10 verified via mirror) |
| WA | All-party; consent is deemed obtained when one party announces in a reasonably effective manner that the call is about to be recorded, and the announcement is itself recorded | RCW 9.73.030(3); remedy 9.73.060 | Actual or liquidated $100 per day up to $1,000; fees | High for 030(3) (verified via mirror); medium for 060 |
| IL | All-party for private conversations recorded surreptitiously | 720 ILCS 5/14-2; remedy 14-6 | Actual and punitive; injunction; Class 4 felony | Medium |
| PA | All-party prior consent | 18 Pa.C.S. 5704(4); remedy 5725 | Actual, not less than $100 per day or $1,000; punitive; fees | Medium |
| MD | All-party | Cts. & Jud. Proc. 10-402(c)(3); remedy 10-410 | Actual, not less than $100 per day or $1,000; punitive; fees; felony | Medium |
| MA | "Secret" recording banned; an announced recording is not secret | G.L. c.272 s. 99(C); remedy 99(Q) | Actual or liquidated $100 per day or $1,000, whichever is higher; punitive; fees | Medium |
| MT | Recording without knowledge of all parties | MCA 45-8-213 | Criminal only (fine up to $500 or 6 months); no statutory civil damages | Medium |
| NH | All-party | RSA 570-A:2; remedy 570-A:11 | Actual, not less than $100 per day or $1,000; punitive; fees; class B felony (misdemeanor for a party) | Medium |
| NV | All-party for wire and phone (Lane v. Allstate, 1998) | NRS 200.620; remedy 200.690 | Greater of $2,500 or actual; punitive; fees | Medium |
| CT | Civil statute: written consent of all parties, or verbal notice recorded at the start, or a tone every 15 seconds | Conn. Gen. Stat. 52-570d | Damages, costs, fees (civil only) | Medium |
| DE | Wiretap statute reads one-party (11 Del. C. 2402(c)(4)) but the privacy statute 11 Del. C. 1335(a)(4) reads all-party; treat as all-party | 11 Del. C. 1335; 2402; remedy 2409 | Actual, $100 per day or $1,000; punitive; fees | Low-medium |
| MI | Statute reads all-party; participants may record under Sullivan v. Gray; federal courts split | MCL 750.539c | Gray area | Low-medium |
| OR | Phone calls one-party; in-person conversations all-party | ORS 165.540(1)(a), (1)(c) | Not applicable to phone | Medium |
| All other states and federal | One-party | 18 U.S.C. 2511(2)(d) | Not applicable | High |

No 2025-2026 additions to the all-party list surfaced in any reachable source (medium confidence). Official pages to verify: CA leginfo.legislature.ca.gov (PEN 632, 632.7, 637.2); FL leg.state.fl.us (0900-0999/0934/Sections/0934.10.html); WA app.leg.wa.gov/rcw/default.aspx?cite=9.73.030; IL ilga.gov (072000050K14-6); PA legis.state.pa.us (Title 18, chapter 57, section 5725); MD mgaleg.maryland.gov (gcj, section 10-410); MA malegislature.gov (Chapter272/Section99); MT leg.mt.gov (45-8-213); NH gencourt.state.nh.us (570-A/570-A-11.htm); NV leg.state.nv.us/nrs/nrs-200.html; CT cga.ct.gov/current/pub/chap_925.htm; DE delcode.delaware.gov (Title 11); MI legislature.mi.gov (mcl-750-539c); OR oregonlegislature.gov (ors165.html).

### The California AI-vendor theory

- Ambriz v. Google, N.D. Cal., motion to dismiss denied 2025-02-10: a cloud contact-center AI vendor can be a Penal Code 631 wiretapper if it merely has the capability to use call data for its own benefit, and the deploying business is named alongside the vendor (Goodwin and Paul Hastings alerts, Feb 2025; courthousenews.com order PDF; industry_research; medium). The capability test is under pressure after the Ninth Circuit's Popa decision per Dec 2025 commentary, but it remains the pleading standard (trade_press; medium).
- In re Otter.AI Privacy Litigation, N.D. Cal. No. 5:25-cv-06911, consolidated 2025-10-22: recording without all-party consent and use of recordings for model training; motion-to-dismiss briefing ongoing as of spring 2026 (npr.org 2025-08-15; courtlistener.com docket 71118721; trade_press; medium). Generic "this call may be monitored" notices are being challenged as insufficient when a third-party AI is on the line.
- SB 690 (a commercial-business-purpose exemption from 631, 632, and 637.2 damages) passed the Senate 35-0 on 2025-06-03 and was held in the Assembly as a two-year bill; do not plan on a statutory fix in 2026 (leginfo.legislature.ca.gov bill 202520260SB690; government; medium).
- Design consequence: the greeting names the third-party AI provider, the vendor contract bars model-training use, and the greeting itself is in the recording. See assets/receptionist-greeting.md.

## AI disclosure statutes

| Statute | Who it reaches | Duty | Status | Source | Tier | Confidence |
|---|---|---|---|---|---|---|
| Cal. Bus. & Prof. Code 17941 | Bots communicating "online" (public website or app) with intent to mislead in order to incentivize a purchase; a phone voice bot is arguably not "online," a website chat widget is | Clear and conspicuous disclosure that it is a bot; disclosure is a complete defense; no private right of action | In force since 2019-07. AB 410 (2025), which would require disclosure before any interaction, has unverified status | leginfo.legislature.ca.gov BPC 17941 (verified via bill-text mirror) | government | high |
| Utah Code 13-72-301 et seq. | Any supplier using generative AI with a consumer; no size threshold | Clear and conspicuous disclosure when asked or prompted; proactive disclosure only for regulated occupations and high-risk interactions; fines cited up to $2,500 per violation (one tracker cites $5,000; verify) | SB 149 eff. 2024-05-01; SB 226 eff. 2025-05-07; sunset 2027-07-01 | le.utah.gov/xcode/Title13/Chapter72/13-72.html | government | medium |
| Maine LD 1727 | Any person using an AI chatbot, text or voice, in trade or commerce with a Maine consumer; no size threshold | Clear and conspicuous notice that the consumer is not talking to a human; AG-enforced under the Unfair Trade Practices Act | Eff. 2025-09-23 | legiscan.com/ME/text/LD1727/id/3255481 | industry_research | medium |
| Colorado SB 24-205, s. 6-1-1704 | Any deployer of an AI system intended to interact with consumers | Disclose that the consumer is interacting with AI unless obvious; the high-risk duties do not apply to a scheduling bot | Eff. 2026-06-30 (moved by SB25B-004); AG enforcement stayed by federal court order 2026-04-27 pending rulemaking in xAI v. Weiser; amendment SB26-189 pending | leg.colorado.gov/bills/sb25b-004; SB26-189 fiscal note 2026-05-06 | government | medium |
| Not applicable to this use case | Cal. SB 243 (companion chatbots, eff. 2026-01-01); N.Y. S-3008C Part U (AI companions); Texas TRAIGA HB 149 (government and health care); Utah HB 452 (mental-health chatbots) | None | Various | capitol.texas.gov HB 149 text; 2026 law-firm trackers | industry_research | medium |

Rule: say "automated assistant" or "AI" in the first sentence of every bot interaction, voice or text, and answer truthfully when asked. It costs nothing and closes CA, UT, ME, and CO at once. An AI self-identification does not satisfy any recording-consent statute; that is a separate sentence (judgment; high).

## Customer data

### What applies to a small home-service business

| Rule | Applies? | Detail | Source | Tier | Confidence |
|---|---|---|---|---|---|
| CCPA/CPRA and other state comprehensive privacy laws | No | CCPA threshold is over $26,625,000 revenue (2025-2026 CPI-adjusted), or 100,000 consumers or households, or 50% of revenue from selling data (Cal. Civ. Code 1798.140(d)); other states use 100,000-consumer-type thresholds (DE 35,000) | oag.ca.gov/privacy/ccpa | government | high |
| FTC Act s. 5 reasonable security | Yes, every business | Unreasonable data security is an unfair practice (FTC v. Wyndham, 3d Cir. 2015); misrepresenting privacy practices is deceptive. Practical standard: FTC Start with Security, including "make sure your service providers implement reasonable security measures," in writing, and verify | ftc.gov/business-guidance/resources/start-security-guide-business | government | high |
| State UDAP statutes | Yes | Parallel authority for state attorneys general | state statutes | government | high |
| Breach-notification statutes (all 50 states, DC, territories) | Yes, but rarely triggered | Statutory "personal information" is typically name plus SSN, driver's license, or financial account number with access code; phone, email, and address alone generally do not trigger notice. MA 201 CMR 17.00 requires a written program only if you hold MA residents' statutory PI; NY SHIELD Act requires reasonable safeguards | ncsl.org/technology-and-communication/security-breach-notification-laws | government | medium |
| Cal. Civ. Code 1798.81.5 general duty of reasonable security | Yes, if California customers | Applies even when CCPA does not | leginfo.legislature.ca.gov (not fetched) | government | medium |
| Negligence | Yes | Leaked entry instructions or alarm codes followed by a burglary is an ordinary negligence claim, not a statutory one; this is the highest-harm data the business holds | judgment | judgment | high |
| HIPAA, GLBA, COPPA, cross-border transfer rules | No | None applies to a residential cleaning business sending contact data to a vendor or an offshore VA | judgment | judgment | high |

### Controls

- Confidentiality and data-handling clause in every VA and vendor agreement (minimum terms below).
- Role-limited access in the field-service app: the VA and the bot see name, phone, email, service address, and request details only.
- Entry instructions, alarm, gate, and lockbox codes live in owner-only or crew-only fields, never in a field visible to a VA, a bot, a marketing form, or an export.
- Card numbers exist only in the app's PCI-scoped payment module, never in notes, texts, or transcripts.
- No downloads, exports, CSVs, screenshots, or photos of customer records; no copying into personal email, chat apps, spreadsheets, or unapproved AI tools.
- Unique login with 2FA per person; access only from registered devices; same-day revocation at the end of an engagement.
- The privacy policy that carrier registration requires must accurately disclose sharing with service providers (assets/sms-registration-checklist.md).

### Offshore VA enforceability

A confidentiality agreement with an individual abroad is hard to enforce. Contract through a US-based agency or employer-of-record that employs the VA, or accept that the real control is technical (role-limited access, no export) rather than legal (judgment; high; 2026-09-07). No US filing, registration, or cross-border transfer rule applies to an unregulated business sending contact data offshore (judgment; high).

### Minimum contract terms for a VA, and via a data-processing addendum for an AI vendor

Confidentiality surviving termination; data used only to perform assigned tasks inside the app; no download, export, screenshot, photo, or copy to any personal device, email, chat app, or unapproved AI tool; unique login with 2FA, no shared credentials, registered devices only; role-limited permissions with no access to entry instructions, alarm or gate codes, or payment data; no subcontracting; incident notice within 24 hours; return or destroy on termination and same-day access revocation; audit right; governing law and venue in the owner's state; indemnity and liquidated damages. Public models: the FTC Safeguards Rule provider-oversight clause, 16 CFR 314.4(f) (ecfr.gov; government; medium; the rule itself does not apply to this business), and the FTC Start with Security service-provider lesson. No free government VA confidentiality template surfaced in the research; counsel can produce a two-page agreement from this list in about an hour (judgment).

## Worker classification

| Test or rule | Substance | Status | Source | Tier | Confidence |
|---|---|---|---|---|---|
| IRS common-law control test | Behavioral control, financial control, relationship of the parties; no single factor decides. Form SS-8 requests a determination; Section 530 relief and the Voluntary Classification Settlement Program cover past misclassification | Current | irs.gov/businesses/small-businesses-self-employed/independent-contractor-self-employed-or-employee | government | high |
| DOL FLSA independent-contractor rule | The 2024 economic-reality rule (29 CFR part 795, eff. 2024-03-11) remains in the CFR; Field Assistance Bulletin 2025-1 (2025-05-01) told investigators to stop applying it; a rescission NPRM was published 2026-02-27, comments closed 2026-04-28, final rule pending. Private plaintiffs can still cite the 2024 rule, and even the older core-factors test treats a cleaner doing the company's core service on company scheduling as an employee | Pending | dol.gov/agencies/whd/flsa/misclassification/2026rulemaking | government | medium |
| California ABC test | Labor Code 2775 (AB 5, Dynamex): employee unless (A) free from control, (B) work outside the hirer's usual course of business, and (C) an independently established trade. Janitorial services are excluded from the referral-agency exemption (Labor Code 2777). Willful misclassification $5,000-$25,000 per violation (Labor Code 226.8) | Current | dir.ca.gov/dlse/faq_independentcontractor.htm; leginfo.legislature.ca.gov LAB 2777 | government | medium |
| New Jersey ABC test | N.J.S.A. 43:21-19(i)(6); Hargrove v. Sleepy's (2015); proposed N.J.A.C. 12:11 (April 2025) codifies that cleaning work for a cleaning company fails prong B; stacked penalties | Proposed rule; adoption unverified | nj.gov/labor/myworkrights/worker-protections/independent_contractors | government | medium |
| Massachusetts ABC test | M.G.L. c.149 s. 148B; prong B requires work outside the employer's usual course; mandatory treble damages plus fees; officers personally liable | Current | mass.gov/info-details/independent-contractor-law | government | medium |

Rules that follow (judgment; high; built on the sources above):

- W-2 is the safe default for a cleaner who cleans homes the company books, prices, and schedules, in every state. Paying per job instead of per hour does not change the answer; per-job pay for W-2 staff is lawful only if total pay over total hours, including drive time, clears minimum wage, and overtime uses the regular rate.
- A 1099 cleaner is defensible only if they run their own insured cleaning business: own entity or DBA, own liability insurance, other clients, own schedule and methods, own equipment, the right to send substitutes, and invoices at their own price. In ABC states the hiring company must also not be in the business of selling cleaning, which a cleaning company cannot satisfy.
- Drive time between homes is paid time (29 CFR 785.38; government; high), which is why labor cost per billable hour runs about 1.5-1.7x wage (judgment in the research corpus).
- The same trap applies to the VA. Scope the engagement as deliverables plus a service-level agreement, not hours under supervision; keep a W-9 on file for a US contractor or a W-8BEN for a foreign individual performing services outside the US. The 1099-NEC reporting threshold changes for payments made after 2025-12-31 (research entry; medium; verify on irs.gov).

## Local Services Ads rules

| Rule | Detail | Source | Tier | Date | Confidence |
|---|---|---|---|---|---|
| Screening is a prerequisite to serve, not a ranking dial | Business registration proof, general liability insurance, and third-party background checks on the owner and the field-worker roster; requirements vary by category and state. Submit on Day 0 through the LSA portal; vendors report 1-5 weeks end to end (vendor estimate) | support.google.com/localservices/answer/12174778; /answer/6230381 | platform_primary | snippet-confirmed 2026-09-07; re-verify on the live page | medium |
| Badge change | Google Guaranteed, Google Screened, and License Verified were replaced by a single Google Verified badge on 2025-10-20; the consumer money-back guarantee was discontinued; ranking unaffected | blog.google/products/ads-commerce/google-verified-august-2025 | platform_primary | 2025-10-20 | medium |
| Ranking is an auction | Bid or budget times the estimated likelihood of producing a lead: responsiveness to calls and messages, ratings and review count, relevance, enabled contact options, completed verification. "Minimum 5 reviews to show" is not documented by Google | support.google.com/localservices/answer/7549347; /answer/7527305 | platform_primary | snippet-confirmed; re-verify on the live page | medium |
| Stated hours equal answered hours | Reported effective 2026-10-01, a missed call during stated business hours where the caller stays on the line more than 20 seconds may be billed as a valid lead; an IVR key-press starts the clock; follow-up contact within 15 days counts as one interaction. Set LSA hours to the hours a human or the receptionist actually answers | support.google.com/localservices/answer/15100654; Search Engine Land 2026-08 | platform_primary and trade_press | 2026-08 report; primary notice not fetched | medium; re-verify before launch |
| Disputes are automated credits | Since July-August 2024 manual disputes were replaced by automated lead credits with a feedback form; "job type not serviced" and "geo not serviced" are no longer creditable | support.google.com/localservices/answer/15100654 | platform_primary | 2024-08 | high on substance; snippet-confirmed |
| Charged-lead rule for missed calls | A missed call returned by text, email, or call is a charged lead; one never returned is not charged but hurts responsiveness | Same | platform_primary | 2024-08 | high on substance; snippet-confirmed |
| Performance Max pay-per-lead migration | UNVERIFIED. Reported phase 1 August 2026 for select US home-service advertisers including house cleaning; service-area businesses reported for late 2026; new pay-per-lead campaigns reportedly cannot yet be created inside Google Ads; about 14 days notice; historical LSA reports reportedly do not migrate | support.google.com/google-ads/answer/17213585; Search Engine Journal 2026-08 | platform_primary (snippet only) and trade_press | 2026-08 | low; treat as unverified |
| "12% LSA fee" | Not found in any Google documentation; refuse | none | judgment | 2026-09-07 | high |

Rules that hold regardless of migration status: sign up and submit screening via the LSA portal; cap LSA as a budgeted experiment with a numeric stop condition; export the LSA lead and billing reports monthly; state only the hours that are actually answered; respond to every message lead, even to decline.

## Regulatory motion to re-check in Q1 2027

| Item | Why it matters | What to check |
|---|---|---|
| FTC civil penalty figure at 16 CFR 1.98 | Adjusted every January | The January 2027 figure; update the "over $50,000" phrasing if it crosses a round number |
| FCC "revoke-all" waiver (DA 26-12) | Expires 2027-01-31 | Whether revoking one program must revoke all; adjust STOP handling across campaigns |
| FCC AI-call disclosure NPRM (FCC 24-84) | Would reach outbound calls | Whether a final rule was adopted; the configuration already bans outbound AI-voice calls |
| Utah AI Policy Act | Sunsets 2027-07-01 | Renewal or replacement |
| Colorado SB 24-205 | Enforcement stayed 2026-04-27; SB26-189 amendment pending | Rulemaking status; whether the consumer-disclosure duty changed |
| California AB 410 | Would require bot disclosure before any interaction | Enacted or not; whether it reaches telephone bots |
| California SB 690 | Would exempt commercial-purpose recording from CIPA damages | Two-year bill status |
| Ambriz and Otter.ai dockets | Define the third-party-AI recording theory | Rulings on the capability test |
| DOL independent-contractor rule | Rescission NPRM pending | Final rule; NJ N.J.A.C. 12:11 adoption |
| LSA to Performance Max migration | Reporting and bidding change | Whether the account migrated; export history before it does |
| LSA missed-call billing | Reported effective 2026-10-01 | Confirm on the live help page; check the first billed month for missed-call charges |
| Google review policy page | Snippet-confirmed only | Re-read the live page; confirm nothing about incentives or gating changed |
| A2P 10DLC fees and timelines | Vendor figures, low confidence | Current fees and review times on the app's page |
| All-party recording state list | No 2025-2026 additions surfaced | Any new statute or amendment |

## Consult counsel

This file is guidance, not legal advice, and most of its primary sources were confirmed only through mirrors or search excerpts. Before the receptionist takes a live call, before the first automated text, before any worker is paid as a contractor, and before any customer data reaches an offshore VA, have counsel licensed in the business's state confirm the greeting, the text templates, the VA agreement, and the classification decision. One fixed-fee hour is a reasonable scope for all four at this business size (judgment).
