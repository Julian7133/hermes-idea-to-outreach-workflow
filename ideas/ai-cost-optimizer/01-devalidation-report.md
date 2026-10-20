# 01 — Devalidation Report

> Filled by `clearframe-devalidation` only. **Auto-aborted:** score < 4/10.
> `boring-and-trends-check` was **not** run (token-saving kill switch).

## Verdict
- **Score:** 3/10
- **Go/No-Go:** NO-GO
- **One-line reason:** Der Wedge wird von beiden Seiten zerdrückt — self-serve
  LLM-Gateways mit automatischem Routing/Caching lösen dasselbe Problem
  kontinuierlich für $29–99/Mo (statt einmalig €2–4k), und ein direkter
  Consulting-Wettbewerber (ActiveWizards) bietet exakt dieselbe Audit-Leistung
  bereits an (Stand August 2026); dazu haben laut Branchensurvey nur ~52 % der
  Teams überhaupt Evals, gegen die getestet werden könnte.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | Technische Teams (2–50 Personen) mit spürbarem monatlichem LLM-API-Spend, die eigene Prompt-Chains/Agenten/RAG-Pipelines in Produktion haben — nicht „jedes AI-Startup". |
| **L**onging/Job | Kosten senken bei gleichbleibender Output-Qualität, nachgewiesen gegen die eigenen Evals, ohne selbst Zeit in Modellvergleich zu stecken. |
| **E**xisting solution | Self-serve LLM-Gateways mit eingebautem Routing/Caching (LiteLLM, TrueFoundry, ClawRouters, Not Diamond), Cloud-Kostenmonitore (Amnic, nOps), Consulting-Boutiquen (ActiveWizards), oder „nichts tun". |
| **A**lternative cost | Verifiziert: Field-Reports sprechen von 40–60 % reinem Token-Waste in Produktions-Workloads (nOps) — der Schmerz ist real, aber bereits gut adressiert durch automatisierte Tools. |
| **R**eachability | Technische Entscheider (CTO/Head of Eng) über LinkedIn/Cold-Outreach erreichbar — aber der Pitch muss gegen ein $49/Mo-Self-Serve-Tool UND einen bestehenden Consulting-Anbieter differenzieren. |
| **F**requency | Einmaliges Audit-Projekt ohne garantierte Wiederkehr; Retainer-Nachfrage ist ASSUMPTION, nicht verifiziert. Modell-Landschaft und Preise ändern sich monatlich — ein Einmal-Audit veraltet schnell, was strukturell **für** ein laufendes Tool statt eine punktuelle Beratung spricht. |
| **R**evenue | €2.000–4.000 pro Engagement — auskömmlicher Ticketpreis für Solo, aber schwer zu verkaufen, wenn die Alternative $29–99/Mo für kontinuierliche (nicht einmalige) Optimierung kostet. |
| **A**dvantage | Keiner benannt. Kein dokumentiertes LLM-Ops-Track-Record oder bestehende Audience in `00`. |
| **M**oat-later | Keines ersichtlich — die Methodik (drei Varianten gegen Evals testen) ist genau das, was Gateway-Tools bereits automatisiert und kontinuierlich anbieten. |
| **E**ffort | 6/10 solo: Eval-Harness + Multi-Provider-Testing-Pipeline pro Kundenstack bauen; jeder Kunde hat einen anderen Stack (LangChain, eigene Orchestrierung, verschiedene Provider), was die Wiederverwendbarkeit senkt. |

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** ASSUMPTION: einige Tausend Teams
  weltweit mit produktionsreifen LLM-Workflows UND messbarem Kostendruck UND
  vorhandenen Evals als Testgrundlage — die dreifache Bedingung schrumpft den
  adressierbaren Markt gegenüber der breiteren „alle AI-Teams"-Annahme
  erheblich.
- **Saturation / competition:** **VERIFIED (August 2026): hoch besetzt.**
  Self-serve Gateways mit automatischem Kosten-Routing/Caching: LiteLLM (Free
  Tier bis 10k Requests, ab $49/Mo), ClawRouters (Free BYOK, Basic $29/Mo, Pro
  $99/Mo), Not Diamond ($0,05/Mio. geroutete Tokens), TrueFoundry (Routing +
  Caching automatisiert, Preis nicht öffentlich). Direkter
  Service-Wettbewerber: ActiveWizards „LLM Cost Audit" — exakt derselbe Scope
  (Modellwahl, Routing, Caching, Prompt-Effizienz, gerankte Empfehlungen,
  schriftlicher Report), Preis nicht öffentlich, aber ein Principal Engineer
  reviewt jede Anfrage persönlich — strukturell dasselbe Consulting-Format wie
  die geplante Idee.
- **Category maturity & growth:** **Growth**, nicht Emerging. Der
  LLM-Router-Markt wird laut Marktprognose bis 2030 auf $6,52 Mrd. wachsen
  (21 % CAGR), der angrenzende AI-Gateway-Markt auf $7,21 Mrd. — das ist ein
  bereits gut kapitalisiertes, wachsendes Tool-Segment mit mehreren
  etablierten Anbietern, nicht eine unbesetzte Nische.
