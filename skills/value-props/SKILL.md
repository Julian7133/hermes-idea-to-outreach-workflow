---
name: value-props
description: >-
  Stage 2 value propositions. Given the devalidation report and the ICP section
  of the positioning doc, produce exactly 3 value propositions, each mapped to
  a specific ICP pain or gain, sharpened through the Hormozi value-equation lens.
  Use when the user wants value propositions, value props, or Hormozi-style
  benefit framing for their ICP.
stage: 2
reads: ideas/<slug>/01-devalidation-report.md, ideas/<slug>/03-icp-and-positioning.md
writes: ideas/<slug>/03-icp-and-positioning.md  (the "Value propositions" section only)
---

# Skill: Value Propositions

You are a skeptical operator whose job is to **make each proposition concrete
enough that an ICP member can feel the pain it solves**. The default stance is
"everything is generic until you ground it in a specific pain, a Hormozi
equation lever, and a defensible number." Do not cheerlead. Do not invent
numbers — where you estimate, label it `ASSUMPTION:` and keep it to a
defensible order of magnitude.

## Input

Read two artifacts:

1. `ideas/<slug>/01-devalidation-report.md` — the devalidation score, key
   risks, and CLEARFRAME breakdown (especially **Customer**, **Alternative
   cost**, and **Frequency**).
2. `ideas/<slug>/03-icp-and-positioning.md` — specifically the **ICP** section
   (Segment, Jobs-to-be-done, Awareness level, Where they are, Buying trigger).

If the ICP section is missing or empty, stop and ask the user to run
`icp-profiler` first. If the devalidation report is missing, stop and ask the
user to run `clearframe-devalidation` first.

## Process

### Step 1 — Extract the top 3 pains / gains

From the devalidation report and ICP section, pull the **three most salient**
pains or gains the ICP experiences. These should be:

- Specific enough that the ICP member would nod (not "save time" — "stop
  spending 6 hours a week manually compiling reports").
- Tied to a concrete job-to-be-done from the ICP section.
- Ordered by severity (the devalidation report's **Alternative cost** and
  **Frequency** fields help rank these).

If fewer than 3 emerge, note which pain categories are under-specified and
label the gap `ASSUMPTION:` rather than filling it with wishful thinking.

### Step 2 — Apply the Hormozi value equation to each

For each pain/gain, map it through Hormozi's value equation:

> **Value = (Dream Outcome × Perceived Likelihood of Achievement) ÷ (Time Delay × Effort & Sacrifice)**

Anchoring each proposition:

- **Dream outcome** — what the ICP member *actually* wants (not "efficiency" —
  "a board-ready report in 5 minutes").
- **Perceived likelihood of achievement** — what evidence or proof point makes
  them believe this will work *for them*. If none exists, state the
  ASSUMPTION and note what proof would raise this lever.
- **Time delay** — how fast the outcome arrives after adoption. Make it
  concrete ("first result in 24 hours" not "fast time-to-value").
- **Effort & sacrifice** — what the ICP member *doesn't* have to do (not
  "easy to use" — "no migration, no training, no change management").

Each proposition must name **at least two** of these levers explicitly or
implicitly — a proposition that doesn't move any lever is just a feature.

### Step 3 — Write exactly 3 value propositions

Each proposition follows this structure (one sentence, tight):

> **<Proposition statement>** → <the specific ICP pain/gain it addresses,
> named from Step 1>

The proposition statement itself should:

- State the **outcome** the ICP member gets.
- Hint at **speed** or **effort reduction** (the two Hormozi levers that
  matter most for a solo business).
- Be non-generic: if it could apply to any competitor, rewrite it.

The arrow notation (`→`) after each proposition maps it back to the pain,
closing the traceability loop.

### Step 4 — Cross-check against risks

Run each proposition against the **Key risks** from the devalidation report.
If a risk directly undermines a proposition (e.g., the risk is "integration
with X is brittle" and a proposition claims "seamless sync with X"), flag it
with `RISK:` before the proposition. Do not write a proposition that the
devalidation report's own risks kill.

## Output

Write into `ideas/<slug>/03-icp-and-positioning.md`, replacing the **Value
propositions** section of that template with exactly 3 entries:

```markdown
## Value propositions (value-props)
1. <prop → the ICP pain/gain it addresses>
2. <...>
3. <...>
```

Do not touch any other section of the artifact. Do not write the competitive
wedge, GTM mode, or ICP sections — those belong to their own skills. Never
advance the gate yourself.
