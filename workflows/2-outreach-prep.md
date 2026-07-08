# Workflow 2 — Outreach Preparation (Stage 2)

**Goal:** convert a desk-validated promise into everything the validation send
needs: who to target, why they buy, the wedge, the motion, the drip, and the
leads.

**Reads:** `ideas/<slug>/01-devalidation-report.md` only
**Writes:** `ideas/<slug>/03-icp-and-positioning.md`,
`ideas/<slug>/04-outreach-plan.md`, `ideas/<slug>/leads.csv`
**Gate out:** reviewer types `GREENLIGHT NEXT STAGE` → Stage 3 validation send.

> Pipeline v2: [`IMPLEMENTATION-PLAN-v2.md`](../IMPLEMENTATION-PLAN-v2.md)

## Part A — Positioning (`03-icp-and-positioning.md`)

Run in order; each reads `01` only:

1. **`icp-profiler`** → ICP segment, JTBD, awareness, channels, buying trigger
2. **`value-props`** → 3 value propositions
3. **`competitive-wedge`** → single winning angle vs status quo
4. **`gtm-mode-selector`** → GTM motion (expect founder-led outbound)

## Part B — Outreach assets (`04-outreach-plan.md` + `leads.csv`)

5. **`outreach-assets`** → 1PMP, **3-step weekly drip** (Week 0/1/2), Offer/CTA/Voice
   JSON block. Copy uses **founder-validation framing** (sounds like sales, honest
   "liege ich falsch?" disclaimer on Touch 0). Paste config into n8n 4b-sender.
6. **`lead-list-builder`** → sourcing strategy + `leads.csv` (**20–50** rows).
   Enroller caps at **30** leads (by `icp_score`, no operator action needed).

## Prep constraints

| Field | Default |
|---|---|
| `leads.csv` | 20–50 hand-picked |
| Drip | 3 touches, **one per week** (7-day intervals), Reply-Stop on reply |
| Tone | Sales-style outreach + validation disclaimer (see `outreach-assets`) |

## Gate review

Present `03`, `04`, sample `leads.csv`. On `PASS`, wait for `GREENLIGHT NEXT STAGE`,
then `workflows/3-validation-send.md`.

Confirm legal check (UWG §7(2) / GDPR) before greenlight.
