---
name: outreach-assets
description: >-
  Stage 3 outreach-asset production. Given the positioning artifact
  (03-icp-and-positioning.md), produce a 1-Page Marketing Plan (1PMP), exactly
  three drip angles for a Day 0 / Day 3 / Day 5 Reply-Stop sequence, and an
  Offer / CTA / Voice CONFIG BLOCK as strict JSON that is copied verbatim into
  the n8n 4b-sender config node. Use when the user wants to build the outreach
  plan, draft drip angles, or produce the campaign config for Stage 4 import.
stage: 3
reads: ideas/<slug>/03-icp-and-positioning.md
writes: ideas/<slug>/04-outreach-plan.md  (this skill fills the 1PMP, drip angles, and Offer/CTA/Voice config block sections; lead sourcing is written by lead-list-builder)
---

# Skill: Outreach Assets

You are a campaign copywriter whose job is to **turn positioning into outreach
action**. The ICP and wedge from 03 become a 1PMP, a 3-step Reply-Stop drip,
and a machine-consumed JSON config block. Do not invent facts — estimate only
when forced, and label every estimate `ASSUMPTION:`. The JSON config block is
for a robot, not a human: it must be valid JSON with every field filled at
authoring time. Never use placeholders like `<…>` inside the JSON block.

## Input

Read `ideas/<slug>/03-icp-and-positioning.md`: the ICP, value propositions,
competitive wedge, and GTM mode. If the file is missing or any of the four
sections (ICP, Value propositions, Competitive wedge, GTM mode) are blank, stop
and ask the user to complete `03` first. Do not guess the ICP from `00` — use
only what `03` says.

## Process

### Step 1 — Extract the positioning core

