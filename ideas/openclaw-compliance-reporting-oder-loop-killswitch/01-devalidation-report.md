# 01 — Devalidation Report

> Gefüllt durch `clearframe-devalidation` (Kritiker gegen `00c-realist.md`) + `boring-and-trends-check`. Kalibriert nach K1–K6. Auto-Kill erst nach Synthese.
> Research: 2026-09-07 | 5 Suchen | Auslöser: `00c` wählt Ausprägung A mit Fokus (b) Loop/Kosten-Kill + Upsell (a) Compliance-Reporting

## Verdict

- **outreach_score:** 3/10 — NO-GO
- **product_score:** 5/10 — nicht buildable (Schwelle 6)
- **Go/No-Go (Hermes-Gate):** NO-GO
- **One-line reason:** Realist-Plan (b) zielt auf Solo-Freelancer — damit kein Cold-Outreach-Case (K4, UWG §7(2) greift nicht, aber Pipeline verlangt firmenförmige Leads) und in der Kosten-/Loop-Nische von 6+ gratis OSS-Tools mit hard deny/kill bereits dicht besetzt; Compliance-Pfad (a) wäre outreach-fähig, ist aber als reines Reporting von 2 gratis openclaw-Skills (hash-chained Art.12) abgedeckt — in beiden Pfaden nach aktiver Wedge-Suche (DACH-Sprache/DSGVO/Support, Preis-Lücke) kein belegter, zahlungswilliger Wedge.

## CLEARFRAME breakdown (gegen 00c)

| Lens | Assessment |
|---|---|
| **C**ustomer | Solo-Freelancer DACH, 1–3 MA, nutzt Claude Code/openclaw produktiv, hatte bereits Runaway/Loop — nicht "jedes KMU". Compliance-Käufer wäre DSB/GRC in 20–60-MA-Kanzlei, aber nicht der Erst-Käufer im Plan. |
| **L**onging/Job | Budget-Runaway/Endlos-Loop vor €50–500 Schaden stoppen und danach unbeaufsichtigt laufen lassen; parallel Audit-Log für "menschliche Aufsicht nachweisbar" — Job ist Versicherung, nicht Produktivitätsgewinn. |
| **E**xisting solution | 6+ gratis OSS: claude-guard (deny/kill, 0 deps), loopguard (SIGSTOP, 5 Heuristiken), claude-cost-guard (PostToolBatch halt), overloop (determinist. hash), AgentWatch Community (free 50k req), kill-switch/agent-guard (hook+proxy 402) — plus AgentWatch paid $39/$99 und CC Switch gratis. Für (a): roosch269/agent-audit-trail (MIT-0, Art.12 hash-chain), airblackbox/openclaw-air-trust (Audit-Ledger + Consent-Gate), EasyClaw-Dashboard. |
| **A**lternative cost | ASSUMPTION: 1–2 Runaways/Quartal à €20–240 + 2h Babysitting pro Run; bei DACH-Freelancer mit €200–2.000 Monatsbudget spürbar, aber selten existenzbedrohend. Compliance: Alternative ist gratis Skill + manuelles PDF — Kosten sind Reputations-/Bußgeldrisiko, nicht direkte Ausgabe. |
| **R**eachability | **Plan (b) nicht cold-outreach-fähig:** Solo-Dev ist B2C-Anonyme, keine Firmenadresse, keine "zuständige Person" — Pipeline verlangt 20–50 firmenförmige Leads (K4). Erreichbar nur über SEO/Community/Marktplatz (ClawHub, Discord, Reddit), nicht über Hermes-Stage-3. Plan (a) wäre outreach-fähig (Kanzlei+DSB), aber dann anderer Käufer/Preis. |
| **F**requency | Loop/Budget: anlassbezogen (wenn Agent läuft), danach monatliche Versicherung — Frequenz mittel, Retention nur solange Agent produktiv bleibt. Compliance: monatlicher Report — höhere Frequenz, aber nur bei hochriskigen Systemen (Art.12/14). |
| **R**evenue | ASSUMPTION: €29/Mo Solo × 150 Kunden = €52k ARR; €49/Mo Pro × 80 = €47k ARR — bei 8–12 Monaten Retention (Solo-Churn hoch) und Gratis-Anker schwer zu halten. AgentWatch-Anker $39/Mo belegt Zahlungsbereitschaft, aber 0-€-Alternativen drücken CLV. |
| **A**dvantage | K6 zutreffend: Julians Agent-Orchestrierung/bb/openclaw-Tiefe + 20 Projekte + osx-menulet + DACH-Marke — echter Vorsprung für Log-Adapter/Heuristik, aber kein Vertriebsvorteil für B2C-Solo-Markt. |
| **M**oat-later | Baseline-Lernen über Zeit (persönliche Loop-Muster), lokale Menüleiste als Besitz — verwundbar: Gratis-Tools lernen ebenfalls, Plattform könnte Feature gratis einbauen (Anthropic `preToolUse` Hook). |
| **E**ffort | 4–6 Tage solo: Log-Adapter + Token-Schätzung + Loop-Heuristik + Audit-Log + Tages-PDF — klein, kein ML, kein Backend. |

