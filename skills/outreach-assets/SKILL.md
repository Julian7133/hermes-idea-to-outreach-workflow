---
name: outreach-assets
description: >-
  Stage 2 outreach-asset production. Given the positioning artifact
  (03-icp-and-positioning.md), produce an Avatar, a 1-Page Marketing Plan (1PMP)
  using the 9-square framework, a 3-step founder-validation drip (Week 0 / Week 1
  / Week 2, 7-day intervals), and an Offer / CTA / Voice CONFIG BLOCK as strict
  JSON for the n8n 4b-sender config node. Copy sounds like sales outreach but
  includes an honest validation disclaimer. Use when building the validation
  outreach plan or campaign config.
stage: 2
reads: ideas/<slug>/03-icp-and-positioning.md
writes: ideas/<slug>/04-outreach-plan.md  (1PMP, drip angles, Offer/CTA/Voice config block)
---

# Skill: Outreach Assets

You are a campaign copywriter whose job is to **turn positioning into founder-led
validation outreach**. The ICP and wedge from 03 become an **Avatar**, a **1PMP**
(9-square framework), a 3-step Reply-Stop drip (one e-mail per week), and a
machine-consumed JSON config block.

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
GTM mode, where they are, buying trigger, jobs-to-be-done. This is the raw
material for both the avatar and the 1PMP.

### Step 2 — Create the Avatar

Turn the ICP segment into a **vivid named composite** (one person, not a
demographic). Write from inside their head. The avatar must include:

- **Name and role** — e.g. "Max, Head of Marketing at a 20-person B2B SaaS".
- **Company context** — size, industry, maturity, what their team looks like.
- **What keeps them awake at night** — the expensive problem they lie awake
  worrying about (fear / frustration).
- **What they crave** — the outcome they actually want, not the feature.
- **Where they get information** — the specific communities, newsletters,
  podcasts, LinkedIn voices, events they trust.
- **Why this avatar matters** — one line connecting the avatar to the wedge.

The avatar is the lens for the entire 1PMP and the drip copy. If the ICP
section is too vague to create a named avatar, stop and ask for a tighter ICP.

### Step 3 — Write the 1-Page Marketing Plan (1PMP)

Use the **9-square framework** derived from the user's 1PMP summary. Do not skip
squares. Label anything you estimate `ASSUMPTION:`.

#### Before (Prospect)

**1. Target market**
- Niche definition: inch-wide, mile-deep.
- PVP score (Personal fulfillment / Value to marketplace / Profitability) —
  if you can estimate it, else label `ASSUMPTION:`.
- Why this segment now (link to devalidation or trends).

**2. Message**
- USP: specific, defensible reason to buy from you vs. the alternative or doing
  nothing.
- Elevator pitch: problem → solution → proof in one tight paragraph.
- Core offer: what the market already wants, with friction lowered.
- Headline / hook: stop-the-reader line for the validation drip.
- Enemy in common (optional): what you and the prospect both blame.

**3. Media**
- Primary channel for this validation send (must match the GTM mode from 03).
- Other channels to test later — aim for at least 5 over time, but for the
  validation send focus on one primary motion.
- ROI tracking: what metric proves the channel works (reply, click, call, cost).

#### During (Lead)

**4. Lead capture**
- Ethical bribe / lead magnet: what captures the interested-but-not-ready prospect.
- Capture mechanism: landing page, DM, LinkedIn lead form, etc.
- CRM / follow-up system: how the lead enters nurture.

**5. Lead nurturing**
- Nurture rhythm: how often value is delivered before the sale.
- Value-to-offer ratio: e.g. 3:1 value to ask.
- Key nurture themes: 2–3 topics that build trust toward the offer.

**6. Sales conversion**
- Trust reversal / guarantee: what reverses risk to you, not the prospect.
- Pricing strategy: standard / premium / ultra-high-ticket anchors; note if the
  offer is one-off, retainer, or subscription.
- Friction removal: roadblocks removed between interest and purchase.

#### After (Customer)

