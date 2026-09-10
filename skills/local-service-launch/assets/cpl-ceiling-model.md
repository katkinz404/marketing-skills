# CPL Ceiling Model

Gates: A (facts), C (spend), E (price/offer)

This asset turns the owner's five economics numbers into two Max CPL ceilings (owned/inbound and shared-marketplace), an allowable CAC, a capacity-derived weekly spend cap, a hiring trigger, and a first-clean discount rule. The agent builds it on Day 1-3 with every unsupplied cell marked ASSUMED, replaces cells with logged values at the Day-14 and Day-30 checkpoints, and re-derives both ceilings each Monday for the scorecard.

**Hard rule.** While any input in the gate below reads "Unknown" or ASSUMED without an owner-approved placeholder and a replace-by date, the agent recommends no price, no discount, and no budget. It may run the model with labeled assumptions to show the owner what the ceilings would be, and nothing more. Nothing here is legal, tax, or accounting advice; a payroll professional or CPA reviews the burden and sales-tax cells before any public price.

## Input gate: five numbers and two policies

Record each row with an evidence class (1 verified business fact, 2 direct customer evidence, 3 hypothesis to test, 4 unknown) and a date. Blanks become "Unknown; do not publish."

| # | Input | What the owner supplies | Why it gates |
|---|---|---|---|
| 1 | Loaded labor | Wage per hour; W-2 or 1099 stated (W-2 is the safe default); workers' comp rate per $100 payroll from a real quote; state UI new-employer rate; labor-hours per standard clean and per first or deep clean; whether drive time between homes is paid (it must be, 29 CFR 785.38, government) | Sets cost per billable hour, the largest variable cost |
| 2 | Price by tier | Price per visit for first or deep, standard recurring, add-ons; the frequency discount actually honored (weekly, biweekly, monthly); minimum job value | Sets revenue per visit |
| 3 | Fixed overhead | Monthly insurance, software, vehicle, phone, licensing, and owner draw (state whether the draw is treated as fixed) | Sets break-even visits per month |
| 4 | Capacity | Open team-hours per week, current utilization, crew size, booking lead time | Caps how many leads are worth buying |
| 5 | Funnel triple | Close rate by source (owned versus shared marketplace), first-clean-to-recurring rate r, recurring tenure in months (or monthly churn; tenure = 1 / monthly churn). Pre-launch: the assumptions the owner will test, with a replace-by date | Converts CPL into cost per booked recurring client |
| P1 | Acquisition-share policy | The fraction of a customer's expected contribution margin the owner will spend to acquire that customer; 20-33% is a starting judgment (2026-09-10) | Sets allowable CAC |
| P2 | State | Business state and states served | Sales-tax treatment, UI rate, workers' comp threshold, recording and AI-disclosure rules |

**State sales-tax treatment.** Some states tax residential cleaning or janitorial services and most do not (state statutes; unverified list, 2026-09-10). If the state taxes the service, the model uses price net of tax in every formula and the quote page shows "plus tax." Confirm on the state Department of Revenue page and with a CPA before any public price; consult counsel licensed in the business's state where the answer is unclear.

## Formulas

### 1. Loaded labor per billable hour

Burden per PAID hour, base wage W, about 2,000 paid hours per year (derivation from the labor study, 2026-09-07; re-verify each rate on the live government page):

| Component | Rate on wages | Tier and date | Notes |
|---|---|---|---|
| Employer FICA | 7.65% (6.2% + 1.45%) | government, 26 USC 3111, 2026 | High confidence |
| FUTA | 6.0% on the first $7,000 less a 5.4% credit, net 0.6% = $42/yr, about 0.12% of a $34,000 payroll | government, DOL futa_credit, 2025 filing year | Credit-reduction states pay more (CA was 0.9% for 2024 filings); check the DOL list |
| State UI, new employer | 0.6-1.5% of wages; examples: NC 1.0% on $32,600 = 0.96%; CA 3.4% on $7,000 = 0.70%; NY 4.10% on $12,800 = 1.54% | government via secondary mirror, 2025 | Pull the actual state page |
| Workers' comp | 2.5-6.0% of payroll, UNVERIFIED | vendor and judgment, 2025-26 | Get two quotes (state fund plus a small-business carrier) and enter the real rate |
| Sick leave, payroll service, training, turnover | 2-8% combined | judgment, 2026-09-07 | State mandates vary |
| **Per paid hour** | **1.14x-1.26x W** | judgment on the rows above | Up to about 1.32x in high-comp states |

