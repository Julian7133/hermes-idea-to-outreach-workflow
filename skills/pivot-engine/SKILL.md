---
name: pivot-engine
description: >-
  Stage 1 pivot branch. Runs only when idea-scoring returns verdict `pivot`,
  after weakness-detection. Reads weaknesses, scores, dimension files, and
  market insights to generate 2–3 evidence-backed B2B pivot options with score
  simulation, effort estimates, and indie buildability filtering. Use when the
  user wants pivot options, a pivot brief, or to rescue a weak-scoring idea.
stage: 1
reads: ideas/<slug>/scores.json, ideas/<slug>/weaknesses.json, ideas/<slug>/00-idea-capture.md, ideas/<slug>/competitors.json, ideas/<slug>/distribution.json, ideas/<slug>/pricing.json, ideas/<slug>/retention.json, memory/user_profile.md, memory/market_insights/<niche>-<YYYY>-<MM>.md
writes: ideas/<slug>/pivot_options.json, ideas/<slug>/pivot_report.md
---

# Skill: Pivot Engine

You generate concrete pivot options for a B2B micro-SaaS idea that scored
`pivot` — not a restart, but a deliberate change in one or two variables to
fix the weakest dimension while preserving what is already strong. This skill
runs **only** when `scores.json.verdict` is `pivot`, and **only after**
`weakness-detection` has written `weaknesses.json`. Ground every option in cited
evidence (G2/Capterra reviews, Reddit threads, job boards, competitor gaps,
market_insights signals) — not wishful thinking. No invented facts; label
estimates `ASSUMPTION:`. A pivot that cannot pass the Minimum Viable Pivot
Criteria is not a pivot.

## Input

Read the idea slug and these artifacts from `ideas/<slug>/`:

- `scores.json` (**required** — current dimension scores, final score, verdict).
  If missing, stop.
- `weaknesses.json` (**required** — weak dimensions with root causes). If
  missing, stop — run `weakness-detection` first.
- `00-idea-capture.md` (current concept, ICP, monetization assumption).
- `competitors.json` (positioning gaps, competitor complaints from G2/Capterra).
- `distribution.json` (channel assessment: SEO, cold outbound, communities,
  partnerships, paid search).
- `pricing.json` (pricing model, WTP per seat/account).
- `retention.json` (logo churn, workflow embeddedness).
- `memory/user_profile.md` (founder tier, budget, time, distribution advantages).
- `memory/market_insights/<niche>-<YYYY>-<MM>.md` (trend data — use all
  available files for the niche).

### Using market insights

Market insights ground pivots in real demand, not theory. Extract:

| Field | How it informs pivots |
|---|---|
| `top_signals` | Adjacent ICP segments or niches with validated demand. A rising subreddit, G2 category growth, or job-posting cluster near the idea's space suggests a viable audience or niche pivot target. |
| `trend_velocity` | If the current niche is declining, pivoting within it is futile — pivot to an adjacent rising niche. If rising-fast, the problem is likely execution (distribution, pricing), not the market. |
| `monetization_evidence` | If monetization is weak but market_insights show competitors successfully charging in the space, the issue is pricing model or positioning, not WTP. Pivot the model, not the idea. |
| Platform narratives (G2/Capterra 1-star and 3-star reviews, Reddit complaints, LinkedIn/IndieHackers threads, job-board pain signals) | Source specific pivot targets: underserved ICP segments named in reviews, workflow gaps competitors ignore, buyer complaints that repeat across ≥2 vendors. |

## Pivot types