- **CAC vs CLV sanity:** ASSUMPTION: €3.000 Durchschnittsticket, aber kein
  Retainer garantiert → CLV = einmaliger Projektwert. CAC für ein Cold-Outreach-
  Projektgeschäft an technische Entscheider (Vertrauen für Prompt-/Log-Zugriff
  nötig) ist strukturell hoch; gleichzeitig muss der Pitch gegen ein
  $29–99/Mo-Tool bestehen, das dasselbe Ergebnis kontinuierlich statt punktuell
  liefert — das drückt den wahrgenommenen Wert des Einmal-Audits.
- **Difficulty score:** 6/10
- **Key risks:**
  1. **Commoditisiert von unten** — self-serve Gateways lösen dieselbe
     Kernaufgabe (Modellwahl/Routing/Caching optimieren) automatisiert und
     laufend für einen Bruchteil des Projektpreises.
  2. **Direkter Consulting-Wettbewerber existiert bereits** (ActiveWizards) mit
     nahezu identischem Scope und Deliverable.
  3. **Voraussetzung „vorhandene Evals" limitiert die Zielgruppe** — laut
     Branchensurvey haben nur ~52 % der Teams überhaupt systematische Evals;
     ohne Evals fehlt die Testgrundlage, auf der die gesamte Methodik beruht.

## Cited market signals (researched 2026-08-18)
- Self-serve Kosten-Tools und Preise: [LiteLLM/ClawRouters/Not Diamond Vergleich](https://www.clawrouters.com/blog/best-llm-routers-2026), [Braintrust Router-Vergleich 2026](https://www.braintrust.dev/articles/best-llm-routers-2026) — LiteLLM Free bis 10k Requests / ab $49/Mo; ClawRouters Free (BYOK) / Basic $29/Mo / Pro $99/Mo; Not Diamond $0,05/Mio. Tokens.
- Automatisiertes Routing + Caching bei Gateway-Anbietern (kein Consulting nötig): [TrueFoundry — LLM Cost Optimization](https://www.truefoundry.com/blog/llm-cost-optimization) — Intelligent Routing (z. B. 80 % Traffic auf günstigeres Modell), semantisches Caching mit 30–50 % Kostenreduktion bei geeigneten Workloads.
- Direkter Service-Wettbewerber mit identischem Scope: [ActiveWizards — LLM Cost Audit](https://activewizards.com/services/llm-cost-audit/) — Audit über Modellwahl, Routing, Caching, Prompt-Effizienz, Batching, Output-Validierung, Vertragskonditionen; schriftlicher Report mit gerankten Empfehlungen. Kein öffentlicher Preis.
- Marktgröße/-wachstum: [ClawRouters/Entelligence Router-Marktreports](https://entelligence.ai/blogs/9-best-llm-routers-and-model-routing-tools-in-2026) — LLM-Router-Markt $6,52 Mrd. bis 2030 (21 % CAGR), AI-Gateway-Markt $7,21 Mrd. — Growth-Kategorie, nicht Emerging.
- Token-Waste als Pain-Signal: [nOps — 10 Best LLM Cost Optimization Tools 2026](https://www.nops.io/blog/llm-cost-optimization-tools/) — Field-Reports: 40–60 % reiner Token-Waste in Produktions-Workloads bei VC-finanzierten SaaS-Startups.
- Eval-Adoption als limitierender Faktor: [LangChain — State of Agent Engineering](https://www.langchain.com/state-of-agent-engineering) (Survey, 1.300+ Fachleute) — 89 % nutzen Observability, aber nur 52,4 % führen Offline-Evals und 37,3 % Online-Evals durch; Gartner-Prognose: 60 % der Engineering-Teams nutzen AI-Eval/Observability-Plattformen bis 2028 (von 18 % 2025).
- Consulting-Preisrahmen zur Einordnung des €2–4k-Preispunkts: [Nicola Lazzari — AI Consultant Pricing US 2026](https://nicolalazzari.ai/guides/ai-consultant-pricing-us) — Freelance-AI-Consulting $100–300/h, Tagessätze $600–1.200 (Freelancer) bzw. $1.500–2.500 (Agentur).

## Riskiest assumption test (RAT)
- **What to test next:** *Not recommended via this pipeline.* Falls trotzdem:
  5–10 qualitative Gespräche mit technischen Leads, die produktive
  LLM-Workflows UND vorhandene Evals haben — Frage: „Würden Sie für ein
  Einmal-Audit zahlen, wenn ein $49/Mo-Gateway-Tool dieselbe Optimierung
  laufend automatisiert?" — **vor** jedem Aufbau oder Cold Outreach. Desk
  Devalidation sagt: hier stoppen.
- **Kill signal:** N/A — bereits auf Desk-Stufe gekillt.

## Notes / assumptions
- ASSUMPTION: konkretes Ausmaß der 2025/2026-Preissenkungen bei LLM-APIs aus
  `00` nicht separat verifiziert; als Kontext-Trend plausibel, aber nicht der
  entscheidende Faktor für das Verdikt.
- ASSUMPTION: Nachfrage nach monatlichem Monitoring-Retainer nach dem
  Einmal-Audit unbestätigt — im Rahmen dieses Passes nicht recherchierbar
  (keine öffentlichen Konversionsdaten für dieses Geschäftsmodell gefunden).
- Kein Gründer-Unfair-Advantage (LLM-Ops-Track-Record, bestehende Audience) in
  `00` dokumentiert.
