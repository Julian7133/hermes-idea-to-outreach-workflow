# 01 — Devalidation Report

> Filled by `clearframe-devalidation` only. **Auto-aborted:** score < 4/10.
> `boring-and-trends-check` was **not** run (token-saving kill switch).
> Recherche 2026-08-18.

## Verdict
- **Score:** 2/10
- **Go/No-Go:** NO-GO
- **One-line reason:** Die Kernannahme „keine unabhängige, aus dem Agenten-Kontext nicht kompromittierbare Watchdog-Instanz existiert" ist **falsch** — bitsIO betreibt bereits genau dieses Produkt (read-only, architektonisch getrennter Watchdog-Agent), und der Kill-Switch-Teil der Idee ist bereits ein umkämpftes, gut finanziertes Enterprise-Segment (Straiker, RuntimeAI, TrustLogix, Palo Alto), in dem ein Solo-Gründer ohne Security-Trackrecord über Cold Outreach nicht reachbar konkurrieren kann.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | Security-/Platform-Engineering-Leads in Firmen, die autonome Coding-/Ops-Agenten produktiv betreiben — nicht „jede Firma mit einem Chatbot". |
| **L**onging/Job | Eine vom überwachten Agenten unabhängige Instanz soll Fehlverhalten erkennen und im Ernstfall autonom eingreifen (Firewall/Kill), bevor Schaden entsteht. |
| **E**xisting solution | **Verifiziert bereits besetzt:** bitsIO AI Watchdog (read-only, unabhängiger Agent), Straiker Agentic Kill Switch, RuntimeAI Control Plane (Kill Switch <100ms), TrustLogix TrustAI Kill Switch, Palo Alto Prisma AIRS Runtime Firewall, Lakera Guard, Lasso Security. |
| **A**lternative cost | Heute: eines der oben genannten Produkte lizenzieren, oder in-house Scripting/Observability (Datadog, eigene Logs) — kein „nichts existiert"-Vakuum. |
| **R**eachability | Käufer sind Enterprise-Security-/Platform-Teams mit langen Sales-Zyklen, SOC2/Audit-Anforderungen und hohem Vertrauensbedarf — für einen unbekannten Solo-Anbieter per Cold-Mail praktisch nicht in 20–50 Kontakten validierbar. |
| **F**requency | Hoch — Monitoring läuft kontinuierlich, gute Retention-Grundlage *falls* ein Kunde gewonnen wird. |
| **R**evenue | ASSUMPTION: €150–400/Monat je überwachtem Host plausibel am Markt, aber Konkurrenzprodukte sind bereits enterprise-bepreist ("Tausende $/Monat" laut Marktbeobachtung) — Preis ist nicht das Problem, Vertrauen und Distribution sind es. |
| **A**dvantage | Keiner benannt. Kein Security-Trackrecord, keine bestehende Audience, kein Zugang zu Referenzkunden. |
| **M**oat-later | Die Fourier-Transformation der Aktivität ist eine Erkennungstechnik, kein struktureller Moat — konkurrierende, mit $85M+ finanzierte Anbieter (Straiker) können jede Detection-Methode nachbauen oder überholen. |
| **E**ffort | 8–9/10 solo: reale Isolations-Architektur, Red-Teaming, False-Positive-Tuning pro Kunde, plus die Compliance-/Audit-Erwartung, die Sicherheitskäufer voraussetzen. |

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** ASSUMPTION: einige Tausend Firmen weltweit betreiben aktuell produktive autonome Agenten mit Netzwerk-/Dateisystemzugriff in einem Umfang, der einen dedizierten Watchdog rechtfertigt — wachsend (mean ~37 Agenten/Firma laut Dez-2025-Survey), aber der adressierbare Teil, der *heute* budgetiert kauft, ist klein und praktisch komplett Enterprise.
- **Saturation / competition:** **Verifiziert stark besetzt.** bitsIO AI Watchdog (nahezu identische Positionierung: unabhängiger, read-only Agent, der selbst nicht kompromittiert werden kann). Straiker „Agentic Kill Switch" (Serie-A $64M von Bain Capital Ventures/Lightspeed, Gesamtfinanzierung $85M). RuntimeAI (Kill Switch <100ms, 4 Preisstufen Foundation/Guardian/Fortress/Sovereign, öffentliche Preise nicht gelistet — Enterprise-Sales-Motion). TrustLogix TrustAI (Kill Switch + Governance-Plattform, Mai 2026 gelauncht). Palo Alto Networks Prisma AIRS 3.0 (AI Runtime Firewall). Lakera Guard (>98% Detection, <50ms Latenz, kostenlose Tier vorhanden). Lasso Security (MCP-fokussiert).
- **Category maturity & growth:** **Growth**, nicht Emerging — mehrere Anbieter haben bereits benannte "Kill Switch"-Features gelauncht (2026), eine gut finanzierte Series-A-Firma (Straiker) ist bereits im Markt. Das Fenster für einen unbemerkten Nischeneinstieg ist kleiner als die Idee unterstellt.
- **CAC vs CLV sanity:** Enterprise-Security-Sales erfordert typischerweise Referenzen, Pilotphasen, Compliance-Nachweise — CAC über Cold Outreach für einen Solo-Anbieter ist strukturell sehr hoch (Monate an Sales-Zyklus je Deal) und im 20–50-Kontakte-Validierungsrahmen praktisch nicht messbar; ein „Reply" ist hier kein verlässliches Kaufsignal, weil Security-Buyer aus Neugier/Skepsis antworten können, ohne kaufbereit zu sein.
- **Difficulty score:** 9/10
- **Key risks:**
  1. **Premise widerlegt** — ein nahezu identisch positioniertes Produkt (bitsIO AI Watchdog: unabhängiger, read-only Wächter-Agent) existiert bereits am Markt.
  2. **Gut finanzierte Konkurrenz** — Straiker ($85M) hat exakt das Kill-Switch-Feature bereits gelauncht; ein Solo-Gründer kann bei Erkennungsqualität/Vertrauen nicht mithalten.
  3. **Falsches GTM-Motiv für diese Pipeline** — Enterprise-Security-Sales mit langen Zyklen und Compliance-Anforderungen passt nicht zum Validierungsmodell „20–50 Cold-Mails, ≥1 Reply oder ≥3 Klicks in wenigen Wochen"; selbst ein guter Reply-Rate-Wert würde hier keine echte Kaufbereitschaft beweisen.