| Pivot type | What changes | What stays | When to use |
|---|---|---|---|
| **Audience narrowing** | Target ICP segment (industry, role, company size) | Core problem and solution | Demand is broad but shallow; CAC too high because targeting is diffuse |
| **Audience expansion** | Broaden from micro-niche to adjacent ICP segment | Core solution mechanics | SOM too small for a viable micro-SaaS; indie-realistic capture cannot support revenue floor |
| **Feature simplification** | Scope and complexity | Core value proposition | Complexity too high; time-to-MVP exceeds founder capacity |
| **Feature pivot** | Core feature emphasis | Target ICP and problem | Current feature set does not match what buyers actually want (G2/Capterra review mining signals) |
| **Niche pivot** | Problem space subcategory | Solution approach | Competition too high in broad category; narrow to underserved niche |
| **Pricing pivot** | Pricing model or price point (per-seat, usage-based, annual) | Product and ICP | WTP mismatch; wrong model for usage pattern; competitive pricing gap |
| **Distribution pivot** | Primary acquisition channel (SEO, cold outbound, communities, partnerships, paid search) | Product and ICP | Current channel is unviable; founder lacks skills/budget for assumed channel |
| **Delivery-surface pivot** | Where the product lives (standalone web → Slack/Teams app, Chrome extension, API-first) | Core idea and ICP | Wrong delivery surface for buyer workflow or procurement behavior |
| **Monetization pivot** | Revenue model (self-serve SaaS → productized service, seat → usage, monthly → annual) | Core domain expertise | Direct monetization unviable but the domain has other revenue paths |
| **Problem pivot** | Which problem to solve | Target ICP and domain | ICP is right but the specific pain point is weak; adjacent problem is stronger |

## Minimum Viable Pivot Criteria

A pivot must be different enough to change the score but similar enough to
preserve existing work and insights. Apply the **Same Idea Test**:

### A valid pivot must meet ALL of these:

1. **Changes exactly 1–2 variables** from the list above. Changing 3+ variables
   is a new idea, not a pivot — create a new idea slug instead.
2. **Preserves at least one strong dimension** (score ≥ 60 in the original). A
   pivot that abandons all strengths is a restart.
3. **Has evidence** — the pivot direction is supported by at least one concrete
   signal (market_insights data, G2/Capterra complaint, competitor gap, Reddit
   thread, job-board signal).
4. **Addressable root cause** — the weakness it targets has `root_cause_type`
   of "addressable" or "situational" in `weaknesses.json`. Pivots cannot fix
   structural weaknesses unless the pivot changes the core mechanic (which usually
   means it is a new idea).

### A pivot is NOT valid if:

- It requires the founder to acquire a skill set they do not have and cannot
  learn in < 4 weeks
- It targets a completely different ICP AND a different problem (that is a new
  idea)
- The only evidence is "maybe this would work" with no supporting signal
- It makes the idea harder to build without a proportional improvement in market
  viability

## Process

1. **Load and assess the weakness landscape.** Read `weaknesses.json`. Identify
   all weak dimensions and root causes. Separate into: **addressable**
   (`root_cause_type` = "addressable" or "situational") → pivot targets;
   **knowledge gaps** (`root_cause_type` = "knowledge-gap") → need more research,
   not a pivot; **structural** (`root_cause_type` = "structural") → only fixable
   by major pivot or new idea. If `overall_weakness_severity` = "fatal" and all
   weaknesses are structural, recommend dropping rather than pivoting. Note this
   in the output.

2. **Map weak dimensions to pivot types.** Use this mapping:

   | Weak dimension | Primary pivot types | Secondary pivot types |
   |---|---|---|
   | **Demand** (< 40) | Problem pivot, audience narrowing | Niche pivot |
   | **Competition** (< 40) | Niche pivot, audience narrowing | Feature pivot, delivery-surface pivot |
   | **Monetization** (< 40) | Pricing pivot, monetization pivot | Audience narrowing (higher-WTP segment) |
   | **Distribution** (< 40) | Distribution pivot, delivery-surface pivot | Audience narrowing (more reachable ICP) |
   | **Retention** (< 40) | Feature pivot, feature simplification | Problem pivot (pick a stickier problem) |
   | **Founder-Market Fit** (< 40) | Niche pivot (toward founder's domain), feature simplification | Delivery-surface pivot (to founder's strongest surface) |
   | **Boring/Trends** (< 40) | Niche pivot (toward boring/unsexy segment), audience narrowing | Problem pivot (adjacent unsexy workflow) |

   If multiple dimensions are weak, prioritize the one with the lowest score AND
   an addressable root cause.

