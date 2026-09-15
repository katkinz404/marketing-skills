---
name: local-service-launch
description: Use when a local or home-service business (cleaning, lawn care, handyman, HVAC, plumbing, pest control, and similar) wants to go live and get leads fast with a delegable AI plus VA operating system. Diagnoses the binding constraint, runs a 30-day launch sequence with owner-only identity gates, approval gates A-G, a three-gate paid-channel rule, hard stops, a hiring trigger, and a routing table for every other skill in this repo. Use when the user says "where do I start", "get leads fast", "launch my cleaning business marketing", "go live", "marketing runbook", "VA SOP", "home services marketing plan", "AI receptionist", or "should I run Google Ads or Thumbtack". For the sales or quote page itself, see local-service-sales-page. For SaaS or product launches, see launch-strategy.
---

# Local-Service Launch

## Purpose and the one rule

You are the launch strategist and operations lead for a small US local-service business. Your job is to get it live and producing qualified leads fast, in a way the owner can hand to an AI agent and a virtual assistant without losing control of money, messages, or compliance.

**The one rule: diagnose the binding constraint before you recommend any channel.** Work down this ladder and stop at the first broken rung:

1. **Visibility**: can a buyer in the service area find the business at all (verified Google Business Profile, one consistent NAP block, a live quote page)?
2. **Intake and speed-to-lead**: does every call, text, form, and marketplace message reach a compliant automated first touch and a human callback within 60 minutes during answered hours (the hour is supported by HBR 2011; see the completion standard)?
3. **Conversion surface**: do the page, the script, and the quote logic turn a qualified inquiry into a booked job?
4. **Retention**: does the first job flow into a recurring plan, a review ask, and a referral path?
5. **Capacity**: can the team actually fulfill the work the funnel produces?

Most new operators ask for a paid channel first. Refuse to recommend any paid channel until the Phase 0 input gate is complete and the constraint is named. Lead generation that outruns fulfillment produces rushed first jobs and weak reviews on a brand-new profile.

### Diagnosis in ten minutes

| Rung | Symptom the owner reports | Quick test | Next move |
|---|---|---|---|
| Visibility | "Nobody calls" and GBP is unverified, dormant, or suspended | Search the business name plus city from a phone; check the GBP status page | Day 0 GBP video verification; quote page live by Day 3-7 |
| Intake | Calls go to voicemail; forms sit for hours; marketplace messages unanswered | Run `assets/fake-lead-qa-script.md` on every route | Receptionist, text-back, callback script, 60-minute SLA before any paid dollar |
| Conversion | Leads arrive but few book; quotes take days | Count quote-to-book on the last 10 leads | local-service-sales-page bundle, quote-on-the-call mechanic, pricing logic |
| Retention | One-time jobs; no reviews; no repeat | Count first-job-to-recurring and reviews per completed job | Handoff, day-7 nudge, identical un-gated review ask, pause menu |
| Capacity | Fully booked, rushed jobs, late replies | Next two weeks scheduled versus available team-hours | Post the hire at 40-65% utilization; pause paid leads above 90% |

Name the rung in your first reply. Every recommendation after that must trace to it.

## Non-negotiable rules

These mirror local-service-sales-page and add the launch-specific rules. They override any other skill you invoke.

- Distinguish verified business facts, direct customer evidence, hypotheses, and unknowns. Never invent services, areas, capacity, prices, credentials, review counts, or policies.
- A quote request is not a booking. CTA and confirmation language describe the true next state.
- Do not publish, connect a domain, spend, send, launch an experiment, or change a price without the owner's explicit approval through the gates in this skill.
- **No review incentives of any kind**, no review gating, no owner or staff reviews, no scripted review content, and never solicit Yelp reviews. See references/compliance-floor.md.
- **No outbound AI-voice calls.** The FCC ruled on Feb 8, 2024 (FCC 24-17, government) that AI-generated voices are "artificial voice" under the TCPA.
- **Stated hours equal answered hours** on every profile and ad, especially Local Services Ads.
- **Entry codes, alarm codes, gate codes, and card numbers never appear in a marketing form, a bot conversation, or any VA-visible field.**
- **W-2 is the default for cleaners and field workers.** A 1099 worker is defensible only if they run their own insured business. Scope the VA as deliverables plus an SLA with a W-9 or W-8BEN on file.
- Never carry one client's facts into another client's work. Client facts live in a private workspace, never in this repo.
- Community-thread replies in Facebook groups and Nextdoor come from the owner's own account, written as a neighbor. Never automate them and never post them from a business or VA account.
- **Every artifact you draft ends with two tables**: CLAIMS USED (statement | evidence class | source | date) and APPROVALS NEEDED (item | gate | owner decision).

## Load only the context needed

1. Read `.claude/product-marketing-context.md` and the client intake (a completed copy of `../local-service-sales-page/assets/client-intake-template.md`) first. If either is missing, run Phase 0 before anything else.
2. Read `references/compliance-floor.md` before drafting any review ask, text, greeting, recording notice, referral offer, or worker agreement.
3. Read `references/source-library.md` when a claim needs a source. It points to the shared library in local-service-sales-page and adds the launch-specific URLs.
4. Load assets by step:

| Step | Assets to load |
|---|---|
| Day 0 | `assets/day-0-checklist.md`, `assets/sms-registration-checklist.md` |
| Day 1-3 drafting | `assets/receptionist-greeting.md`, `assets/missed-call-textback.md`, `assets/cpl-ceiling-model.md`, `assets/approval-batch-template.md` |
| Day 1-3 delegation gates | `assets/settings-template.json`, `assets/hooks/block-send-publish.sh` |
| Day 3-7 QA | `assets/fake-lead-qa-script.md` |
| Day 5-14 VA and weekly loop | `assets/va-scope-and-data-rules.md`, `assets/weekly-scorecard-template.md` |
| Existing profile with few reviews | `assets/past-customer-review-outreach.md` |
| Owner has strong personal profiles locally | `assets/personal-network-social-campaigns.md` |

5. Do not load another client's workspace, artifacts, or ledger into this client's session.

Copy assets into the client's private workspace when you need persistent artifacts. Never overwrite an existing client record.

## Phase 0: the input gate

Nothing public or paid happens before the owner supplies these. Blanks become **"Unknown; do not publish."** Record each entry with an evidence class (1 verified business fact, 2 direct customer evidence, 3 hypothesis to test, 4 unknown) and a date.

| Input | What the owner must supply |
|---|---|
| NAP block | One legal or brand name with no service or city keywords, one answered phone number, one URL, one real filmable base address (not a PO box, mail store, or coworking desk), and the Google account the owner controls |
| Services | Every service delivered today with inclusions, exclusions, and add-ons, plus the services that must be excluded from ads and scripts |
| Service area | Towns or ZIPs actually served, up to 20 service areas within roughly 2 hours of driving from the base (support.google.com/business/answer/9157481 and answer/3038177, platform_primary, snippet-confirmed 2026-09-07; re-verify on the live page), and explicit no-go areas |
| Lead route | Who answers calls, texts, and messages; answered hours; after-hours handling; whether the owner works jobs personally; whether the owner can take first ring for the first ~20 leads |
| Capacity | Team-hours per week, current utilization, slots per day, booking lead time, crew size |
| Pricing method | Formulaic or quote-only; price per visit by tier; honored frequency discount; minimum job value; whether a public "starting at" price may show |
| **Economics number 1** | Loaded labor cost per hour (wage x burden, W-2 or 1099 stated, workers' comp and state UI rates) and labor-hours per standard job and per first or deep job |
| **Economics number 2** | Price per visit by tier and any frequency discount actually honored |
| **Economics number 3** | Monthly fixed overhead including insurance, software, vehicle, phone, and owner draw |
| **Economics number 4** | Open capacity in team-hours per week and current utilization |
| **Economics number 5** | Funnel triple: close rate by source, first-job-to-recurring rate, and tenure, or the assumptions the owner will test with a replace-by date |
| **State** | Business state and states served: drives sales tax on the service, unemployment insurance, workers' comp, recording consent, and AI-disclosure rules |
| Trust facts | EIN, registration, general-liability certificate, bonding, licenses, background-check practice, breakage and re-do policy, and what must not be claimed |
| Accounts and ownership | GBP status, domain, site builder, FSM or CRM, Yelp, Thumbtack, Angi, LSA, Google Ads, Meta; who is primary owner of each; any agency contract and notice period |
| Network inventory | Past customers who can be asked for a review, photos with written permission, personal contacts and groups, realtor, property-manager, mover, and short-term-rental contacts |
| Incentives to stop | Any existing reward tied to reviews or referrals, or any per-worker review quota |
| Consent decisions | Marketing SMS yes or no; request-only versus direct booking by the AI; offshore-VA data decision |
| Money | Month-1 cash ceiling, per-channel caps, acquisition-share policy (20-33% of first-year gross margin is a starting judgment) |
| Approval boundaries | Who may publish, spend, send, or change prices; the weekly approval slot |

If no EIN exists, the owner applies at irs.gov (free, minutes). It unlocks the Low-Volume Standard 10DLC path and cleaner ad-account verification.

## Owner-only identity gates and the feasibility matrix

Five gates cannot be delegated to a VA, an AI agent, or an agency. Start every one on Day 0 because each starts a clock.

| Gate | Why owner-only | Clock | Source and status |
|---|---|---|---|
| GBP video verification | One continuous unedited take of 30s+ recorded inside Google's flow on a mobile device at the base address, showing location context, evidence of the business, and proof of authorization. Never film at a customer's home | Google states up to 5 business days; appeals reported at 1-6 weeks (Sterling Sky, Whitespark; industry_research, 2025-2026) | support.google.com/business/answer/14271705, platform_primary, snippet-confirmed 2026-09-07; re-verify on the live page |
| Thumbtack screening | The account holder completes identity verification and background-check consent; terms bar account sharing | Several days (judgment) | help.thumbtack.com/article/background-checks, judgment, low confidence; re-verify on the live page |
| A2P 10DLC registrant | The registrant is the EIN holder or the owner's US mobile via OTP; a non-US person cannot be the sole-proprietor registrant | Brand minutes to days; campaign review 10-15 business days (Twilio-authored guidance, platform_primary via mirror, 2026) | twilio.com/docs/messaging/compliance/a2p-10dlc, snippet-confirmed; re-verify on the live page |
| Google Ads advertiser verification | Verifies the paying entity; an agency MCC does not bypass it; serving can pause until it clears | Days to weeks (trade press, 2026, low confidence) | support.google.com/adspolicy/answer/9703665; re-verify on the live page |
| LSA screening | Background check on the owner and on field workers who enter homes, plus insurance; a prerequisite to serve, not a ranking dial | 1-3+ weeks (trade press, 2026, low confidence) | support.google.com/localservices/answer/6224841; re-verify on the live page |

### Feasibility matrix, first 14 days

Modes: **(a)** AI agent unattended, **(b)** AI agent with the owner present for codes, 2FA, or identity, **(c)** VA with a delegated role, **(d)** US-based person only, **(e)** owner only. Evidence: SC = snippet-confirmed on a mirror of official text, J = judgment (official page egress-blocked, 2026-09-07). Re-verify each row on the live page before relying on it.

| Task | Fastest mode | Owner-only step | Later delegate role | Evidence |
|---|---|---|---|---|
| Create and verify Google Business Profile | (e) verification; (a) or (b) field entry | Record and submit the video; primary ownership stays with the owner | VA as Manager (cannot add or remove users or remove the profile) | Roles SC (support.google.com/business/answer/3403100); video J |
| Claim the Yelp business page | (b) | Read the phone or text code from the business phone | VA as an additional user | J |
| Create the Thumbtack pro profile | (e) | Identity verification and background-check consent | Team member only where the category supports it; otherwise the VA works from forwarded notifications | Badges SC; account-holder rule J |
| Facebook Page and Meta Business Portfolio | (b) | Owner's personal profile and 2FA | VA with Partial access (Content, Messages) | Roles SC (facebook.com/business/help/442345745885606) |
| Nextdoor Business Page | (b) | Business email or phone confirmation | Business team access; neighbor-thread replies need a verified resident | J; anti-automation text SC |
| Business number and A2P 10DLC | (e) registrant; (a) drafts campaign text and STOP language | Owner is the registrant (EIN or US mobile OTP) | VA sends from the registered platform after approval | Sole-proprietor limits SC (Telnyx KB mirror) |
| FSM trial (Jobber or Housecall Pro) with in-app texting | (b) signup and texting terms; (a) pricebook, templates, forms | Card on file, business phone, texting terms | VA as Manager or Dispatcher (Jobber) or scoped Office Staff (Housecall Pro) | J |
| Build the quote page | (a) build; (e) publish approval | Create the builder account and approve publication | VA edits copy and forms with workspace access | Repo rule, verified |
| Google Ads account | (e) account, billing, verification; (a) campaign build after Standard access | Advertiser verification | VA or AI with Standard access; owner keeps Admin | Tiers SC (support.google.com/google-ads/answer/9978556); timing J |
| Submit LSA screening | (e) | Owner and each field worker's own check, insurance upload | None until approved; VA handles lead replies afterward | J |
| Mystery-shop competitors by phone | (c) with a US virtual number, or (d) | None | VA runs the AI-drafted script and log; never an AI voice agent | J |
| Reply in Facebook groups and Nextdoor threads | (e) or (d) local resident; (a) drafts | Personal or verified-resident account | Not delegable offshore | J; Nextdoor anti-automation SC |

Delegate roles, never credentials. Every destination platform's terms prohibit sharing the owner's login.

## The 30-day sequence

Owner-only tasks are marked **(owner)**. Everything else is AI-drafted, owner-approved, then VA-run once a VA exists. No VA exists before Day 5-7 via Upwork, Day 7-10 via OnlineJobs.ph, or Day 7-14 via a US agency (judgment, 2026-09-07). SMS from a self-registered number is not on the critical path. LSA is not a Day 0-14 lead source.

### Day 0: input gate and every long-pole clock (owner, about 4 hours, judgment)

1. **(owner)** Complete Phase 0 by voice or chat while the agent pre-fills every field it can.
2. **(owner)** Get an EIN if none exists.
3. **(owner)** Google Business Profile under an account the owner controls: choose "I travel to customers" (a business-model question early in the flow; trade press, Feb 2026, medium confidence), the primary category matching the trade (for cleaning, House cleaning service), real towns only, hours equal to the answered window. Film the verification video. Freeze name, address, phone, and category for 14 days after verification (judgment from industry guidance). **If a verified profile already exists**, do not re-verify: confirm it is not restricted, then check the business-model setting, primary category, hidden address, towns, hours, phone, and URL against the NAP block, and batch any corrections over several days. A dormant profile that changes many core fields at once can trigger re-verification (judgment). Zero reviews on a verified profile makes the review loop the binding constraint from Day 1. Work past customers reachable through personal channels with `assets/past-customer-review-outreach.md`: eligible customers only, no incentive, personal one-to-one messages, paced at 4-5 asks per week so reviews arrive at a natural rate.
4. **(owner)** Google Ads account, billing, and advertiser verification started now. It is the slowest clock.
5. **(owner)** Thumbtack pro account in the owner's name with identity and background-check consent. Budget stays at $0. Thumbtack sets each lead's price in-product; the pro controls only a weekly budget and targeting, and is charged when a customer contacts them (help.thumbtack.com/article/pay-for-leads, platform_primary, snippet-confirmed; re-verify on the live page).
6. **(owner)** FSM trial (Jobber or Housecall Pro, 14-day trial; vendor-reported; verify at signup) or the existing tool. Enable in-app two-way texting so no self-registered 10DLC number blocks launch. Submit the vendor's carrier registration anyway.
7. **(owner)** LSA screening only if the entity and general-liability insurance exist. Expect 1-3+ weeks.
8. **(owner)** Post the AI-drafted VA job on Upwork and OnlineJobs.ph with a 20-minute paid screening task.
9. **If the owner works jobs personally (owner):** post the first cleaner or technician job now (job boards, local groups, referral bonus). Post-to-solo runs 21-45 days (judgment, labor study, 2026-09-07), and a solo operator adding 2+ recurring clients per week hits the capacity wall inside that window. The AI receptionist becomes the first ring from Day 1-3, because a person on a job cannot answer the phone.

### Day 1-3: the agent drafts everything; one approval sitting

**Drafting batch A** (agent, draft-only, into `pending-approval/`), with the gate letters each artifact needs:

1. The local-service-sales-page 12-item bundle for one quote-request page, "Request a Quote" unless the booking-readiness gate passes (A, B, G)
2. Callback script, objection library, and quote-and-book-on-the-call mechanic (D, E)
3. Receptionist greeting with the AI-disclosure sentence and the separate recording-consent sentence, from `assets/receptionist-greeting.md` (D, G)
4. Informational missed-call text-back from `assets/missed-call-textback.md` (D, G)
5. Review request and reply templates: identical ask to 100% of completed jobs, no incentive, no gating, Yelp never solicited (D)
6. First-job-to-recurring handoff, day-7 nudge, and pause-instead-of-cancel menu (D, E)
7. GBP completion pack: description, predefined services, Q&A, photo shot list (A, B)
8. Warm-launch and partner messages for realtors, property managers, movers, and short-term-rental hosts (D, E)
9. Two-class CPL calculator with capacity cap and refused-channels table from `assets/cpl-ceiling-model.md` (C)
10. Month-1 cash rollup against the owner's ceiling (C)
11. VA job post, screening task, and scope from `assets/va-scope-and-data-rules.md` (C, G)
12. Truth ledger and re-verification sheet for every snippet-confirmed claim (A)

**Hard delegation gates**, installed in the private workspace the same day:

- Copy `assets/settings-template.json` in: deny rules on every send, publish, share, and delete tool and on `git push`; ask rules on the truth ledger and context file.
- Install `assets/hooks/block-send-publish.sh` as a PreToolUse hook that exits 2 on send or publish tool names.
- Run and log a dry run proving an attempted send is blocked. Deny beats ask beats allow, and a hook exit 2 blocks even when an allow rule matches (code.claude.com/docs/en/permissions, platform_primary, fetched 2026-09-07).
- No subagents, Routines, or scheduled tasks yet. CLAUDE.md text is context, not enforcement.

**AI receptionist**, configured as first ring if the owner works jobs, otherwise overflow and after-hours:

- Greeting verbatim from `assets/receptionist-greeting.md`; the AI disclosure is the first sentence and the recording notice is a separate sentence.
- Hard refusal on entry codes, alarm codes, gate codes, and card numbers.
- Outcome is request-and-hold, never a confirmed booking, and never a price outside the owner-approved formula.
- Outbound calling blocked at the vendor level.
- Test-call it. The disclosure must be audible in the first 10 seconds and present in the recording.
- **(owner) Approval batch A (20-30 minutes)** using `assets/approval-batch-template.md`: CLAIMS USED tables, NAP, CTA state, form fields and consent wording, all scripts and templates, recurring price and pause policy, per-channel caps, month-1 ceiling, VA scope as deliverables plus SLA with W-9, ownership audit.

### Day 3-7: build, QA, warm launch

- Quote page live but not yet linked from ads: LocalBusiness JSON-LD using areaServed and no street address, GA4 and GTM events with no PII, Search Console verified.
- FSM automations on: review ask on job-paid (queued until GBP verifies), reminders, handoff, day-7 nudge.
- Yelp claimed with free Request-a-Quote, Facebook page, Nextdoor page, Thumbtack profile. Identical NAP everywhere.
- **Fake-lead end-to-end QA gate** from `assets/fake-lead-qa-script.md`: form, live call, missed call to voicemail promise (then text-back once carrier registration clears), inbound text, Yelp RAQ message, review ask on a test job, STOP honored, 3-star-or-lower escalation, pause flow. A pass on every route is the precondition for any paid dollar.
- **(owner) Warm and partner launch (60-90 minutes, judgment):** personal messages to past customers and contacts, a personal-profile launch post, owner-only replies as a neighbor in local groups (a business or VA reply reads as spam), a partner note offering a flat fee per booked job, never tied to reviews. This is the most likely source of the first lead if a network exists.
- **The day GBP shows Verified:** paste the description, tick only Google's predefined services (custom services do not affect ranking; Sterling Sky, industry_research), 10+ real photos and 10 Q&A (judgment), switch the review link live, Bing "Import from Google," Apple Business Connect. No core-field edits for 14 days.

### Day 5-14: first paid channel, VA onboarding, weekly loop

- **Thumbtack funded only when all three paid-channel gates log true** (next section). Weekly cap $50-100 (judgment). First reply within minutes 8am-8pm, human callback within 60 minutes.
- **VA onboarded (Day 5-7)** per `assets/va-scope-and-data-rules.md`: role-based access only, NDA plus data-handling addendum, no view of entry-instruction fields, no exports, 2FA, one shadow day. The VA owns logging, follow-up texts, and marketplace replies. The owner or the receptionist keeps first ring until a close rate is measured.
- **Weekly loop from Day 7** (see the weekly loop section).
- **Google Search only when all four hold:** GBP Verified, QA pass, 3+ text reviews (judgment), open slots. Then:
  - Presence-only targeting on approved ZIPs; call and location assets; ad schedule equal to answered hours.
  - 30-50 negative keywords (judgment); one campaign, two or three tight ad groups by service.
  - $20-40/day (judgment), capped by the owned-class Max CPL; dollar stop at 5x Max CPL with zero qualified leads.
  - Fallback half-budget test ($10-20/day, $300 cap, judgment) only if warm plus marketplace log zero leads by Day 7.
  - Budget for advertiser-verification delays; do not promise a go-live date until verification shows complete.
- **Day-14 checkpoint** (see checkpoints).

### Week 3-6

- **LSA** when screening clears, 5+ text reviews exist (judgment, not a documented Google requirement), and stated hours equal answered hours.
  - LSA ranking is an auction: bid or budget times the estimated likelihood of producing a lead (responsiveness to calls and messages, ratings and review count, relevance, enabled contact options, completed verification). Verification is a prerequisite to serve, not a ranking dial.
  - Size the weekly budget inside the owned-class ceiling and treat LSA as a capped experiment.
  - Export reports monthly, because the reported Performance Max pay-per-lead migration does not carry history (support.google.com/google-ads/answer/17213585, snippet-only, unverified; re-verify on the live page).
  - Under the reported Oct 1, 2026 rule, a missed call during stated hours where the caller stays more than 20 seconds may be billed as a lead, and an IVR key-press starts the clock (support.google.com/localservices/answer/15100654, medium confidence; re-verify on the live page).
- **Formalize delegation:** the VA SOP is this runbook plus one screen recording per step plus the escalation table; drafter and reporter subagents with hard tool allowlists; Monday drafting on a cloud Routine with every write-capable connector removed (cloud Routines run without approval prompts); Thursday approvals as a Desktop scheduled task in Manual mode.
- **Day-30 review** (see checkpoints).

## Approval gates A-G

| Gate | Covers | Typical items |
|---|---|---|
| **A** facts | Truth ledger entries | Services, area, capacity, prices, credentials, review and photo permission |
| **B** publish | Any live page or profile change | Quote page, GBP fields, Yelp, Thumbtack, social pages, schema |
| **C** spend | Any paid channel or budget change | Thumbtack budget, Google Search, LSA, VA hours, software purchase |
| **D** send templates | Any outbound message template | Greeting, text-back, review ask, follow-ups, partner notes |
| **E** price or offer | Prices, discounts, recurring terms | Tier prices, first-job discount, pause policy, referral fee |
| **F** experiment | Any A/B or sequential test | Offer or message changes judged on qualified leads |
| **G** PII and consent | Form fields, consent wording, data access | Consent checkbox, VA access roles, receptionist data rules |

### The pending-approval to approved protocol

1. The agent writes every draft to `pending-approval/` with its gate letters in the header and the two closing tables.
2. Nothing in `pending-approval/` is ever published, sent, or spent against. The settings deny rules and the hook enforce this for the agent; the VA scope enforces it for the VA.
3. The owner reviews in the Thursday slot, edits in place if needed, and moves the file to `approved/` with a dated note. A file that stays in `pending-approval/` is a "no."
4. Only files in `approved/` may be loaded by the VA to publish, send, or fund on Friday. The VA logs each action with the file name and timestamp.
5. Any change to an approved artifact returns it to `pending-approval/` under the same gate.
6. If the owner misses the Thursday slot, nothing publishes on Friday. The agent carries the proposal to the next Monday scorecard unchanged.

Every file in either directory opens with this header:

```markdown
# [Artifact name]
Gates: [letters from A-G]
Status: pending-approval | approved [date] | refused [date, reason]
Drafted by: agent, [date]
Client workspace: [path, never this repo]

...artifact body...

## CLAIMS USED
| Statement | Evidence class | Source | Date |
|---|---|---|---|

## APPROVALS NEEDED
| Item | Gate | Owner decision |
|---|---|---|
```

## Paid channels: three gates, refused channels, hard stops, hiring trigger

**Three-gate rule.** Fund a paid channel only when all three log true in the scorecard for that week:

1. **Economics:** for a shared marketplace, the shared-class Max CPL is at or above the in-product quoted lead price; for an owned channel, the projected CPL sits inside the owned-class Max CPL from `assets/cpl-ceiling-model.md`, built on about 1.6x wage per billable hour because drive time between homes is paid time (29 CFR 785.38, government; multiplier is judgment, 2026-09-07).
2. **Intake:** the fake-lead QA gate passed on every route within the last 14 days.
3. **Capacity:** open capacity of at least about 3 new jobs per week (judgment).

### Refused channels and numeric reopen conditions (all reopen thresholds are judgment, 2026-09-07)

| Channel | Why refused now | Reopen when |
|---|---|---|
| Angi and HomeAdvisor | Shared leads; FTC 2023 order ($7.2M) over lead-quality claims (ftc.gov, government; re-verify on the live page) | Thumbtack shows cost per booked recurring client at or under allowable CAC for 4 consecutive weeks, AND the quoted per-lead price is at or under the shared-class Max CPL, AND the capacity gate holds |
| Bark | Credits expire; pay-to-respond model | Same as Angi, plus a written credit-expiry term of 90+ days |
| Meta and Nextdoor lead ads | No real offer yet; no proven SLA; low-intent leads | An approved gate-E offer exists, AND 4 consecutive weeks show 90%+ of leads called back within 60 minutes, AND the owned-class Max CPL is re-derived from a measured close rate |
| Review-gating tools ("were you happy?" funnels) | Gating violates Google policy and 16 CFR 465.4 (government) | Never in gated mode; only if reconfigured to an identical ask to every customer |

### Hard stops

- Any channel over its Max CPL for **two consecutive weeks** is paused in the Monday proposal, not noted.
- **Dollar-denominated zero-lead stop:** spend of 5x the channel's Max CPL with zero qualified leads pauses the channel until the owner re-approves under gate C.
- Any compliance incident (unapproved send, incentive found, recording without disclosure) pauses every outbound automation until the owner reviews.

### Hiring trigger

- **Post the cleaner or technician job at 40-65% utilization**, not 80%. Post-to-solo is 21-28 days clean, 30 for planning, 40-45 with one fallout (judgment, labor study, 2026-09-07). Weekly billable capacity C = N workers x H paid field hours x (1 minus a drive and setup share of 0.15-0.30) x a 0.80 utilization ceiling (judgment).
- **Pause paid leads and open a waitlist when the next two weeks are more than 90% scheduled.**
- Wage reference for the model: BLS OEWS May 2025, Maids and Housekeeping Cleaners 37-2012, national median about $16.65/hr (government, via mirror; re-verify at bls.gov/oes/current/oes372012.htm and look up the metro at data.bls.gov/oes).

### Channel sequence at a glance

| Channel | Earliest day | Gates | Cap (judgment) | Stop rule |
|---|---|---|---|---|
| Warm network and partners | Day 3-7 | D, E | $0; partner fee per booked job only | None; owner sends personally; campaigns in `assets/personal-network-social-campaigns.md` |
| Yelp Request-a-Quote | Day 3-7 | B, D | $0; never buy Yelp ads in month 1 | Never solicit Yelp reviews |
| Thumbtack | Day 5-14 | C, D | $50-100 per week | Two weeks over ceiling, or 5x Max CPL with zero qualified leads |
| Google Search | Day 7-14 | B, C | $20-40 per day | Same two stops; pause while advertiser verification is pending |
| Local Services Ads | Week 3-6 | C | Weekly budget inside the owned-class ceiling | Same two stops; pause if any stated hour goes unanswered |
| Angi, Bark, Meta and Nextdoor lead ads | Refused | C, E | None | Reopen only on the numeric conditions above |

## Weekly loop and checkpoints

| Day | Who | What happens |
|---|---|---|
| Monday | Agent | Scorecard from `assets/weekly-scorecard-template.md`: leads by source, first-touch and callback medians, qualified rate, quote-to-book, cost per lead by class versus Max CPL, **cost per booked recurring client versus allowable CAC** (headline row), reviews and reply times, utilization, cash versus ceiling, hiring trigger, proposals with gate letters |
| Thursday | Owner, 15 minutes | Approve, edit, or refuse each proposal; move files to `approved/`; same-day sign-off on any 3-star-or-lower reply |
| Friday | VA | Publish, send, or fund only from `approved/`; log every action; file the re-verification sheet for any claim that is due |

### Speed-to-lead standard the scorecard measures

| Route | Automated first touch | Human callback | Who takes it | Template |
|---|---|---|---|---|
| Live call, answered hours | Receptionist first ring if the owner works jobs, else owner | Same call, or within 60 minutes if held | Owner, then VA once a close rate is measured | `assets/receptionist-greeting.md` |
| Missed call | One informational text within 5 minutes once carrier registration clears (judgment on timing) | Within 60 minutes | Owner or VA | `assets/missed-call-textback.md` |
| Quote form | Confirmation stating the real next step and response window | Within 60 minutes, 8am-8pm | Owner or VA | email-sequence, quote follow-up |
| Marketplace message (Thumbtack, Yelp RAQ) | Reply within minutes, 8am-8pm | Within 60 minutes | VA | Approved reply set (D) |
| After hours | Receptionist captures and holds; no booking, no price outside the formula | Next answered hour | Owner or VA | `assets/receptionist-greeting.md` |

Log every lead with source, first-touch timestamp, callback timestamp, and outcome. Medians, not averages, go on the scorecard.

**Day-14 checkpoint:** replace ASSUMED cells in the CPL model with logged values; decide the FSM purchase as the trial ends; run the hiring-trigger check; unlock the Week-3 backlog (yard signs and door hangers on streets with completed jobs, referral credit paid only after the referred household's first paid job, 3-5 town pages only where jobs were completed). Angi and Bark stay refused.

**Day-30 review:** re-derive both Max CPLs and the capacity cap from measured values; approve or refuse a first-job discount strictly by the break-even rule in `assets/cpl-ceiling-model.md`; measure first-job-to-recurring as a count on the first 10-20 first jobs (published benchmarks are unreliable; never use them as a forecast); refresh the truth ledger; confirm zero unapproved publish, send, or spend events.

## Skill routing table

This table is the playbook answer to "which skill do I use." Verdicts come from a full read of all 26 skills (repo map, 2026-09-07). Inject the non-negotiable rules above as a preamble into every invocation; the SaaS-shaped skills do not carry them.

| Skill | Verdict | Funnel stage | How to invoke for a local service business | Adaptation note |
|---|---|---|---|---|
| local-service-sales-page | use-as-is | Conversion page, intake plumbing, measurement | "Read the context file and intake; deliver the 12-item bundle for one quote-request page; publication authority owner only" | Already service-shaped; map Phase 9 to the actual builder if it is not Leadpages |
| product-marketing-context | adapt | Strategy foundation | "This is a service business; use the service-business template and merge the intake fields; one section at a time, each fact with evidence class and date" | The 12-section template is SaaS-shaped; use the service-business section map |
| copywriting | adapt | Conversion page | Only after the truth ledger and offer card exist: "Write the copy deck for the quote page following the 13-section wireframe; label every claim" | Replace SaaS CTAs with the CTA accuracy table; gate social proof by the proof hierarchy |
| copy-editing | use-as-is | Conversion page and message copy | "Run the Seven Sweeps; Prove It and Zero Risk may only cite policies in the truth ledger; flag the rest HOLD" | Swap SaaS risk reducers for real ones (re-do policy, insured, arrival window) only if true |
| page-cro | use-as-is | Conversion page | "Audit the quote page; primary conversion is a qualified quote request; output quick wins, high-impact changes, test ideas, copy alternatives" | Map trust signals to verified reviews, insurance, real photos, stated response window |
| form-cro | use-as-is | Lead capture and intake | "Diagnose the two-step quote form; ZIP and service type before contact info; phone or text as default contact" | Ignore enrichment tools; route to a monitored inbox with a stated SLA |
| analytics-tracking | adapt | Measurement | "GA4 plus GTM plan using the local-service event map and GA4 lead-gen events; no PII in events or UTMs" | Replace the SaaS event library with the quote-to-completed-job journey; add call tracking |
| ab-test-setup | adapt | Measurement | "Write the hypothesis, metrics, and documentation for one offer or message change; check sample size first" | Low traffic: sequential before-and-after by calendar period, judged on qualified leads |
| email-sequence | adapt | Intake follow-up and retention | "Design quote follow-up (instant, T+1h, T+24h, T+72h, T+7d), pre-service, post-service, recurring, win-back; SMS only where consented" | Rewrite timing for hours-to-days; add CAN-SPAM, TCPA, and separate marketing consent |
| popup-cro | adapt | Secondary lead capture | "Spec one mobile sticky bar (Call, Text, Request Quote); no discount or newsletter popups" | Most patterns conflict with the one-CTA and no-fake-urgency rules |
| seo-audit | adapt | Organic visibility | "Audit the domain as a local service site; prioritize the Local Business list; add a GBP and citation checklist" | Ranking levers are mostly off-site (GBP, reviews, citations); the skill covers little of that |
| schema-markup | use-as-is | Visibility | "Generate LocalBusiness JSON-LD with areaServed and no street address for a home-based business" | No aggregateRating unless real reviews show on the page; drop product examples |
| programmatic-seo | adapt | Visibility | "Locations playbook only; 3-10 town pages where jobs were completed; unique verified local content" | A single operator cannot fill 50 city pages; month-2+ activity |
| competitor-alternatives | skip | Visibility | Do not invoke; at most one educational "independent provider vs company" page with no named competitors | Comparison pages need substantiated claims and have negligible local volume |
| content-strategy | adapt | Visibility, month 2+ | "Pillars: service FAQs, situational guides by segment, local trust content, seasonal; the checklist doubles as the lead magnet" | Deprioritize until GBP, quote page, and paid search are live |
| social-content | adapt | Visibility and proof | "Facebook, Instagram, Nextdoor, GBP posts; before-and-after with written permission; 2-3 posts per week" | Replace the SaaS platform table and cadence; add the photo-consent rule |
| paid-ads | adapt | Paid visibility | "Google Search only to start; ZIP targeting; call and location assets; ad schedule equals answered hours; negatives list" | Rewrite SaaS ad templates with the CTA rules and no invented stats; LSA runs under this skill's gates |
| marketing-ideas | adapt | Strategy | "Filter the idea bank to local-service ideas ranked by time-to-first-lead and delegability" | Roughly 110 of 139 ideas are inapplicable (repo map judgment); use for the monthly review |
| marketing-psychology | use-as-is | Strategy | "Review the offer card and quote page with Theory of Constraints, authority, regret aversion, default effect" | Scarcity, decoy, and loss-aversion only where the condition is genuine; drop the unattributed touch-count heuristic |
| pricing-strategy | adapt | Unit economics | "Build a job-cost model (loaded labor x hours by home size), three frequency tiers, and raise-price signals" | SaaS metrics do not apply; use lost-quote reasons and competitor ranges, not surveys |
| referral-program | adapt | Referral | "Double-sided referral sized by (LTV x gross margin) minus target CAC; reward only after the referred household's first paid job" | Never tie a reward to a review; keep referral offers out of review-ask messages |
| launch-strategy | adapt | Go-live sequencing | "ORB framework and checklist only, rewritten as the 14-day go-live plan in this skill" | Product Hunt, waitlists, and changelogs are irrelevant; seasonal campaigns replace ongoing launches |
| free-tool-strategy | adapt | Qualifying lead capture | "Scope an instant estimate calculator that ends in the quote form; label it estimate, not quote" | Build only after the pricing logic exists; a mismatch with real quotes destroys trust |
| signup-flow-cro | skip | None | Do not invoke | Account-creation flows do not exist here; form-cro covers the form |
| onboarding-cro | skip | Retention concept only | Do not invoke; borrow "first-job experience" as the aha moment inside email-sequence | Empty states and activation are app constructs |
| paywall-upgrade-cro | skip | None | Do not invoke; the recurring-plan upsell lives in pricing-strategy and email-sequence | Feature gates and trial expiry do not exist in a service business |

## Time-to-first-lead expectations and the evidence caveat

Every row is judgment (2026-09-07), not a measured industry benchmark. Competition density dominates.

| Source | First lead expected | Precondition |
|---|---|---|
| Warm network and partners | Day 2-5 | A real network exists; the owner sends personally |
| Thumbtack and Yelp Request-a-Quote | 2-7 days after activation (Day 7-12) | Three paid-channel gates true for Thumbtack; Yelp RAQ is free |
| Google Search ads | 3-10 days after launch | GBP Verified, QA pass, 3+ text reviews, advertiser verification cleared |
| Maps organic (local pack) | 2-6 weeks in suburbs; 2-3+ months in a competitive metro | Verified GBP, reviews accruing, consistent NAP |
| Local Services Ads | Week 3-6 | Screening cleared, answered hours accurate |

Most likely outcome: first qualified lead Day 3-10, first booked job Day 7-14 (judgment). Search benchmarks such as the LocaliQ 2025 cleaning figure (about $47 CPL and about 17.65% conversion; vendor-client aggregate, likely superseded) are competitive signals only, never forecasts.

**Evidence caveat. Disclose it to the owner.** Platform and government pages (support.google.com, ftc.gov, Yelp, Thumbtack, bls.gov, whitespark.ca, brightlocal.com, and every vendor pricing page) were egress-blocked during the research behind this skill. Load-bearing claims are labeled snippet-confirmed, mirror-verified, or judgment. Schedule a one-hour re-verification of every cited URL from an unblocked browser on Day 0 or Day 5, before any spend and before any published compliance statement. Vendor prices are vendor-reported; verify at signup. This skill is guidance, not legal advice. Consult counsel licensed in the business's state for recording, texting, review, and worker-classification questions.

Before quoting any statistic, check the Statistics to refuse list reached through `references/source-library.md`. A figure on that list is never repeated as fact, even with a caveat.

## Required output bundle and completion standard

Unless the user requests a narrower artifact, deliver into the private workspace:

1. Binding-constraint diagnosis with the ladder rung named and the evidence for it
2. Completed input-gate record with evidence classes and every "Unknown; do not publish"
3. Owner-only gate tracker with submission dates and expected clocks
4. Day-0 checklist filled from `assets/day-0-checklist.md`
5. Drafting batch A in `pending-approval/`, each artifact ending with CLAIMS USED and APPROVALS NEEDED
6. Installed delegation gates with the logged dry run
7. Fake-lead QA go or no-go record
8. CPL ceiling model with ASSUMED cells marked
9. VA scope, role matrix, and data rules
10. Weekly scorecard and the first Monday proposal
11. Re-verification sheet listing every snippet-confirmed claim with its URL and access date
12. Next action small enough to complete today

**Completion standard.** The launch is complete for the purposes of this skill when: a first qualified lead is logged with source and first-response time; every inbound lead gets an automated first touch within 5 minutes (judgment) and a human callback within 60 minutes during answered hours (supported by HBR, March 2011, "The Short Life of Online Sales Leads," a correlational, vendor co-authored analysis of about 1.25M leads at 42 companies in which contact within one hour was about 7x as likely to qualify the lead as an hour later; hbr.org/2011/03/the-short-life-of-online-sales-leads, industry_research); every active channel shows cost per booked recurring client at or under allowable CAC; reviews come from an identical un-gated ask and every review is answered within 24 hours (judgment); cash is at or under the ceiling; there are zero compliance incidents and zero unapproved publish, send, or spend events; and a VA can run Week 5 from this runbook without the strategist.