## Cited market signals (researched 2026-08-18)
- Fast identisches Konkurrenzprodukt bereits am Markt: [AI Watchdog by bitsIO](https://www.bitsioinc.com/ai-watchdog) — „always-on, read-only AI security agent … strictly read-only and can sound the alarm but can never change another agent, act on its behalf, or be turned into an attack tool."
- Kill-Switch-Segment ist bereits umkämpft und finanziert: [Straiker Agentic Kill Switch](https://www.straiker.ai/blog/agentic-kill-switch-ai-agent-security-for-enterprise-and-coding-agents) (Series A $64M, Gesamt $85M, Bain Capital Ventures/Lightspeed); [RuntimeAI Kill Switch](https://runtimeai.io/blog/2026-05-12-kill-switch.html) (Broadcast-Response <100ms, 4 Preisstufen); [TrustLogix TrustAI Kill Switch](https://www.prweb.com/releases/trustlogix-gives-enterprises-a-kill-switch-for-ai-agents-with-the-governance-platform-to-back-it-up-302782662.html) (Mai 2026); [Palo Alto Prisma AIRS 3.0](https://www.straiker.ai/blog/top-7-ai-runtime-security-platforms) (AI Runtime Firewall, März 2026).
- Enterprise-Preisniveau bestätigt: Security-Tooling in dieser Kategorie ist laut Marktübersicht „priced in thousands of dollars per month for enterprise deployments" ([TrueFoundry Buyer's Guide 2026](https://www.truefoundry.com/blog/enterprise-ai-agent-security-solutions)); Lakera Guard nennt konkrete Kennzahlen: >98% Detection-Rate, <50ms Latenz, 0.01% False-Positive-Rate ([Nightfall AI Vergleich](https://www.nightfall.ai/blog/prompt-injection-protection)).
- Demand-Signal vorhanden, aber primär Enterprise: 88% der Firmen mit produktiven Agenten berichten mind. einen Sicherheitsvorfall, Ø $4.7M Schaden je Breach, Prompt-Injection +340% YoY ([Shattered.io Agentic AI Security Report 2026](https://shattered.io/agentic-ai-security-2026/)) — Zahlen stammen aus einer einzelnen Marktforschungs-Quelle, nicht unabhängig querverifiziert; als ASSUMPTION-Kontext behandeln, nicht als belastbare Statistik zitieren.
- Deployment-Wachstum bestätigt Kategorie-Momentum: Ø ~37 Agenten pro Unternehmen (Stand Dezember 2025) ([Shattered.io](https://shattered.io/agentic-ai-security-2026/)).

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht empfohlen über diese Pipeline.* Enterprise-Security-Sales mit langem Zyklus passt nicht zum 20–50-Kontakte-Cold-Mail-Validierungsmodell dieses Workflows. Falls die Idee weiterverfolgt wird: zuerst 5–10 qualitative Gespräche mit Security-/Platform-Leads, die bereits Agenten produktiv betreiben, zur Frage „Würden Sie eine unabhängige Watchdog-Instanz zusätzlich zu [bitsIO/Straiker/RuntimeAI] einsetzen — und warum nicht deren Produkt?"
- **Kill signal:** N/A — bereits auf Desk-Stufe gekillt.

## Notes / assumptions
- ASSUMPTION: Preispunkt €150–400/Monat pro Host nicht am Markt verifiziert (Wettbewerber nennen keine öffentlichen Preise) — realistisch eher höher, da Enterprise-Sales-Modell.
- ASSUMPTION: Die Fourier-Transformations-Erkennung wäre technisch differenzierend — konnte nicht verifiziert werden, ob Wettbewerber bereits ähnliche Spektralanalyse-Ansätze einsetzen; angesichts der Finanzierungsdichte der Konkurrenz aber kein verlässlicher Moat.
- Kein Founder-Unfair-Advantage (Security-Trackrecord, bestehende Audience, Referenzkunden) in `00` dokumentiert.
</content>
