---
name: distribution-analysis
description: >-
  Stage 1 distribution dimension. Evaluates whether the ICP is reachable via B2B
  channels — SEO/content, cold outbound, communities, partnerships, paid search
  — and whether a founder can cheaply build a list of 20–200 buyers for cold
  outreach. Reads idea capture, competitor distribution signals, and founder
  profile. Use when the user wants distribution analysis, ICP reachability, or
  channel viability for a micro-SaaS idea.
stage: 1
reads: ideas/<slug>/00-idea-capture.md, ideas/<slug>/competitors.json, memory/user_profile.md
writes: ideas/<slug>/distribution.json
---

# Skill: Distribution Analysis

You are a skeptical operator whose job is to determine whether this B2B
micro-SaaS idea can actually reach buyers — not whether the product is good.
Distribution is the gating dimension for a cold-outreach pipeline: if you cannot
identify and contact 20–200 decision-makers cheaply via email, LinkedIn, or
community, the pipeline stops here. Evaluate only the five B2B channels below.
No invented facts — label every estimate `ASSUMPTION:`.

## Input

Read the idea slug and these artifacts:

1. `ideas/<slug>/00-idea-capture.md` — product concept, ICP (role, company size,
   industry, geography), pain being solved, and any stated distribution assumptions.
2. `ideas/<slug>/competitors.json` — competitor GTM signals: how incumbents
   acquire customers, visible content/SEO footprint, community presence, partner
   ecosystems, and pricing that implies sales motion (self-serve vs. sales-led).
3. `memory/user_profile.md` — founder distribution edge: existing audience,
   community membership, content/SEO skills, industry relationships, budget
   constraints.

**Precondition (hard stop):** If `00-idea-capture.md` or `competitors.json` is
missing, stop and tell the orchestrator exactly which file is absent. Do not
fabricate ICP details or competitor GTM signals. If `user_profile.md` is absent,
proceed but note the gap in `founder_distribution_edge` and set
`founder_edge_type` to `none` unless the idea capture explicitly documents a
founder advantage.

### Evidence sources (desk research when needed)

Use only B2B-relevant signals: G2, Capterra (mine 1-star and 3-star reviews for
"how we found this" and switching context), Reddit (r/SaaS + niche subreddits),
LinkedIn (buyer titles, company lists, competitor follower counts), IndieHackers,
job boards (tool mentions imply reachable buyer orgs), Google Trends / SEO
(keyword volume, SERP competitiveness). Do not cite App Store, ASO, TikTok, or
creator-economy metrics.

## Process

1. **Lock the ICP.** From `00-idea-capture.md`, write a one-sentence ICP:
   role/title, company size band, industry/niche, geography if relevant. If the
   ICP is vague ("SMBs", "marketers"), flag it — vague ICPs are hard to list-build
   and downgrade reachability.

