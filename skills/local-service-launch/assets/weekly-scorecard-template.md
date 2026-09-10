# Weekly Scorecard Template

The agent produces this every Monday from the lead log, the FSM, platform dashboards, and the books (about 30 minutes of agent time). You read it before the Thursday approval batch. Every number states its source; every cell the agent could not measure reads ASSUMED or n/a, never a guess.

The scorecard proposes; it never pauses, spends, or publishes. A hard stop that fires here becomes a row in the "Proposed pauses" section and then a Gate C item in the Thursday batch.

## Header

```
Week: [YYYY-WW]   Period: [Mon YYYY-MM-DD to Sun YYYY-MM-DD]   Prepared: [YYYY-MM-DD]
Days since launch: [n]   Active channels: [list]   Paid channels: [list or none]
Allowable CAC (approved, Gate C): $[x]   Owned-class Max CPL: $[x]   Shared-marketplace Max CPL: $[x]
Inputs still ASSUMED: [list cells]   Replace-by date: [Day 14 / Day 30]
```

## Headline row

| Metric | This week | Cumulative | Target | Status |
|---|---|---|---|---|
| Cost per booked RECURRING client vs allowable CAC | $[x] vs $[CAC] | $[x] vs $[CAC] | At or below allowable CAC on every active channel | on track / over / not yet measurable |

Cost per booked recurring client = all paid lead and ad spend attributed to the channel, divided by clients who completed a first clean and confirmed a recurring schedule. Allowable CAC comes from the CPL model: the approved acquisition share (20-33% policy) of first-year contribution margin, with labor at about 1.6x wage per billable hour (judgment; drive time is paid time under 29 CFR 785.38, government).

This row is not measurable until 30-60 days of first cleans exist (judgment). Until then, the early indicators below carry the decision.

## Early leading indicators, weeks 1-4

| Indicator | This week | Last week | Threshold | Read |
|---|---|---|---|---|
| Qualified-lead rate (approved ZIP, a sold service, above minimum job value) | [n]/[n] = [x]% | | Below 40% two weeks running on a paid channel is a targeting problem (judgment) | |
| Human callback median, 8am-8pm | [x] min | | 60 minutes (HBR, March 2011, industry_research) | |
| Automated first-touch median | [x] s | | Under 5 minutes (judgment) | |
| Quote-to-book rate | [n]/[n] = [x]% | | Track direction; no benchmark published that survives verification | |
| Leads older than 30 minutes without a human touch | [n] | | 0 | |
| Quotes outside the approved formula | [n] | | 0 | |

## Leads by source

| Source | Leads | Qualified | Quoted | Booked | Booked recurring | First-response median | Notes |
|---|---|---|---|---|---|---|---|
| Warm network | | | | | | | |
| Partner referral | | | | | | | |
| Community (owner replies) | | | | | | | |
| Google Business Profile (calls, messages, site clicks) | | | | | | | |
| Organic site / form | | | | | | | |
| Yelp Request-a-Quote | | | | | | | |
| Marketplace (shared) | | | | | | | |
| Google Search ads | | | | | | | |
| Local Services Ads | | | | | | | |
| Other / unknown | | | | | | | "Unknown" above 10% means the source field is failing |

## Speed to lead

| Measure | Median | 90th percentile | Misses | Source of data |
|---|---|---|---|---|
| Automated first touch (voicemail promise, text-back, receptionist) | | | | FSM and phone logs |
| Human callback, 8am-8pm | | | | Lead log timestamps |
| Human callback, after hours (next morning) | | | | Lead log timestamps |
| Marketplace and Yelp reply | | | | Platform inbox |

## Cost by class

| Class | Channel | Spend this week | Leads | Qualified | Cost per lead | Max CPL | Cost per booked job | Over ceiling? (weeks running) |
|---|---|---|---|---|---|---|---|---|
| Owned | Google Search ads | | | | | | | |
| Owned | Local Services Ads | | | | | | | |
| Shared marketplace | [platform] | | | | | | | |
| Shared marketplace | [platform] | | | | | | | |

Owned-class channels deliver an exclusive lead; shared-marketplace channels sell the same request to several pros, so their Max CPL is lower and cost per booked job runs a multiple of the lead price (judgment: assume 3-5x until measured).

## Retention and reviews

| Metric | This week | Cumulative | Note |
|---|---|---|---|
| First cleans completed | | | |
| First cleans converted to a recurring schedule (count) | | | Report the count and the denominator; published rate benchmarks are unreliable and are refused |
| Pause requests handled with the pause menu | | | |
| Cancellations | | | |
| Google reviews received (text / star-only) | | | Identical ask to 100% of completed jobs, no incentive |
| Review velocity (reviews per completed job) | | | |
| Median owner or VA reply time to reviews | | | Target under 24 hours; 3 stars or lower held for owner approval |
| Reviews of 3 stars or lower open without a reply | | | Escalation row if any |