## CLEARFRAME + Market Reality

- **TAM (sanity, not spurious precision):** ASSUMPTION: DACH-Freelancer/Solo-Devs mit Claude Code/openclaw *produktiv* im Einsatz: ~800–2.500 Personen (2026, Community-Schätzung, nicht verifiziert). Davon mit Runaway-Schmerz und Zahlungswillen (€29): ~150–400. Compliance-TAM für openclaw-spezifisches Reporting: noch kleiner — offene openclaw-Installationen in regulierten KMU <500. Kein breiter Markt, Nische in Entstehung.
- **Saturation / competition:** **Sehr hoch (b), hoch (a) — beide Pfade gratis verankert.** (b) 6 gratis OSS mit identischem Job (hard budget/loop block): claude-guard (free, 0 deps, warn≥80% deny≥100% kill≥150%), loopguard (free, 5 Heuristiken, SIGSTOP, $20/$50/$200 caps), claude-cost-guard (free, $10 session/$2 step), overloop (free, threshold 3), kill-switch/agent-guard (free hook+proxy 402), AgentWatch Community (free 50k req) — paid AgentWatch $39 (150k req) / $99 (500k req) belegt, dass Geld fließt, aber Gratis deckt Solo-Bedarf. Kein DACH-Anbieter gefunden. (a) agent-audit-trail (MIT-0, gratis, EU AI Act Art.12 hash-chain, Python stdlib only), openclaw-air-trust (gratis, Art.9–15 Coverage), EasyClaw (integriertes Art.12/14 Audit-Logging) — daneben bezahlte Runtime-Plattformen (RuntimeAI, AgentAudit £, AgentApproved free-tier) — alle decken "menschliche Aufsicht nachweisbar" als gratis Skill vs. Enterprise Suite ab.
- **Category maturity & growth:** Growth — Agent-Adoption steigt, aber Kategorie "Agent-Spending-Guard" ist 2026 *Crowded Growth* (viele gratis Launches binnen 8 Wochen), nicht Emerging. Risk verschiebt sich von Awareness zu Preis-/Gratis-Druck (K3). Compliance-Logging ist Emerging→Growth getrieben durch EU AI Act (Enforcement 02.08.2026, Digital Omnibus verschiebt Annex-III auf 02.12.2027 — [SteelSpine](https://steelspine.ai/compliance/) / [RuntimeAI](https://runtimeai.io/blog/2026-05-10-eu-ai-act-compliance.html)), aber genau deshalb sprießen gratis Skills.
- **CAC vs CLV sanity:** (b) CLV ASSUMPTION: €29 × 8 Monate = €232 (Solo-Churn hoch). CAC via Cold Outreach nicht anwendbar — Solo-Devs nicht kalt anschreibbar (K4). CAC via SEO/Community/Content: €30–80 (Content + Zeit) → CLV/CAC ~3–5, knapp tragfähig, aber nicht über Hermes-Pipeline skalierbar. (a) CLV €49–99 × 10 Monate = €490–990, CAC via DSB-Outreach €150–400 → marginal, aber prinzipiell outreach-fähig — nur nicht der gewählte Plan.
- **Difficulty score:** 4/10 (b) / 3/10 (a) — technisch leicht, GTM schwer wegen Gratis-Sättigung und falschem Kanal.
- **Key risks:**
  1. **Kanal-Mismatch (K4):** Bestes Produkt (b) ist kein Cold-Outreach-Case — Hermes misst Vertrieb, nicht Bau. Outreach 2–3 ist hier Vertriebsurteil, kein Produkturteil.
  2. **Gratis-Anker (K3):** 6 gratis OSS decken hard kill/loop detection bereits ab — €29 muss gegen 0 € gewinnen ohne strukturellen Mehrwert (DACH-Sprache/DSGVO ist für Solo-Dev kein Kaufgrund belegt).
  3. **Kein Wedge nach Suche (K2):** Gezielt gesucht: DACH-Support/SLA, EU-Hosting/DSGVO, deutschsprachige Oberfläche, Preis-Lücke unter $39, bb-Tiefe — nichts als zahlungswilliger Wedge verifiziert; einziger Rest ist "deutschsprachig + lokal + DSB-PDF", zu schmal für €29/49.

## Cited market signals (researched 2026-09-07)

- AgentWatch paid: Free 50k req, Starter $39/150k, Pro $99/500k, Enterprise custom — loop detection + budget enforcement via 2-line proxy ([agent-watch.dev](https://agent-watch.dev/) / [AgentWatch-dev/AgentWatch](https://github.com/AgentWatch-dev/AgentWatch)).
- Gratis Loop/Kosten-Guards: loopguard (SIGSTOP, 5 Heuristiken, $20 session default) ([loop-eng/loopguard](https://github.com/loop-eng/loopguard)), claude-guard (hard deny≥100% kill≥150%, 0 deps) ([LuciferDono/claude-guard](https://github.com/LuciferDono/claude-guard)), claude-cost-guard ($10 session/$2 step, PostToolBatch halt) ([oggeh-dev/claude-cost-guard](https://github.com/oggeh-dev/claude-cost-guard)), overloop (determinist. hash, threshold 3, deduplication) ([pypi/overloop](https://pypi.org/project/overloop/)), kill-switch/agent-guard (hook + proxy HTTP 402) ([Divinci-AI/kill-switch](https://github.com/divinci-ai/kill-switch/)), mishanefedov/agentwatch (local TUI 220KB, multi-agent) ([mishanefedov/agentwatch](https://github.com/mishanefedov/agentwatch)).
- CC Switch: gratis, open-source, lokale Provider-Router + Usage-Dashboard für Claude Code/Codex/Gemini/openclaw — zeigt, dass Usage-Tracking selbst gratis ist ([farion1231/cc-switch](https://github.com/farion1231/cc-switch)).
- Compliance gratis: agent-audit-trail (MIT-0, hash-chained NDJSON, Art.12/14, zero deps) ([openclaw/skills agent-audit-trail](https://github.com/openclaw/skills/blob/main/skills/roosch269/agent-audit-trail/SKILL.md)), openclaw-air-trust (HMAC-SHA256 ledger, consent gate, injection detector, Art.9–15) ([airblackbox/openclaw-air-trust](https://github.com/airblackbox/openclaw-air-trust)), EasyClaw human-oversight guide (Art.14 dashboard, audit logging) ([openclaw.easylab.ai](https://openclaw.easylab.ai/en/governance/human-oversight)).
- Compliance paid/enterprise: AgentAudit (£, Art.12 evidence packs, 7yr retention) ([agentaudit.co.uk](https://www.agentaudit.co.uk/solutions/eu-ai-act/)), AgentApproved (free tier, Ed25519-signed, 6 Art.12 requirements) ([agentapproved.ai](https://agentapproved.ai/eu-ai-act.html)), RuntimeAI (runtime control plane, 84 days to deadline Artikel) ([runtimeai.io](https://runtimeai.io/blog/2026-05-10-eu-ai-act-compliance.html)), SteelSpine (local-first, RFC3161/eIDAS timestamping, verifier ohne Vendor-Trust) ([steelspine.ai](https://steelspine.ai/compliance/)), Vindicara AIR (Art.12 logging + Art.73 incident) ([vindicara.io](https://vindicara.io/solutions/eu-ai-act)).
- EU AI Act Timeline: Art.12/14 enforcement 02.08.2026 (Digital Omnibus verschiebt Annex-III/FRA auf 02.12.2027, Art.50 bleibt 02.08.2026) — [SteelSpine](https://steelspine.ai/compliance/) + [KLA](https://kla.digital/blog/best-eu-ai-act-compliance-software-2026).
- Nachfrage-Signal: GitHub Issues "doom_loop permission gate" (Anthropic Issues #73307, built-in loop detection unimplemented) und CC-Switch Tutorials — Community diskutiert Runaway als offenes Problem, aber Lösung wird als gratis Hook erwartet, nicht als Kauf.

## Boring & Trends check

- **Boring/niche defensibility:** Sehr boring — Agent-Budget-Guard und Audit-Logging sind unsexy Infrastruktur, kein YC-Hype. Genau deshalb nicht von Big Tech besetzt, aber auch deshalb von Gratis-OSS überschwemmt (jeder Dev baut sich den Guard selbst). Moat via Langeweile greift hier nicht: Langeweile schützt vor VC, nicht vor 6 gratis GitHub-Repos.
- **Sociological trend:** **"Solo-Dev Agent-Autonomie ohne Babysitting"** — DACH-Freelancer lassen Agenten unbeaufsichtigt laufen und erleben Runaway als reales Kosten-/Zeitrisiko → Nachfrage nach "Versicherung" steigt mit Claude Code/openclaw-Adoption 2026. Quelle: Community-Diskussionen + diverse Launch-Ankündigungen 2026 für genau diesen Job (siehe LoopGuard/claude-guard/kill-switch Launches, alle Q2–Q3 2026).
- **Technological trend:** **"PreToolUse/PostToolBatch Hooks als billige Kill-Fläche"** — Anthropic/Claude Code und openclaw haben 2026 Hook-Punkte geöffnet, die hard deny/kill in <10ms ohne Modell/Netzwerk erlauben (claude-guard/overloop/claude-cost-guard nutzen genau das) — macht Loop-Guards trivial baubar, senkt aber zugleich die Zahlungsbereitschaft (jeder kann es gratis nachbauen). Verifiziert via Hook-Docs + alle 3 gratis Implementierungen oben.

## Riskiest assumption test (RAT)

- **What to test next:** Nicht via Hermes-Stage-3 (kein Cold-Outreach-Case). Stattdessen 10 Interviews + Post in Claude Code Discord/Reddit r/ClaudeAI: "Hattest du Runaway/Loop — was kostete er, würdest du €29/Monat zahlen?" Plus Fake-Door auf ClawHub: "Claude Code Budget Guard — lokal, €29" mit E-Mail-Capture. Kill-Signal: <3/10 sagen "ja, würde zahlen" und Gratis-Tools werden als "reicht mir" genannt.
- **Kill signal:** 30 SEO-/Community-Leads, 0 zahlende Conversions und durchgängig "nutze bereits claude-guard/loopguard gratis" → `status: validation-failed` im Community-Kanal (nicht via Mail-Send).

## Notes / assumptions

- ASSUMPTION: DACH-Solo-TAM 800–2.500 produktive Claude Code/openclaw-Nutzer — nicht verifiziert, Community-Chatter als Proxy, keine harte Quelle gefunden.
- ASSUMPTION: Retention 8–12 Monate für Solo-Tool — keine öffentliche Benchmark für Agent-Guards, aus generischem Indie-Hacker-Churn abgeleitet.
- Gratis deckt 80–90% des technischen Jobs — DACH-Aufpreis (deutsche Oberfläche/Support) ist spekulativ, kein Preis-Signal gefunden (K2-Suche negativ).
- Haftungsfrage (a) "Compliance-Reporting" vs. Rechtsberatung bleibt ungeklärt — Disclaimer/Ampel statt Rechtsurteil wurde als Pflicht notiert, nicht geprüft.
