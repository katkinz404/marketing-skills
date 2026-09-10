# Approval Batch Template

Use this template for the first approval sitting (Day 2, 20-30 minutes) and for every Thursday batch after that (10-15 minutes). The agent assembles it from `pending-approval/`; you decide each row; the VA publishes only what reads **approve** on Friday.

The rule that makes delegation safe: **anything not approved is excluded from publication.** A hold is not a soft yes. An item missing from this batch does not exist for publishing purposes.

## Gates

Every item carries exactly one gate letter. If an item touches two gates, split it into two rows.

| Gate | Covers | Typical items |
|---|---|---|
| A | Facts (truth ledger entries) | Service list, service area, hours, trust facts, any number in copy |
| B | Publish (any live page or profile change) | Quote page, GBP fields, photos, Q&A, posts, listing edits |
| C | Spend (any paid channel or budget change) | Marketplace balance, daily caps, weekly caps, month-1 ceiling, software purchase |
| D | Send templates (any outbound message template) | Greeting, text-back, review ask, reply templates, handoff, day-7 nudge, warm-launch messages |
| E | Price and offer | Quote formula, "starting at" price, recurring per-visit price, frequency discount, pause policy, referral fee |
| F | Experiment | Any A/B test, any change made to measure a difference |
| G | PII and consent | Form fields, consent wording, SMS opt-in text, data access grants, VA visibility |

## Evidence classes

| Class | Meaning | Publishable? |
|---|---|---|
| 1 | Verified business fact | Yes, once approved under Gate A |
| 2 | Direct customer evidence | Yes, with permission recorded |
| 3 | Hypothesis to test | Only labeled as such, never as fact |
| 4 | Unknown; do not publish as fact | No |

## Batch header

```
Batch: [YYYY-WW or "A"]        Prepared by: [agent]        Date prepared: [YYYY-MM-DD]
Owner: [name]                  Sitting: [Thu HH:MM]        Time budget: [15 min]
Items: [n]   Gate A [n]  B [n]  C [n]  D [n]  E [n]  F [n]  G [n]
Cash to date vs month ceiling: $[x] of $[ceiling]
Hard stops triggered this week: [none / list]
```

## Items

One row per item. The agent fills the first three columns and links the draft. You fill the decision and date. Reject means "do not resubmit as is"; hold means "not this week, keep the draft."

| Item | Gate | Evidence class | Owner decision (approve / hold / reject) | Date |
|---|---|---|---|---|
| NAP block (name, address hidden, phone, URL) | A | 1 | | |
| Hours and answered window | A | 1 | | |
| Service list with inclusions and exclusions | A | 1 | | |
| Trust facts as statable (insurance, bonding, background checks) | A | 1 or 4 | | |
| CTA state: "Request a quote" vs "Book" | B | 1 | | |
| Quote page copy and wireframe | B | mixed, see CLAIMS USED | | |
| Form fields and consent wording | G | 1 | | |
| Receptionist greeting with AI and recording disclosure | D | 1 | | |
| Missed-call text-back (informational) | D | 1 | | |
| Review ask SMS and email, reply templates | D | 1 | | |
| First-clean handoff, day-7 nudge, pause menu | D | 1 | | |
| Recurring per-visit price and pause policy | E | 1 | | |
| Marketplace job preferences and lead-price cap | C | 3 | | |
| Per-channel weekly caps and month-1 ceiling | C | 3 | | |
| VA scope as deliverables and SLA, W-9 on file | G | 1 | | |
| Ownership audit sign-off | A | 1 | | |

Weekly batches add rows such as: this week's GBP post, new photos, review replies (4-5 stars auto-drafted, 3 stars or lower held here), negative-keyword additions, budget changes, a proposed pause, a proposed new channel.

## CLAIMS USED

Every drafted artifact ends with this table. The batch reproduces the rows that are new or changed since the last approval. A class-4 row cannot appear in published copy.

| Statement | Evidence class | Source | Date |
|---|---|---|---|
| [exact statement as it appears in the artifact] | [1-4] | [intake field, document, customer message, or "owner statement YYYY-MM-DD"] | [YYYY-MM-DD] |
| Example: "Serving [Town A], [Town B], and [Town C]" | 1 | Intake, service-area field | [date] |
| Example: "Insured and bonded" | 1 or 4 | Certificate on file, or Unknown; do not publish | [date] |
| Example: "Most quotes answered within an hour" | 3 | Hypothesis until 30 days of lead-log data | [date] |

## APPROVALS NEEDED

Every drafted artifact also ends with this table. The batch merges them.

| Item | Gate | Owner decision |
|---|---|---|
| [what will change, be sent, or be spent if approved] | [A-G] | [approve / hold / reject, with a one-line reason if hold or reject] |
| Example: Publish the quote page at [URL] | B | |
| Example: Load $[x] to the marketplace balance with a $[y] weekly cap | C | |
| Example: Switch the review ask automation from queued to live | D | |

## Move protocol: pending-approval to approved

1. The agent writes every draft to `pending-approval/YYYY-MM-DD-[artifact].md` with the two tables at the end. Nothing is ever written to `approved/` by the agent.
2. You mark each row in the batch. For an approved artifact, you or the VA move the file to `approved/` unchanged and append one dated line at the top:

```
Approved YYYY-MM-DD by [owner], batch [id]; gates [letters]; changes since draft: none | [one line]
```

3. A hold stays in `pending-approval/` with a one-line note: `Hold YYYY-MM-DD: [reason, what would unblock]`.
4. A reject stays in `pending-approval/` renamed with a `rejected-` prefix and a one-line note. The agent may draft a replacement; it cannot resubmit the same text.
5. Any edit to an approved file after the note, other than the note itself, moves it back to `pending-approval/`. Approval attaches to exact text, not to the topic.
6. Caps and prices approved under Gates C and E are also written into the intake record so the scorecard reads them from one place.
7. Friday publication reads only from `approved/`. The VA has no permission to publish from any other folder; the agent has no permission to publish at all.

## Owner rules for the sitting

- Read CLAIMS USED before the copy. A wrong fact approved once propagates to every listing.
- Approve Gate D templates once; re-approval is needed only when the text changes.
- Never approve a Gate C item without the matching Max CPL row from the CPL model and the current capacity number.
- Never approve a review incentive, a sentiment gate, a staff-name request, or a Yelp review request; these are policy and rule violations regardless of who proposed them.
- A proposed pause in the scorecard is approved or rejected here; it is not left as a note.
- If the sitting runs over 20 minutes, hold the remainder rather than approving unread.

## Sources and evidence

| Claim | Tier | Source | Date |
|---|---|---|---|
| Review incentives, gating, and insider reviews are prohibited | platform_primary, snippet-confirmed; government | Google contribution policy answer/7400114; FTC 16 CFR Part 465 | accessed 2026-09-07; rule effective 2024-10-21 |
| Yelp asks businesses not to solicit reviews | platform_primary, snippet-confirmed | Yelp business review guidance | accessed 2026-09-07 |
| Evidence classes | repo convention | local-service-sales-page SKILL.md | current |

Approval of compliance-sensitive text (recording disclosure, consent wording, worker scope) is an operational decision, not legal review. Consult counsel licensed in the business's state where the gate touches consent, recording, or worker classification.