3. **Generate pivot options using market_insights.** For each applicable pivot
   type from step 2, produce a concrete option:
   - Pull evidence from market_insights and dimension files:
     - Audience pivots: specific ICP segments (industry/role/company size) named
       in Reddit threads, G2 reviews, or job postings
     - Niche pivots: adjacent niches with rising `trend_velocity`
     - Distribution pivots: channels showing actual buyer activity in
       market_insights (SEO keyword volume, community engagement, cold-outbound
       reply benchmarks)
     - Pricing pivots: `monetization_evidence`, competitor per-seat/usage/annual
       pricing from `competitors.json`, LTV:CAC and payback from `cac.json` if
       present
   - Be specific, not generic:
     - Bad: "Narrow the audience"
     - Good: "Target RevOps managers at 50–200-person B2B SaaS companies instead
       of all ops roles. This segment shows acute pain in G2 reviews for
       [Competitor] (47 one-star reviews citing manual CSV reconciliation),
       higher WTP ($49–79/seat/mo based on adjacent tools), and reachable via
       r/SaaS + cold outbound to VP RevOps titles."
   - Generate **2–3 options**, ranked by expected impact. Each must pass the
     Minimum Viable Pivot Criteria. Options must change different variables —
     not three variations of the same audience pivot.

4. **Scoring simulation.** For each option, project how each of the 7 dimensions
   would shift. Reuse `idea-scoring` weights and floor-penalty logic:

   ```
   weights = { demand:0.20, monetization:0.20, distribution:0.20,
               retention:0.15, competition:0.10, founder_market_fit:0.10,
               boring_trends:0.05 }
   projected_score = sum(projected_dimension_scores × weights) × projected_floor_penalty
   ```

   For dimension(s) the pivot targets, estimate the new score range from pivot
   direction, evidence strength, and `idea-scoring` rubrics. For untouched
   dimensions, assume unchanged **unless** there is a clear secondary effect:
   - Audience narrowing typically improves Distribution (+5 to +15) but may reduce
     Demand (−5 to −10) and SOM
   - Feature simplification typically improves Founder-Market Fit (+10 to +20)
     but may reduce Retention (−5 to −10) if features drove stickiness
   - Pricing pivots can affect Distribution (lower price → easier cold outbound
     conversion) and Retention (annual contracts → higher commitment)
   - Niche pivot toward boring/unsexy segment typically improves Boring/Trends
     (+10 to +20) and Competition (+5 to +15)

   Report as a range: `projected_score_range: { low: X, high: Y }`. This is an
   estimate — a full re-score via `idea-scoring` after applying the pivot is
   definitive.

5. **Effort estimation.** Estimate execution cost relative to the founder's tier:

   | Effort level | Definition | Typical timeline |
   |---|---|---|
   | **Low** | Weekend work. Changes copy, positioning, pricing, or ICP targeting — no code. | 1–3 days |
   | **Medium** | Feature changes or new content. Some development work. | 1–3 weeks |
   | **High** | Significant rebuild. New core feature, new delivery surface, or new ICP requiring fresh research. | 1–3 months |

   Tier adjustment: **Beginner** → upgrade effort one level; **Builder** → no
   adjustment; **Growth** → downgrade effort one level. Flag "high" effort for
   the founder's tier as risky unless projected score improvement is ≥ 20 points.

6. **Indie buildability filter.** Verify each option passes:

   | Constraint | Fails if |
   |---|---|
   | **Solo buildable** | Pivot requires a team (e.g., marketplace needing supply and demand simultaneously) |
   | **Budget feasible** | Pivot requires spend exceeding founder's budget tier |
   | **Time feasible** | Pivot requires > 3 months for the founder's tier |
   | **Skill feasible** | Pivot requires skills the founder cannot learn in 4 weeks |
   | **No enterprise creep** | Pivot moves toward enterprise sales, custom implementations, or 6+ month procurement cycles — not an indie B2B micro-SaaS play |

   If a pivot fails any constraint, modify it to fit or discard it and note why.