## Platform status

| Item | Status | Date changed | Action needed |
|---|---|---|---|
| Google Business Profile | pending / verified / suspended / appeal | | No core-field edits for 14 days after verification |
| Local Services Ads screening | not started / submitted / approved / declined | | |
| Carrier registration (texting) | not submitted / submitted / approved / rejected | | Re-run QA routes 4, 5, 10 the day it clears |
| Google Ads advertiser verification | not started / in progress / verified / suspended | | |
| NAP diff across listings | 0 / [n] mismatches | | List each mismatch |

## Capacity

| Measure | Value | Formula or source |
|---|---|---|
| Weekly billable capacity C | [x] hrs | N cleaners x H paid field hours x (1 - drive and setup share 0.15-0.30) x 0.80 (judgment) |
| Hours scheduled next 2 weeks | [x] / [2C] hrs | FSM calendar |
| Utilization | [x]% | Scheduled / capacity |
| Recurring clients added this week | [n] | Lead log |
| Weeks to wall | [n] | (0.80 x C - current weekly recurring hours) / (recurring hours added per week); a 3-hour biweekly client adds 1.5 hrs/week steady state (judgment) |
| Waitlist rule | open / triggered | Pause paid leads and open a waitlist when the next two weeks are over 90% scheduled |

## Cash

| Line | This week | Month to date | Month ceiling | Headroom |
|---|---|---|---|---|
| Paid leads and ads | | | | |
| Software (FSM, receptionist, phone) | | | | |
| VA and contractor | | | | |
| Hiring (job posts, background checks) | | | | |
| Total | | | $[ceiling] | |

## Hiring trigger

| Check | Value | Rule |
|---|---|---|
| Weeks to wall | [n] | Post the cleaner job when weeks to wall is 4-6 or less, which is roughly 40-65% utilization if adding 1-2 recurring clients per week (judgment; post-to-solo runs 21-45 days) |
| Utilization two weeks running | [x]% / [x]% | At 80% or more two weeks running, pause paid channels and open the hiring requisition if not already open |
| Cleaner requisition status | not posted / posted / interviewing / offer / shadowing / solo | Include days open |

## Hard-stop checks

| Stop | Fired? | Channel | Evidence |
|---|---|---|---|
| Channel over its Max CPL two consecutive weeks | yes / no | | Two cost-by-class rows |
| Dollar-denominated zero-lead stop: spend reached 5x Max CPL with zero qualified leads (judgment threshold) | yes / no | | Spend and qualified count |
| Month cash at or over ceiling | yes / no | all paid | Cash table |
| Capacity: next two weeks over 90% scheduled | yes / no | all paid | Capacity table |
| Compliance incident (unapproved send, publish, spend; review or consent violation) | yes / no | | Incident line; owner same-day |

A fired stop is written into "Proposed pauses" below, not left as a note.

## Proposed pauses and changes

| Proposal | Trigger | Gate | Effective if approved | Reversal condition |
|---|---|---|---|---|
| Pause [channel] | [stop that fired] | C | Thursday batch | [numeric reopen condition, for example CPL under Max CPL for two weeks after targeting change] |
| Reduce [channel] cap to $[x] | | C | | |
| Open waitlist, pause paid leads | Capacity over 90% | C | | Utilization under 80% or new cleaner solo |
| Post cleaner job | Weeks to wall at or under 4-6 | C | | |

## Definitions

- **Lead:** any inbound request with a contact route, before qualification. Disqualified leads are still answered and logged.
- **Qualified:** approved ZIP, a service you sell, above the minimum job value.
- **Booked:** a first clean on the calendar with a confirmed date.
- **Booked recurring:** first clean completed and a recurring schedule confirmed in the FSM.
- **First-response time:** first automated touch and first human touch, both measured from the lead timestamp.

## Sources and evidence

| Claim | Tier | Source | Date |
|---|---|---|---|
| One-hour callback evidence (about 7x qualification vs an hour later) | industry_research, correlational, vendor co-authored | HBR, "The Short Life of Online Sales Leads" | March 2011 |
| Drive time between homes is paid time | government | 29 CFR 785.38 | current |
| Capacity formula, weeks to wall, 4-6 client wall, 21-45 day post-to-solo, 5x Max CPL stop, 1.6x labor multiplier | judgment | cpl-ceiling-model.md in this skill | 2026-09 |
| Marketplace cost per booked job 3-5x lead price | judgment | Shared-lead model | 2026-09 |
| No reliable first-clean-to-recurring benchmark | refused statistic | See source-library.md refuse list | 2026-09 |

Vendor prices in the cash table are vendor-reported; verify at signup. Nothing in this scorecard is legal or accounting advice.