Per BILLABLE hour the multiplier is higher because travel between homes during the workday is compensable hours worked (29 CFR 785.38, government). With 20-30% of paid time non-billable (drive, supplies, setup):

```
loaded_per_billable_hour = W x 1.20 / (0.70 to 0.80) = 1.50x to 1.71x W
Use 1.6x W (judgment, 2026-09-07) until the business's own timesheets replace the drive share.
```

A cleaner treated as 1099 does not remove this cost; it shifts it to misclassification exposure. See references/compliance-floor.md and consult counsel licensed in the business's state.

### 2. Contribution margin per visit

```
CM = price_net_of_tax - (labor_hours x loaded_per_billable_hour) - supplies_and_travel - card_fee
```

Compute CM separately for the first or deep clean and the standard recurring visit. If the owner honors a frequency discount, use the discounted recurring price for recurring visits.

### 3. Break-even visits per month

Break-even units = fixed costs / (price per unit minus variable cost per unit) (sba.gov/business-guide/plan-your-business/calculate-your-startup-costs/break-even-point, government; formula is standard). For this business the unit is one visit:

```
break_even_visits_per_month = monthly_fixed_overhead / CM_standard
```

Marketing spend below break-even is loss-funded; say so in the scorecard.

### 4. Contribution LTV

```
LTV_one_time  = CM_first
LTV_recurring = CM_first + CM_recurring x (visits_per_month x tenure_months - 1)
LTV_blended   = (1 - r) x LTV_one_time + r x LTV_recurring
```

r is the share of booked first cleans that confirm a recurring schedule. Measure it as a count on the first 10-20 first cleans; published benchmarks are unreliable and never enter this model.

### 5. Allowable CAC

```
allowable_CAC = LTV_blended x acquisition_share      (policy P1, 20-33%)
```

Alternative if the owner prefers a payback limit: allowable CAC = CM of the first N visits.

### 6. Two-class Max CPL

```
Max_CPL_owned       = allowable_CAC x close_rate_owned
Max_CPL_marketplace = allowable_CAC x close_rate_marketplace
```

Owned/inbound covers Google Business Profile calls, the quote page, Search ads, LSA, and referrals. Shared-marketplace covers Thumbtack, Angi, HomeAdvisor, and Bark, where several pros are charged for the same request. Until a marketplace close rate is measured, assume cost per booked job is 3-5x the quoted lead price (judgment, 2026-09-10), which is the same as assuming a 20-33% close; the planning default of 12% is more conservative. A marketplace passes the economics gate only when its in-product quoted lead price is at or under Max_CPL_marketplace.

### 7. Capacity-derived weekly cap

```
open_jobs_per_week = open_team_hours / hours_per_job
weekly_cap = min( Max_CPL x target_leads_per_week,
                  (open_jobs_per_week / close_rate) x Max_CPL )
```

The second term equals open jobs x allowable CAC, so no channel is ever funded past the jobs the team can deliver.

### 8. Capacity, first-clean multiplier, weeks to wall

```
C = N x H x (1 - d) x u
```

N = workers, H = paid field hours per week after owner admin is subtracted (8-12 hrs/wk if the owner answers phones, 2-4 if delegated), d = drive and setup share 0.15-0.30, u = 0.80 utilization ceiling (all coefficients judgment, 2026-09-07). Recurring load L = sum of hours per visit / weeks between visits; a 3-hour biweekly client is 1.5 hrs/week at steady state plus a one-time first clean at 1.5-2.0x (4.5-6 hours), which is why onboarding weeks spike.

```
weeks_to_wall = (C - L_now) / (net_new_clients_per_week x avg_hours_per_client_per_week)
```

A solo operator absorbs about 4-6 new recurring clients before the wall (judgment, 2026-09-07).

### 9. Hiring trigger

- Post the cleaner or technician job when weeks_to_wall is at or under 4-6 weeks, which lands at 40-65% utilization when adding 1-2 recurring clients per week. Post-to-solo is 21-28 days clean, 30 for planning, 40-45 with one fallout (judgment, 2026-09-07).
- Pause paid leads and open a waitlist when the next two weeks are more than 90% scheduled. This is a Gate C proposal in the Monday scorecard.

### 10. First-clean discount break-even rule

A discount D on the first clean is acquisition spend. It breaks even only if it raises r by at least:

```
delta_r_required = D / ((visits_per_recurring_customer - 1) x CM_recurring)
```

Approve a discount (Gate E) only when the measured r after the discount exceeds the measured r before it by at least delta_r_required, on counts of at least 10-20 first cleans each, and only when discount plus paid CPL per booked customer still sits under allowable CAC. Never approve a discount before r is measured.

## Channel-gating decision table

| Condition | Owned/inbound channel | Shared marketplace |
|---|---|---|
| Any gate input Unknown | Refuse; run the model with ASSUMED labels only | Refuse |
| Projected or quoted CPL over Max CPL for the class | Refuse or pause | Refuse or pause |
| Fake-lead QA gate not passed in the last 14 days | Refuse | Refuse |
| Open capacity under about 3 new jobs per week (judgment) | Refuse; post the hire if weeks_to_wall is at or under 4-6 | Refuse |
| All three gates true | Fund at weekly_cap, Gate C | Fund at weekly_cap, Gate C |
| Over Max CPL two consecutive weeks | Pause proposal | Pause proposal |
| Spend of 5x Max CPL with zero qualified leads | Pause until re-approved | Pause until re-approved |
| Next two weeks over 90% scheduled | Pause, open waitlist | Pause, open waitlist |

## Refused-channels table template

Every refusal carries a numeric reopen condition so the owner can see exactly what would change the answer.

| Channel | Why refused now | Reopen when (all numeric) | Gate |
|---|---|---|---|
| [Channel] | [shared leads / no offer / no SLA / price over ceiling] | Quoted lead price at or under $[Max_CPL_marketplace] AND cost per booked recurring client at or under $[allowable_CAC] on [existing channel] for [4] consecutive weeks AND open capacity of at least [3] jobs/week | C |
| [Channel] | [no approved offer] | An approved Gate-E offer exists AND [90]% of leads called back within 60 minutes for [4] consecutive weeks AND Max_CPL_owned re-derived from a measured close rate | C, E |

## Worked example (ALL INPUTS ASSUMED, NOT ANY REAL BUSINESS)

Outputs are illustrative only. Replace every cell with the owner's numbers before any decision.

| Input | Assumed value |
|---|---|
| Wage | $17.00/hr (near the BLS OEWS May 2025 national median for 37-2012, about $16.65, government via mirror; re-verify) |
| Billable multiplier | 1.6x (judgment) |
| Standard clean | 3 labor-hours |
| Price per visit | $150, no frequency discount, no sales tax |
| Supplies and travel | $12 per visit |
| Fixed overhead | $2,000 per month |
| Close rate | 30% owned, 12% marketplace (judgment) |
| r, tenure | 40% first-clean-to-recurring; biweekly, 12 months = 26 visits |
| Acquisition share | 25% |
| Open capacity, target | 12 open team-hours/week, 10 target leads/week |

Output of the python3 script (run 2026-09-10; pasted, not hand arithmetic):

```
loaded labor per billable hour  $27.20
labor per standard clean         $81.60
contribution margin per visit    $56.40  (37.6% of price)
break-even visits per month      35.46 -> 36 visits
one-time customer      : LTV $56.40 | allowable CAC $14.10 | Max CPL owned $4.23 | Max CPL marketplace $1.69
biweekly 12 months     : LTV $1466.40 | allowable CAC $366.60 | Max CPL owned $109.98 | Max CPL marketplace $43.99
blended r=0.25         : LTV $408.90 | allowable CAC $102.22 | Max CPL owned $30.67 | Max CPL marketplace $12.27
blended r=0.40         : LTV $620.40 | allowable CAC $155.10 | Max CPL owned $46.53 | Max CPL marketplace $18.61
   weekly cap owned: min(46.53x10=465.30, (4/0.3)x46.53=620.40) = $465.30
   weekly cap marketplace: min(18.61x10=186.12, (4/0.12)x18.61=620.40) = $186.12
blended r=0.55         : LTV $831.90 | allowable CAC $207.97 | Max CPL owned $62.39 | Max CPL marketplace $24.96
discount break-even: $50 / ((26-1) x 56.40) = 0.0355 -> 3.55 points of r
```

What the example shows:

- A one-time customer supports about a $4 owned CPL and under $2 on a marketplace. Recurring conversion, not lead volume, is what makes paid leads affordable: the biweekly-12-month ceiling is 26x the one-time ceiling.
- At r = 40% the owned ceiling is about $47 and the marketplace ceiling about $19. Moving r from 25% to 55% roughly doubles both ceilings ($31 to $62 owned).
- A $50 first-clean discount must buy about 3.6 points of r to break even under these inputs. With counts of 10-20 first cleans, that difference is not measurable, so the discount stays refused at Day 30 unless the count says otherwise.
- The capacity term binds when the team can deliver fewer jobs than the lead target implies; here the lead target binds first.

Compare against the LocaliQ 2025 cleaning figure (about $47 CPL and about 17.65% conversion; vendor-client aggregate, likely superseded) only as a competitive signal. It is not a forecast and does not move the ceiling.

## BLS wage lookup procedure

1. Open bls.gov/oes/current/oes372012.htm (Maids and Housekeeping Cleaners, 37-2012). May 2025 national figures: median about $16.65/hr, mean $17.46, p25 $14.80, p75 $19.53 (government, via a GitHub mirror of the BLS national file; bls.gov was egress-blocked 2026-09-07; re-verify on the live page before publishing or spending). Janitors 37-2011 median about $17.88.
2. For the metro, open data.bls.gov/oes, choose "One occupation for multiple geographical areas," occupation 37-2012, geography type Metropolitan areas, select the MSA, read H_MEDIAN (p50) and the p75.
3. Alternative: the state page bls.gov/oes/current/oes_XX.htm, or CareerOneStop's ZIP-code wage tool, which uses the same OEWS data.
4. Set the recruiting wage at or above the local p50; quote the p75 if ads compete with hotels or commercial janitorial. Enter the chosen wage in input 1, not the national figure.

## CLAIMS USED

| Statement | Evidence class | Source | Date |
|---|---|---|---|
| Travel between homes during the workday is paid time | 1 (government) | 29 CFR 785.38, ecfr.gov | current |
| Employer FICA 7.65% | 1 (government) | 26 USC 3111 | 2026 |
| FUTA 6.0% on first $7,000, net 0.6% after credit | 1 (government) | DOL futa_credit page | 2025 filing year |
| State UI new-employer examples NC 1.0%, CA 3.4%, NY 4.10% | 3 (government via secondary mirror; re-verify) | State UI pages | 2025 |
| Workers' comp 2.5-6% of payroll | 4 (vendor, unverified) | Get two quotes | 2025-26 |
| Burden 1.14-1.26x per paid hour; 1.5-1.7x per billable hour; use 1.6x | 3 (judgment) | Labor study | 2026-09-07 |
| Break-even formula | 1 (government) | sba.gov break-even page | current |
| BLS OEWS 37-2012 May 2025 median about $16.65 | 3 (government via mirror; re-verify) | bls.gov/oes/current/oes372012.htm | May 2025 |
| Close rates 30% owned, 12% marketplace; cost per booked job 3-5x lead price | 3 (judgment) | This model | 2026-09-10 |
| Acquisition share 20-33% | 3 (judgment) | This model | 2026-09-10 |
| Capacity coefficients d, u, first-clean 1.5-2.0x, 4-6 client wall, 40-65% posting band, 21-45 day post-to-solo, 90% waitlist rule | 3 (judgment) | Labor study | 2026-09-07 |
| Some states tax residential cleaning | 4 (unverified list) | State Department of Revenue | verify |
| LocaliQ 2025 cleaning CPL about $47, conversion about 17.65% | 4 (vendor aggregate, likely superseded) | LocaliQ benchmarks | 2025 |
| Worked example inputs and outputs | ASSUMED, illustrative only | python3 script, scratchpad | 2026-09-10 |

## APPROVALS NEEDED

| Item | Gate | Owner decision |
|---|---|---|
| Five input rows and both policies entered with evidence class and date | A | Confirm or mark Unknown |
| W-2 versus 1099 status and workers' comp quote used in the burden cell | A | Confirm; consult counsel or a payroll professional |
| Sales-tax treatment for the business's state | A, E | Confirm with a CPA |
| Acquisition-share policy (20-33%) | C | Choose a number |
| Allowable CAC, Max CPL owned, Max CPL marketplace, weekly cap | C | Approve for the scorecard header |
| Any first-clean discount | E | Refuse until r is measured; then apply the break-even rule |
| Any change to a refused channel's reopen condition | C | Approve or keep refused |
| Replace-by dates for every ASSUMED cell (Day 14, Day 30) | A | Confirm |
