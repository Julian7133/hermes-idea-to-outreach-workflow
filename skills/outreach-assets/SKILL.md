---
name: outreach-assets
description: >-
  Stage 2 outreach-asset production. Given the positioning artifact
  (03-icp-and-positioning.md), produce a 1-Page Marketing Plan (1PMP), a
  3-step founder-validation drip (Week 0 / Week 1 / Week 2, 7-day intervals),
  and an Offer / CTA / Voice CONFIG BLOCK as strict JSON for the n8n 4b-sender
  config node. Copy sounds like sales outreach but includes an honest validation
  disclaimer. Use when building the validation outreach plan or campaign config.
stage: 2
reads: ideas/<slug>/03-icp-and-positioning.md
writes: ideas/<slug>/04-outreach-plan.md  (1PMP, drip angles, Offer/CTA/Voice config block)
---

# Skill: Outreach Assets

You are a campaign copywriter whose job is to **turn positioning into founder-led
validation outreach**. The ICP and wedge from 03 become a 1PMP, a 3-step
Reply-Stop drip (one e-mail per week), and a machine-consumed JSON config block.

**Tone:** reads like professional sales outreach to the recipient — but every
Touch 0 must include the honest validation frame: *"Ich arbeite an einem neuen
Produkt für Leute wie Sie und wollte wissen, ob das Sinn macht oder ich hier
falsch liege."* (Adapt language to ICP — German for DACH, English otherwise.)

Do not invent facts — label estimates `ASSUMPTION:`. The JSON config block is
for n8n: valid JSON, every field filled, no `<…>` placeholders inside JSON.

## Input

Read `ideas/<slug>/03-icp-and-positioning.md`: ICP, value propositions,
competitive wedge, GTM mode. If any of the four sections is blank, stop and ask
the user to complete `03` first.

## Process

### Step 1 — Extract the positioning core

From 03, pull: ICP segment, awareness level, top value prop, competitive wedge,
GTM mode, where they are, buying trigger.

### Step 2 — Write the 1-Page Marketing Plan (1PMP)

Fill all six bullets (target market, message, media, lead capture/nurture, sales
conversion, lifetime value/referral). Message and conversion should reflect
**validation-first** motion (expertise call / reply), not a hard sell.

### Step 3 — Design the 3-step Founder-Validation Drip

**Cadence:** one e-mail per week (n8n schedules +7 days between touches).
Reply-stop: any human reply ends the sequence for that lead.

| Step | Week | Angle role | Goal |
|---|---|---|---|
| 0 | 0 | **Liege ich daneben?** — pain + product sketch + validation ask | Open a thread; ask for 15-min expertise / one-line reply |
| 1 | 1 | Reframe pain (cost, risk, time) or mini proof point | Surface urgency; ask for short reply or call |
| 2 | 2 | Reply-stop — easy out, door stays open | Let them opt out gracefully; no push |

#### Touch 0 template (adapt to ICP — do not copy verbatim unless facts match)

Use this **structure** for the Week 0 angle description and as the LLM seed in
the config block:

```
Subject hook: Liege ich daneben? (or equivalent curiosity subject)

Opening: named pain grounded in ICP reality (cite a plausible "Originalzitat"
only if defensible from 03 — else paraphrase industry signal).

Product sketch: 2–4 concrete capabilities the solution would deliver (from wedge
+ value props). Specific enough to react to, not a feature dump.

Validation disclaimer (required): "Ich verkaufe nichts — ich arbeite an einem
neuen Produkt für Leute wie Sie und bräuchte Ihre Einschätzung, ob das Sinn
macht oder ich falsch liege."

CTA: minimal — "Eine Zeile genügt" / "15 Minuten diese oder nächste Woche?"

Signature: founder credibility line (role, company, domain).
```

**Example reference** (Energieberater — adapt pattern, do not reuse facts for
other ICPs):

- Betreff: *Liege ich daneben?*
- Pain: Fördersituation / Politik-Unsicherheit → Berater steht blöd da
- Sketch: lokaler KI-Agent überwacht BAFA/KfW/dena-Änderungen, matcht Kunden,
  empfiehlt Handlung
- Disclaimer + CTA: keine Verkauf, 15 Min Expertise, eine Zeile reicht

For each step define **Angle** (one-sentence hook for n8n LLM), **Goal**, and
**Tone**. Touch 1 and 2 must use different hooks than Touch 0.

### Step 4 — Build the Offer / CTA / Voice CONFIG BLOCK

```json
{
  "campaign": "<kebab-case slug>",
  "offer": "<concrete validation ask — e.g. 15-min expertise call, not a sale>",
  "cta": "<single imperative — e.g. Wäre das hilfreich? Eine Zeile genügt.>",
  "voice": "<plain, peer-to-peer, German/English; MUST include founder-validation disclaimer on touch 0>",
  "constraints": [
    "no invented facts",
    "<=120 words per email",
    "one CTA only",
    "touch 0 must include validation disclaimer: working on new product, want to know if wrong",
    "sounds like sales outreach but explicitly not selling yet"
  ],
  "sender_name": "<real name>",
  "sender_signature": "<name, company, domain, unsubscribe note>"
}
```

### Step 5 — Assemble the output

Write `04-outreach-plan.md` per template below. Do not write lead sourcing —
that is `lead-list-builder`.

## Output

```markdown
## 1-Page Marketing Plan (1PMP)
- **Target market:** <…>
- **Message:** <…>
- **Media:** <…>
- **Lead capture / nurture:** <…>
- **Sales conversion:** <…>
- **Lifetime value / referral:** <…>

## Drip angles (3-step, Reply-Stop, weekly)
| Step | Week | Angle | Goal |
|---|---|---|---|
| 0 | 0 | <Week 0 — Liege ich daneben? pain + sketch + validation ask> | <…> |
| 1 | 1 | <Week 1 — reframe / proof> | <…> |
| 2 | 2 | <Week 2 — reply-stop / easy out> | <…> |

## Offer / CTA / Voice config block  ← copied verbatim into n8n 4b-sender config node
```json
{ ... }
```
```

## Hard rules

- Skills never call other skills. Never advance the human gate.
- No invented facts; label `ASSUMPTION:` in prose (not inside JSON).
- JSON must be valid and machine-parseable by n8n.