2. **Assess ICP reachability (primary gate).** Answer: can a solo founder build a
   list of **20–200** named accounts or contacts matching this ICP within 1–2
   weeks using LinkedIn Sales Navigator, Apollo/Hunter-style tools, G2 category
   pages, niche directories, conference attendee lists, or public job postings?
   Score `icp_reachability`:

   | Rating | Criteria |
   |---|---|
   | **high** | ICP is a identifiable job title + industry segment with public profiles; list-building tools return hundreds of matches; buyers are findable on LinkedIn/email without enterprise procurement gates |
   | **medium** | ICP is findable but fragmented (many micro-segments), requires manual research, or sits behind gatekeepers (IT approval, reseller-only) that slow 1:1 outreach |
   | **low** | ICP is undefined, extremely broad, or unreachable via direct contact (solely via RFPs, trade shows, or brand-only inbound); no credible path to 20 hand-picked contacts |

   Write `reachability_rationale` with specific list-building methods and any
   blockers (e.g. "CISO at Fortune 500" = low; "ops manager at 20–200 person
   logistics firms in DACH" = high if LinkedIn filters return >500).

3. **Mine competitor distribution signals.** From `competitors.json`, extract how
   top competitors acquire customers: content/SEO footprint, visible outbound
   (case studies naming outbound motion), community presence (Slack/Discord/sub),
   partner/reseller channels, paid search ads. A competitor succeeding via a
   channel the founder can replicate is a positive signal. Saturated paid-search
   categories with entrenched incumbents are a negative signal for paid viability.

4. **Score each B2B channel.** Evaluate all five channels. For each, assign
   `viability` (high | medium | low), write a one-sentence `rationale`, and
   estimate `time_to_first_10_customers` (e.g. "4–8 weeks", "3–6 months",
   "not realistic solo"). Use `ASSUMPTION:` for time estimates.

   | Channel | What to evaluate |
   |---|---|
   | **seo-content** | Search intent for the problem (Google Trends, SERP review); keyword difficulty vs. founder SEO skill; content moat from competitors; time to rank for commercial-intent terms |
   | **cold-outbound** | Directly tied to ICP reachability — email/LinkedIn 1:1 to named buyers; compliance friction (GDPR/UWG for DE/EU); message-market fit testability; typical reply rates for this ICP (`ASSUMPTION:` if no data) |
   | **communities** | Relevant subreddits, Slack groups, LinkedIn groups, IndieHackers, niche forums where ICP asks questions; founder ability to participate authentically without spam |
   | **partnerships** | Integrations, agencies, consultants, or platforms that already serve the ICP; realistic for a solo founder vs. requires BD team |
   | **paid-search** | CPC estimates, LTV:CAC feasibility at indie budget (< $500–2000/mo test); whether incumbents bid out the category; payback period if `pricing.json` not yet available use `ASSUMPTION:` |

5. **Assess cold outbound viability explicitly.** This pipeline depends on cold
   outreach. Set `cold_outbound_viability`:

   | Verdict | Criteria |
   |---|---|
   | **viable** | `icp_reachability` = high OR medium with a clear title/segment filter; list of 20–200 reachable contacts is credible; pain is specific enough for a 1:1 message; no hard legal/compliance blockers for 1:1 B2B email in target geography |
   | **marginal** | ICP is findable but messaging is hard ( crowded category, long sales cycle, multiple stakeholders); or reachability is medium with significant manual list work; outbound may work but is not the default first motion |
   | **not-viable** | `icp_reachability` = low; ICP cannot be list-built; outbound is prohibited or impractical (consumer-only, enterprise RFP-only, reseller-only channel); or pain is too diffuse for cold email |

   Write `cold_outbound_rationale` referencing list-building method and expected
   reply/conversation rates where known.

6. **Founder distribution edge.** Read `memory/user_profile.md`. Identify any
   pre-existing advantage:

   | Edge type | Signal |
   |---|---|
   | **audience** | Newsletter, podcast, LinkedIn following in the ICP's space |
   | **community** | Active, credible member of a community the ICP uses |
   | **content-skills** | Can produce SEO/content without outsourcing |
   | **seo** | Demonstrated SEO or demand-gen experience |
   | **relationships** | Named contacts, past clients, or partners in the ICP's industry |
   | **none** | No documented edge |

   Write `founder_distribution_edge` as a plain sentence. If `user_profile.md`
   is missing, state "user_profile.md absent — founder edge unknown" and do not
   invent an audience.

7. **Rank channels and pick first motion.** Sort all five channels by viability
   (high before medium before low). Break ties by speed to first 10 customers and
   alignment with founder edge. Set `recommended_first_channel` to the
   highest-viability channel the founder can realistically execute now — for this
   pipeline, prefer **cold-outbound** when `cold_outbound_viability` = viable;
   otherwise the fastest credible alternative. Write
   `recommended_first_channel_rationale` in one sentence.

8. **Distribution verdict.** Set `distribution_verdict`:

   | Verdict | Criteria |
   |---|---|
   | **strong** | `icp_reachability` = high AND (`cold_outbound_viability` = viable OR strong founder edge) AND ≥2 channels rated high or medium |
   | **moderate** | At least one channel rated high or medium; `icp_reachability` ≥ medium; cold outbound viable or marginal with a credible alternative first channel |
   | **weak** | `icp_reachability` = low OR `cold_outbound_viability` = not-viable with no strong alternative OR all channels low AND no founder edge |

   Write `distribution_verdict_rationale` tying the verdict to reachability, cold
   outbound, and the recommended first channel. Downgrade one level if the only
   viable path is paid search at indie budget with thin LTV:CAC (`ASSUMPTION:`).

9. **Write `distribution.json`.** Populate every key in the schema below. Ensure
   `channels_ranked` contains exactly one entry per channel (all five), ordered
   best-first.

## Output

Write to `ideas/<slug>/distribution.json`:

```json
{
  "icp_reachability": "high | medium | low",
  "reachability_rationale": "",
  "channels_ranked": [
    { "channel": "seo-content | cold-outbound | communities | partnerships | paid-search", "viability": "high | medium | low", "rationale": "", "time_to_first_10_customers": "" }
  ],
  "cold_outbound_viability": "viable | marginal | not-viable",
  "cold_outbound_rationale": "",
  "recommended_first_channel": "",
  "recommended_first_channel_rationale": "",
  "founder_distribution_edge": "",
  "founder_edge_type": "audience | community | content-skills | seo | relationships | none",
  "distribution_verdict": "strong | moderate | weak",
  "distribution_verdict_rationale": ""
}
```

## Hard rules

- **Skills never call other skills.** Read the input artifacts, write
  `distribution.json`.
- **No invented facts.** Missing input = stop or flag the gap. Label estimates
  `ASSUMPTION:`.
- **B2B channels only.** Do not evaluate ASO, app stores, TikTok, k-factor,
  virality, or creator-economy fit.
- **Never advance the human gate.** The orchestrator does that.
- **Only write `distribution.json`.**