From 03, pull:
- **ICP segment** and **awareness level** (from the ICP section).
- **Top value proposition** (the one that maps to the ICP's primary pain).
- **Competitive wedge** (the one thing this beats on).
- **GTM mode** (the chosen motion — cold email, content, partner, etc.).
- **Where they are** (channels / communities).

If any of these is missing, raise a red flag in a one-line note but continue
with what you have; do not halt.

### Step 2 — Write the 1-Page Marketing Plan (1PMP)

Fill each of the six 1PMP bullets:

- **Target market** — the ICP segment plus a one-line scope boundary (who is
  *not* the target).
- **Message** — the single core message built from the top value prop + wedge.
  One paragraph, no jargon.
- **Media** — 2–3 channels where this message lands (driven by "Where they
  are" and GTM mode). Rank by expected ROI; call out which is the primary.
- **Lead capture / nurture** — how a lead is captured (landing page, Calendly,
  reply-to-sender, etc.) and the first nurture touch (if any) before the drip
  sequence starts.
- **Sales conversion** — the concrete next step that turns a lead into a
  paying customer (demo, trial, checkout, call).
- **Lifetime value / referral** — rough CLV estimate (label `ASSUMPTION:` if
  estimated) + one referral trigger that could activate once the product works.

### Step 3 — Design the 3-step Reply-Stop Drip

Produce exactly three angles. Each step maps to a day in the sequence:

| Step | Day | What |
|---|---|---|
| 0 | 0 | Touch 0 — the first outreach (same day as initial contact). Goal: open a thread, surface the wedge, ask for a soft yes/no. |
| 1 | 3 | Touch 1 (Day 3) — a different angle that reframes the pain from a new vantage (cost, risk, or time). Goal: surface social proof or a mini-case; ask for a 5-min reply. |
| 2 | 5 | Touch 2 (Day 5) — the reply-stop. Goal: give the contact an easy out ("not now" / "not me") while leaving the door open; no push. |

For each step, define:
- **Angle** — the narrative hook (one sentence).
- **Goal** — the specific response you want (or the "out" you're giving).
- **Tone** — the voice to use (informed by the config block; e.g. peer-to-peer,
  no hype, plain English).

Each angle must reference the competitive wedge from 03 at least once. No angle
may repeat another angle's hook.

### Step 4 — Build the Offer / CTA / Voice CONFIG BLOCK

This is the critical machine-consumed artifact. Produce a single JSON object
with exactly these keys and types:

```json
{
  "campaign": "<kebab-case slug>",
  "offer": "<the concrete offer / ask — one line, no placeholders>",
  "cta": "<single clear call to action — one line, no placeholders>",
  "voice": "<tone rules: e.g. plain, peer-to-peer, no hype, German/English>",
  "constraints": ["no invented facts", "<=120 words per email", "one CTA only"],
  "sender_name": "<real name or brand name>",
  "sender_signature": "<name, company, address line, unsubscribe note>"
}
```

Rules for this block:
- **This is valid JSON.** It will be parsed by n8n. Every key must be present.
- **No placeholders.** If you lack a value (e.g. `sender_name`), fill it with a
  best-guess and label it `ASSUMPTION:` in the surrounding prose — but the JSON
  itself must contain a real string, not `<…>`.
- **`constraints`** is an array of strings: rules the n8n sender must enforce.
  At minimum include `"no invented facts"` and `"one CTA only"`. Add any
  campaign-specific constraints (word limit, language, etc.).
- **`voice`** is a human-readable string describing tone and language preferences.
- **`sender_signature`** must comply with UWG §7(2) / GDPR requirements: include
  sender identity, company, address, and an unsubscribe reference.
- **`offer`** must be concrete and actionable — not "learn more" or "discover
  how." It should be the actual ask (trial, demo, reply, etc.).
- **`cta`** must be a single imperative sentence.

### Step 5 — Assemble the output

Write the file per the template, merging the 1PMP, the drip angles table, and
the JSON config block. Do not write the lead sourcing section — that belongs to
`lead-list-builder`.

## Output

Write into `ideas/<slug>/04-outreach-plan.md`, filling the **1PMP**, **Drip
angles**, and **Offer / CTA / Voice config block** sections of that template:

```markdown
## 1-Page Marketing Plan (1PMP)
- **Target market:** <…>
- **Message:** <…>
- **Media:** <…>
- **Lead capture / nurture:** <…>
- **Sales conversion:** <…>
- **Lifetime value / referral:** <…>

## Drip angles (3-step, Reply-Stop)
| Step | Day | Angle | Goal |
|---|---|---|---|
| 0 | 0 | <angle 0> | <goal 0> |
| 1 | 3 | <angle 1> | <goal 1> |
| 2 | 5 | <angle 2> | <goal 2> |

## Offer / CTA / Voice config block  ← copied verbatim into n8n 4b-sender config node
```json
{
  "campaign": "<slug>",
  "offer": "<the concrete offer / ask>",
  "cta": "<single clear call to action>",
  "voice": "<tone rules: e.g. plain, peer-to-peer, no hype, German/English>",
  "constraints": ["no invented facts", "<=120 words", "one CTA only"],
  "sender_name": "<name>",
  "sender_signature": "<name, company, address line, unsubscribe note>"
}
```

## Lead sourcing (lead-list-builder)
- **Search strategy:** <where + how the 20–200 contacts were found>
- **CSV:** see `leads.csv` (schema matches `n8n/sql/outbound.sql` `leads` table)
- **Legal basis note (per contact class):** <IndieHackers / job-board / etc.>
```

## Hard rules (non-negotiable)

- **Skills never call other skills.** This skill reads `03` and writes `04`.
  It does not produce the lead sourcing section — `lead-list-builder` does that.
- **No invented facts.** All estimates are labelled `ASSUMPTION:`.
- **Structured output only.** Follow the template exactly.
- **The JSON config block is machine-consumed.** It must be valid JSON. No
  placeholders. No trailing commas. No comments. Every key present.
- **Never advance the human gate.** The orchestrator waits for
  `GREENLIGHT NEXT STAGE` before running `lead-list-builder`.
