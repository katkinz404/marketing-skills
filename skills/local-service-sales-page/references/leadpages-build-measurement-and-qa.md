# Leadpages Build, Measurement, and QA

Use current Leadpages account capabilities and official support documentation. Feature availability and plan limits can change.

## Choose the correct Leadpages surface

- New website: use for the primary navigable site when Leadpages is the website provider.
- Existing-site page: use when adding a page to an established Leadpages site.
- Landing page: use for a traffic-specific campaign with one primary conversion.
- Thank-you page: create a dedicated confirmation and fulfillment experience.

Do not force the whole website, a high-intent quote flow, a lead magnet, and a newsletter into one campaign landing page.

## AI Builder prompt anatomy

Include:

1. Page type and role
2. Audience and triggering situation
3. Traffic source and message to match
4. One primary conversion
5. Verified business facts and offer
6. Accurate CTA and next state
7. Required section order
8. Approved brand kit, logo, type, color, and photo direction
9. Form fields and field logic
10. Confirmation and redirect behavior
11. Integrations and notification owner
12. Mobile and accessibility requirements
13. Analytics events
14. Prohibited claims, content, and imagery

Tell the builder to use placeholders for unknowns. If no brand system is approved, request a neutral structural wireframe.

## Forms and lead delivery

For every form, verify:

- The submission is stored where expected
- The correct person receives a notification
- The CRM or email platform receives the record
- The correct tag, list, or segment is applied
- Consent status is represented accurately
- The visitor reaches the correct thank-you page
- Error states preserve entered data where possible
- Duplicate submissions are handled
- The owner knows the response workflow

Classic Leadpages built-in lead-magnet delivery is a legacy feature and is unavailable to accounts created after January 10, 2025. Use an email platform or CRM for delivery and nurturing, or provide a properly hosted resource on the thank-you page. Verify the current account and documentation rather than assuming a feature exists.

## Accessibility requirements

- Use persistent visible labels, not placeholders alone
- Identify required fields
- Associate labels with controls
- Provide instructions before complex fields
- Describe errors in text and identify the affected field
- Confirm successful submission
- Preserve logical heading order
- Provide useful alternative text
- Maintain visible keyboard focus
- Do not rely on color alone
- Meet at least 4.5:1 contrast for normal text and 3:1 for large text
- Meet WCAG 2.2 AA target-size requirements; use a larger internal target such as 44 by 44 CSS pixels for primary controls when practical
- Test keyboard-only and mobile use

The WCAG 2.2 AA minimum target-size criterion is 24 by 24 CSS pixels with defined exceptions. Do not misstate a larger usability target as the formal minimum.

## Performance targets

Measure the published page with real-user data when available. Use Core Web Vitals at the 75th percentile:

- Largest Contentful Paint: 2.5 seconds or less
- Interaction to Next Paint: 200 milliseconds or less
- Cumulative Layout Shift: 0.1 or less

Controls:

- Resize and compress images
- Use modern formats where supported
- Set image dimensions
- Avoid autoplay video
- Limit third-party scripts, widgets, and animation
- Lazy-load below-fold media where supported
- Test on a real phone and cellular connection

Managed hosting does not guarantee that an individual page meets these targets.

## Analytics specification

Recommended event map:

| Journey stage | Event or record | Success condition |
|---|---|---|
| Exposure | page_view | Correct page and campaign parameters |
| Intent | primary_cta_click | Primary action selected |
| Alternate contact | phone_click or text_click | Correct route invoked |
| Form engagement | form_start | First meaningful interaction |
| Lead capture | form_submit and generate_lead | Server or platform success, not button click |
| Scheduling | appointment_request | Request stored |
| Confirmation | appointment_confirmed | Appointment actually confirmed |
| Qualification | qualify_lead or disqualify_lead | Owner applies defined criteria |
| Sale | close_convert_lead or booked_job | Accepted job or paid booking |
| Delivery | completed_job | Work completed |
| Value | revenue or job_value | Reliable non-personal value data |
| Lead magnet | lead_magnet_signup and download | Permission plus fulfillment |
| Newsletter | newsletter_signup | Correct list and consent state |

Use consistent UTM source, medium, campaign, and content values. Never put names, emails, phone numbers, addresses, access notes, or other personal information in URLs, UTMs, data-layer values, or analytics event parameters.

Define:

- Primary business metric
- Guardrail metric
- Event owner
- Data source
- Deduplication rule
- Attribution window if used
- Offline feedback method
- Review cadence

## Experiment design

Prioritize:

1. Offer and message match
2. Segment and triggering job
3. Headline and value proposition
4. Quote versus availability versus booking action
5. Form friction
6. Proof type and placement
7. Mobile hero
8. Objection handling
9. Secondary visual details

Hypothesis format:

Because [evidence] shows [segment] experiences [problem or uncertainty], changing [element] from [control] to [variant] should improve [primary metric] because [mechanism]. Monitor [guardrail] to detect harm.

Record before launch:

- Control
- Variant
- Traffic source
- Audience
- Primary event
- Guardrail
- Baseline estimate and provenance
- Minimum detectable effect or practical decision threshold
- Allocation
- Stopping approach
- Data-quality checks
- Downstream lead-quality review

Do not rely on a universal visitor minimum. Sample needs depend on baseline rate, detectable effect, allocation, confidence, and variance. For low traffic, use larger message or offer differences, usability observation, and customer interviews.

## Prelaunch truth gate

- Audience and service are explicit
- Service is currently available
- Geography is verified
- Scope, exclusions, and add-ons are accurate
- Price or quote explanation is accurate
- CTA describes the next state
- Claims have evidence
- Reviews and photos are authentic and permitted
- Request versus confirmation is unambiguous
- Unknowns are held from publication

## Page and accessibility QA

- One primary goal
- Source promise matches the page
- Mobile reading order works
- No horizontal scroll
- CTA is prominent and tap-friendly
- Forms have labels, instructions, errors, and success feedback
- Keyboard focus is visible
- Contrast passes
- Alternative text is accurate
- Footer, privacy, terms, and accessibility links work

## Conversion-plumbing QA

- Live submission appears in Leadpages
- Correct CRM or email platform receives it
- Correct owner receives notification
- Thank-you redirect works
- Lead magnet can be accessed
- Delivery email arrives
- Newsletter record enters the correct segment
- Calendar or booking handoff works
- Request and confirmation messages are correct
- Call and text links reach the verified number
- Unsubscribe and preference controls work where applicable

## Measurement QA

- Analytics loads according to the actual consent implementation
- UTM values persist correctly
- Form start and success events fire once
- Generate-lead fires only after success
- Phone and text clicks are distinct
- Offsite completion is measurable or reconciled offline
- Test traffic is labeled or excluded
- No personal information is sent
- Lead-quality and booked-job feedback has an owner

## Device and performance QA

- Test the published URL, not only preview
- Test current desktop and mobile browsers
- Test real phone call and text behavior
- Test form autofill and error recovery
- Test slow or cellular connection
- Check Core Web Vitals or PageSpeed
- Review image weight and third-party scripts

## Go or no-go

Mark the page:

- Go: all material truth, plumbing, and measurement checks pass
- Conditional go: remaining issue is documented, low risk, and does not make the page misleading
- No-go: conversion destination, claim support, service delivery, privacy, accessibility blocker, or request-versus-booking state is unresolved

Only the user can authorize publication or traffic.