**7. World-class experience**
- Wow / systemization: how delivery becomes remarkable and repeatable.
- Theater / delivery innovation: anything that makes the experience memorable.

**8. Lifetime value**
- Ascension / upsell path.
- Frequency / reactivation levers.
- Raising prices / pricing power.

**9. Referrals**
- Specific referral ask (non-vague).
- JV / complementary partners: who already has your clients before you.

For the **validation send**, squares 1–3 and the avatar are the most important.
Squares 4–9 are hypotheses to test and refine after the first campaign.

### Step 4 — Design the 3-step Founder-Validation Drip

**Cadence:** one e-mail per week (n8n schedules +7 days between touches).
Reply-stop: any human reply ends the sequence for that lead.

| Step | Week | Angle role | Goal |
|---|---|---|---|
| 0 | 0 | **Liege ich daneben?** — pain + solution sketch + validation ask | Open a thread; ask for 15-min expertise / one-line reply |
| 1 | 1 | Reframe pain (cost, risk, time) or mini proof point | Surface urgency; ask for short reply or call |
| 2 | 2 | Reply-stop — easy out, door stays open | Let them opt out gracefully; no push |

#### Touch 0 template (adapt to ICP — do not copy verbatim unless facts match)

Use this **structure** for the Week 0 angle description and as the LLM seed in
the config block:

```
Subject hook: Liege ich daneben? (or equivalent curiosity subject)

Opening: named pain grounded in the avatar's reality (cite a plausible
"Originalzitat" only if defensible from 03 — else paraphrase industry signal).

Solution sketch: 2–4 concrete capabilities the solution would deliver (from wedge
+ value props). Specific enough to react to, not a feature dump.

Validation disclaimer (required): "Ich verkaufe nichts — ich arbeite an einem
neuen Produkt/Service für Leute wie Sie und bräuchte Ihre Einschätzung, ob das
Sinn macht oder ich falsch liege."

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

### Step 5 — Build the Offer / CTA / Voice CONFIG BLOCK

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
    "touch 0 must include validation disclaimer: working on a new product/service, want to know if wrong",
    "sounds like sales outreach but explicitly not selling yet"
  ],
  "sender_name": "<real name>",
  "sender_signature": "<name, company, domain, unsubscribe note>"
}
```

### Step 6 — Assemble the output

Write `04-outreach-plan.md` per template below. Do not write lead sourcing —
that is `lead-list-builder`. The 1PMP must be written *before* the drip so the
avatar and the 9 squares inform the copy.

## Output

```markdown
## Avatar
- **Name:** <…>
- **Role / title:** <…>
- **Company context:** <…>
- **What keeps them awake at night:** <…>
- **What they crave:** <…>
- **Where they get information:** <…>
- **Why this avatar matters:** <…>

## 1-Page Marketing Plan (1PMP) — 9 Squares

### Before (Prospect)

#### 1. Target market
- **Niche:** <…>
- **PVP score:** <…>
- **Why this segment now:** <…>

#### 2. Message
- **USP:** <…>
- **Elevator pitch:** <…>
- **Core offer:** <…>
- **Headline / hook:** <…>
- **Enemy in common:** <…>

#### 3. Media
- **Primary channel:** <…>
- **Other channels:** <…>
- **ROI tracking:** <…>

### During (Lead)

#### 4. Lead capture
- **Ethical bribe:** <…>
- **Capture mechanism:** <…>
- **CRM / follow-up:** <…>

#### 5. Lead nurturing
- **Nurture rhythm:** <…>
- **Value-to-offer ratio:** <…>
- **Key themes:** <…>

#### 6. Sales conversion
- **Trust reversal / guarantee:** <…>
- **Pricing strategy:** <…>
- **Friction removal:** <…>

### After (Customer)

#### 7. World-class experience
- **Wow / systemization:** <…>
- **Theater:** <…>

#### 8. Lifetime value
- **Ascension / upsell:** <…>
- **Frequency / reactivation:** <…>
- **Raising prices:** <…>

#### 9. Referrals
- **Referral ask:** <…>
- **JV / partners:** <…>

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