7. **Select the recommended pivot.** Rank by
   `(projected_score_improvement / effort_level)` — highest impact per unit of
   effort wins. Tie-breakers: (1) stronger evidence from market_insights, (2)
   lower risk (fewer dimensions negatively affected), (3) preserves more original
   strengths. Recommend exactly one option.

8. **Write outputs.** Write `pivot_options.json` first, then `pivot_report.md`
   sourced entirely from the JSON — do not introduce new judgements in the report.

## Output

Write two files to `ideas/<slug>/`:

### 1. `pivot_options.json`

```json
{
  "original_score": 0,
  "original_verdict": "",
  "triggered_by_weaknesses": [
    {
      "dimension": "",
      "score": 0,
      "root_cause_type": "",
      "root_cause_description": ""
    }
  ],
  "structural_weaknesses_unpivotable": [],
  "pivot_options": [
    {
      "pivot_id": "pivot-1",
      "pivot_type": "",
      "description": "",
      "specific_change": "",
      "evidence": "",
      "evidence_source": "",
      "meets_minimum_viable_pivot": true,
      "scoring_simulation": {
        "dimensions_improved": [
          { "dimension": "", "current": 0, "projected_low": 0, "projected_high": 0 }
        ],
        "dimensions_worsened": [
          { "dimension": "", "current": 0, "projected_low": 0, "projected_high": 0 }
        ],
        "dimensions_unchanged": [],
        "projected_score_range": { "low": 0, "high": 0 },
        "projected_verdict_range": ""
      },
      "effort": {
        "level": "low | medium | high",
        "tier_adjusted_level": "low | medium | high",
        "timeline": "",
        "what_changes": "",
        "what_stays": ""
      },
      "indie_buildability": {
        "passes": true,
        "constraints_checked": ["solo_buildable", "budget_feasible", "time_feasible", "skill_feasible", "no_enterprise_creep"],
        "failed_constraints": []
      },
      "trade_offs": [],
      "variables_changed": 0
    }
  ],
  "recommended_pivot": "",
  "recommended_pivot_rationale": "",
  "drop_recommendation": false,
  "drop_rationale": "",
  "market_insights_sources_used": []
}
```

### 2. `pivot_report.md`

Human-readable pivot brief (~500–800 words). Write after `pivot_options.json` is
complete — source all data from the JSON.

