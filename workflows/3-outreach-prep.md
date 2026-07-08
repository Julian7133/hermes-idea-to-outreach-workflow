# Workflow 3 — Outreach Preparation (Stage 3)

**Goal:** convert a validated promise into everything the n8n campaign needs:
who to target, why they buy, the wedge, the motion, the drip, and the leads.

**Reads:** `ideas/<slug>/01-devalidation-report.md`, `02-landing-page-test.md`
**Writes:** `ideas/<slug>/03-icp-and-positioning.md`,
`ideas/<slug>/04-outreach-plan.md`, `ideas/<slug>/leads.csv`
**Gate out:** reviewer types `GREENLIGHT NEXT STAGE` → start the campaign.

## Part A — Positioning (`03-icp-and-positioning.md`)

Run these four skills in order; the orchestrator appends each output into the
single `03` artifact. Each reads `01` (+ `02` for demand signal); none call each
other.

1. **`icp-profiler`** → ICP: segment, JTBD, awareness level (Schwartz), where
   they hang out, buying trigger.
2. **`value-props`** → 3 value propositions mapped to the ICP's pains/gains.
3. **`competitive-wedge`** → the one angle where you win against the status quo
   and the named alternatives.
4. **`gtm-mode-selector`** → the go-to-market motion (e.g. founder-led outbound,
   community, ads) and why it fits this ICP + wedge.

## Part B — Outreach assets (`04-outreach-plan.md` + `leads.csv`)

5. **`outreach-assets`** (reads `03`) → the **1-Page Marketing Plan (1PMP)**,
   **3 drip angles** for Day 0 / Day 3 / Day 5, and the **Offer/CTA/Voice config
   block**. That config block is copied verbatim into the n8n Sender config node
   (`n8n/workflows/4b-sender.json`), so it must be exact and self-contained.
6. **`lead-list-builder`** (reads `03`) → the lead-sourcing strategy and the
   `leads.csv` (schema in the skill; matches the `leads` table in
   `n8n/sql/outbound.sql`). Target 20–200 hand-picked contacts.

## Gate review

Present `03`, `04`, and a sample of `leads.csv`. On `PASS`, wait for
`GREENLIGHT NEXT STAGE`, then hand off to `workflows/4-campaign-execution.md`.

**Before greenlight, confirm the legal check** (UWG §7(2) / GDPR, plan §7): the
list is small, hand-picked, and each contact has a defensible basis for 1:1
contact.