```markdown
---
idea_slug: <slug>
original_score: <X>
original_verdict: <verdict>
recommended_pivot: <pivot_id>
created_at: <YYYY-MM-DD>
---

# Pivot Report: <Idea Name>

## Why the Original Idea Scored <X>/100

<2–3 sentences. State the root cause of the low score plainly — not a list of every problem, just the one or two structural reasons the idea cannot work as-is. Cite specific scores from scores.json (e.g. "Distribution scored 34/100 because…"). No hedging.>

---

## What Can Be Fixed vs. What Can't

**Addressable weaknesses** (pivot targets):
- <dimension>: <1-sentence root cause and why it's fixable>
- ...

**Structural weaknesses** (cannot be pivoted away):
- <dimension>: <1-sentence root cause and why no pivot can fix it>
- ...

<If all weaknesses are structural, state clearly that a pivot is unlikely to rescue this idea and explain why.>

---

## Pivot Options

### Option 1 — <Pivot Type>: <Short Name> · Projected score: <low>–<high>/100 · Effort: <tier_adjusted_level>

**The change:** <1–2 sentences. Be specific — ICP segment (industry/role/company size), feature, channel (SEO/cold outbound/communities/partnerships/paid search), pricing model (per-seat/usage/annual), or delivery surface. Name concrete details (specific subreddits, G2 complaint themes, competitor pricing, job-board signals).>

**Why this works:** <2–3 sentences grounded in evidence. Cite the market_insights signal, G2/Capterra complaint, competitor gap, or distribution benchmark. Name the source (e.g. "r/SaaS thread on invoice reconciliation has 40+ comments in 30 days", "[Competitor]'s 1-star G2 reviews consistently mention X", "Google Trends for 'revops automation' shows rising velocity").>

**What stays the same:** <1 sentence. What existing work and strengths are preserved.>

**Score projection:**
| Dimension | Current | Projected |
|---|---|---|
| <dimension> | <current>/100 | <low>–<high>/100 |
| <dimension (worsened)> | <current>/100 | <low>–<high>/100 |
| ... | ... | unchanged |

**Trade-offs:** <1–2 sentences. What this pivot gives up. Every pivot has a cost.>

**Effort:** <What specifically needs to change — code, copy, positioning, research. Timeline.>

---

### Option 2 — <Pivot Type>: <Short Name> · Projected score: <low>–<high>/100 · Effort: <tier_adjusted_level>

<Same structure as Option 1.>

---

### Option 3 — <Pivot Type>: <Short Name> · Projected score: <low>–<high>/100 · Effort: <tier_adjusted_level> *(optional)*

<Same structure as Option 1. Include only if a genuinely distinct third option exists.>

---

## Recommendation

**Go with Option <N> — <Short Name>.**

<3–4 sentences. State why this option has the best impact-to-effort ratio. Reference the scoring simulation. Name the one thing that makes this pivot more credible than the alternatives. End with a specific first action the founder should take this week.>

**If this pivot also scores below 50:** <1 sentence — what that means and what to do (drop, major rethink, or new idea slug).>

---

## What to Do First

<1–3 concrete steps, ordered. Each doable within a week. Name the specific subreddit to post in, pricing change to test, ICP filter to apply, or feature to cut. If a RAT experiment makes sense before committing, define it here: ≤2 weeks, ≤$100, pass/fail criteria (e.g. 20 cold emails → ≥10% positive-reply rate).>
```

#### Writing rules for `pivot_report.md`

1. **Every claim cites a source.** Name the market_insights file, G2/Capterra data
   point, or dimension score behind every assertion.
2. **Options must be meaningfully distinct.** Each changes a different variable.
3. **Score projections are ranges, not false precision.** `62–71/100` is honest;
   `67/100` implies certainty the model does not have.
4. **The recommendation picks exactly one.** Not "it depends" — commit and explain.
5. **Total length: ~500–800 words.** Decision brief, not a research report.

### Additional output rules

- If `overall_weakness_severity` = "fatal" and all weaknesses are structural,
  set `drop_recommendation` = true and explain why. Still generate one "Hail Mary"
  option if useful, but be honest about the odds.
- When generating niche pivots, check `competitors.json` for `positioning_gaps` —
  an identified gap with evidence is the strongest pivot foundation.
- Compound pivots (two low-effort changes, e.g. audience narrowing + pricing
  change) are allowed as a single option. Flag as **compound pivot** and note
  higher risk.
- The `pivot_id` field links re-scores back to the specific option.
- If market_insights files are past their `stale_after` date, note that evidence
  may be outdated and recommend refreshing `trend-analysis` before committing.
- SOM with indie-realistic capture rates is the primary market-size number; cite
  TAM only as context.

## Hard rules

- **Skills never call other skills.** Read the input artifacts; write
  `pivot_options.json` and `pivot_report.md`.
- **No invented facts.** Every pivot direction needs a cited signal. Label
  estimates `ASSUMPTION:`.
- **Runs only on `pivot` verdict**, after `weakness-detection`. If `scores.json`
  verdict is not `pivot`, or `weaknesses.json` is missing, stop and tell the
  orchestrator.
- **Never advance the human gate.** The orchestrator does that.
- **Only write `pivot_options.json` and `pivot_report.md`.**
