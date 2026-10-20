# 01 — Devalidation Report

> Filled by `clearframe-devalidation` + `boring-and-trends-check`.
> **Revision 2026-08-18.** Ersetzt das Urteil vom 18.08.2026 (PR #5,
> outreach_score 2/10, NO-GO). `requeueReason` aus dem Vacation-Orchestrator:
> "Kill weil bitsIO existiert - keine Wedge-Suche, DACH-/Compliance-Nische
> ungeprüft (K2)." Diese Revision wendet K1–K6 aus
> `/Users/julianberlow/dev/vacation-run/ORCHESTRATOR-PROMPT.md` an, insbesondere
> K2 (Wedge-Suche statt Wettbewerb-als-Kill) und K4 (getrennte
> outreach_score/product_score). Alte Recherche (bitsIO, Straiker, RuntimeAI,
> TrustLogix, Palo Alto, Lakera, Lasso) wurde übernommen und um die fehlende
> Wedge-Suche ergänzt — nicht neu erfunden.

## Verdict
- **outreach_score:** 5/10
- **product_score:** 6/10
- **Go/No-Go (Outreach):** NO-GO (unter Stage-2-Schwelle 7, aber über
  Auto-Kill-Schwelle 4 — Ausgang offen, nicht automatisch verworfen)
- **One-line reason:** Wettbewerb ist real (bitsIO, Straiker, RuntimeAI,
  TrustLogix), aber alle vier sind US-Enterprise mit undurchsichtiger
  Custom-Preisgestaltung, Demo-Sales-Motion und ohne erkennbare
  DACH-/deutschsprachige/GDPR-explizite Positionierung — eine gezielte
  zweite Suche nach genau diesem Segment fand **keinen** deutschsprachigen
  oder DACH-fokussierten Anbieter für einen unabhängigen Agent-Watchdog;
  der Wedge ist damit benennbar, aber unbewiesen tragfähig (Ausgang offen),
  und die Enterprise-Sales-Motion der Incumbents bleibt für 20–50
  Cold-Mails an Mittelstand grundsätzlich reachable, nur eben unbewiesen.

## CLEARFRAME breakdown

| Lens | Assessment |
|---|---|
| **C**ustomer | Security-/Platform-Verantwortliche in deutschsprachigen (DACH) KMU/Mittelstand, die Coding-/Ops-Agenten (Claude Code, OpenClaw-artige Frameworks) produktiv betreiben — nicht US-Enterprise-Fleet-Betreiber wie bei bitsIO/Straiker. |
| **L**onging/Job | Unabhängige Instanz, die Input-Quellen/Output-Ziele des Hauptagenten beobachtet und im Zweifel Firewall/Kill zieht — **plus** ein Compliance-Artefakt (Log, Bericht), das gegenüber BSI/Geschäftsführung als "menschliche Aufsicht/Betriebsüberwachung" vorzeigbar ist. |
| **E**xisting solution | bitsIO AI Watchdog, Straiker Agentic Kill Switch, RuntimeAI Control Plane, TrustLogix TrustAI, Palo Alto Prisma AIRS, Lakera Guard, Lasso Security — alle US-Enterprise, alle ohne öffentliche Preise (außer RuntimeAI-Stufennamen ohne Zahlen), alle ohne DACH-/deutschsprachige Positionierung nach gezielter Suche. AgentWatch (agent-watch.dev, $39/Mo Starter) ist selbstbedienbar und günstig, adressiert aber ein **anderes** Problem (Kosten-/Loop-Kill-Switch, kein Input-Provenance-/Security-Watchdog). |
| **A**lternative cost | Heute: eines der Enterprise-Tools mit Sales-Zyklus lizenzieren, In-House-Scripting/Observability (Datadog, eigene Logs), oder — mangels DACH-Angebot — nichts tun und auf Logging-Pflicht ohne Enforcement-Fähigkeit hoffen. |
| **R**eachability | KMU-/Mittelstand-Security-/IT-Leitung ist über LinkedIn/deutschsprachige Communities (BVMW, IT-Business, Security-Meetups) günstiger und schneller erreichbar als US-Enterprise-Buyer — kürzere Sales-Zyklen, aber weiterhin ein Vertrauens-/Trackrecord-Thema für ein Sicherheitsprodukt. |
| **F**requency | Hoch — Monitoring läuft kontinuierlich, gute Retention-Grundlage bei gewonnenem Kunden. |
| **R**evenue | ASSUMPTION: €150–400/Monat pro überwachtem Host bleibt plausibel für KMU (deutlich unter US-Enterprise-Preisniveau von "Tausenden $/Monat"), nicht neu verifiziert — kein öffentlicher DACH-Vergleichspreis gefunden. |
| **A**dvantage | Nach K6 vorhanden: Julians tiefe praktische Agent-Orchestrierungs-Erfahrung (bb, OpenClaw, Claude Code, Multi-Agent-Workflows) über Marktdurchschnitt, DACH-Freelancer mit eigener Marke (berlow.de) und bestehender Sendeinfrastruktur, Physik-/Engineering-Hintergrund, deutschsprachige Zielgruppe direkt erreichbar — genau die Zielgruppe, die keiner der US-Anbieter bedient. |
| **M**oat-later | Weiterhin kein technischer Moat (Erkennungstechnik ist nachbaubar durch besser finanzierte Wettbewerber) — der einzige mögliche Moat ist Sprache/Vertrauen/Compliance-Paketierung im DACH-Raum, nicht die Technologie selbst. |
| **E**ffort | 7/10 solo: Isolations-Architektur und False-Positive-Tuning bleiben aufwändig, aber ein MVP-Kern (siehe unten) ist ohne volle Enterprise-Fleet-Ambition solo baubar. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: mehrere Tausend deutschsprachige KMU/Mittelstandsfirmen betreiben 2026 produktiv autonome Coding-/Ops-Agenten (Claude Code, OpenClaw-artige Frameworks) — wachsend, aber der Teil, der *heute* für ein dediziertes Sicherheitsprodukt budgetiert, ist klein. Kein DACH-spezifischer Marktreport gefunden, der diese Zahl beziffert.
- **Saturation / competition:** **Besetzt auf US-Enterprise-Ebene, unbesetzt auf DACH-/KMU-Ebene nach gezielter Suche.** bitsIO AI Watchdog (Preis nicht veröffentlicht, "Book a demo", 300+ Enterprise-Kunden, US-Sitz Springfield IL, SOC 2, keine GDPR-/DACH-Erwähnung auf der Produktseite). Straiker Agentic Kill Switch (Series A $64M, Gesamt $85M, kein öffentliches Preislisting, Enterprise-Custom-Pricing). RuntimeAI (4 Preisstufen ohne öffentliche Zahlen). TrustLogix TrustAI (Mai 2026, Enterprise-Governance-Bundle). AgentWatch (agent-watch.dev): $39/Mo Starter, selbstbedienbar — aber Kosten-/Loop-Kill-Switch, nicht Security-/Provenance-Watchdog. Zwei gezielte Zusatzsuchen ("deutscher Anbieter Kill-Switch KI-Agenten", "DACH Datenschutz KI-Agent Wächter") fanden **keinen** deutschsprachigen oder DACH-fokussierten Anbieter für genau dieses Produkt — nur allgemeine KI-Agent-Compliance-Berater (aicx, abi consulting) ohne dediziertes Watchdog-Produkt.
- **Category maturity & growth:** **Growth in USA/Enterprise, Emerging in DACH/KMU.** Das schiebt das Risiko von "besetzter Markt" auf "Awareness-/Vertrauensaufbau in einem noch unbedienten Segment" — für DACH-KMU günstiger als der reine Enterprise-Konkurrenzvergleich suggeriert.
- **CAC vs CLV sanity:** ASSUMPTION: €150–400/Monat × 8–12 Monate Retention → CLV grob €1,2k–4,8k. CAC über 1:1-Cold-Outreach an deutschsprachige KMU-IT-/Security-Leitung ist realistisch niedriger als bei US-Enterprise-Sales-Zyklen (kein RFP/Procurement-Layer erwartet), aber weiterhin ein Vertrauens-Thema (Security-Produkt ohne Trackrecord) — CAC/CLV bleibt eng, nicht klar profitabel, daher Ausgang offen statt klarer GO.
- **Difficulty score:** 7/10
- **Key risks:**
  1. **Trust-Barriere unverändert:** Ein Sicherheitsprodukt ohne Referenzen/Audit-Historie ist für einen Solo-Anbieter strukturell schwer zu verkaufen, unabhängig vom geografischen Wedge.
  2. **DACH-Nische ist eine Abwesenheits-Beobachtung, kein Beweis für Nachfrage:** "Kein Anbieter gefunden" heißt nicht zwingend "Kunden warten" — könnte auch bedeuten, dass DACH-KMU dieses Problem noch nicht als Kaufanlass sehen (Awareness-Kosten).
  3. **Regulatorischer Hebel ist schwächer als er aussieht:** EU AI Act Art. 26 (Überwachungspflicht, 6 Monate Logretention, BSI-Durchsetzung, Bußgelder bis €15M/3% Umsatz, seit 2.8.2026 scharf) gilt explizit für **Hochrisiko-KI-Systeme** (Anhang III: Beschäftigung, Kreditvergabe, kritische Infrastruktur, Bildung u.a.) — interne Coding-/Ops-Agenten fallen in der Regel **nicht** automatisch darunter. Der AI Act ist daher ein Awareness-/Governance-Treiber, **kein** bewiesener rechtlicher Kaufzwang für dieses konkrete Produkt; als ASSUMPTION behandeln, nicht als scharfe Deadline verkaufen.

## Cited market signals (researched 2026-08-18)
- bitsIO AI Watchdog: US-Enterprise, kein öffentlicher Preis, "Book a demo", 300+ Enterprise-Kunden, SOC 2, keine GDPR-/DACH-Erwähnung auf der Produktseite — [bitsioinc.com/ai-watchdog](https://www.bitsioinc.com/ai-watchdog).
- Straiker Agentic Kill Switch: Series A $64M, Gesamtfinanzierung $85M (Bain Capital Ventures/Lightspeed), kein öffentliches Preislisting, Enterprise-Custom-Pricing — [straiker.ai/blog/agentic-kill-switch-...](https://www.straiker.ai/blog/agentic-kill-switch-ai-agent-security-for-enterprise-and-coding-agents), [appsecsanta.com/straiker](https://appsecsanta.com/straiker).
- AgentWatch (anderes Problem, aber relevanter Preisanker): Free-Tier 50k Requests/Monat, Starter $39/Monat für 150k Requests, Enterprise custom — Kosten-/Loop-Kill-Switch, kein Security-/Input-Provenance-Watchdog — [agent-watch.dev](https://agent-watch.dev/).
- Keine deutschsprachigen/DACH-fokussierten Anbieter für unabhängige Agent-Watchdog-/Kill-Switch-Produkte gefunden trotz gezielter Suche ("deutscher Anbieter Kill-Switch KI-Agenten", "DACH Datenschutz KI-Agent Wächter") — nur allgemeine KI-Compliance-Berater ohne dediziertes Produkt (aicx.de, abiconsulting.io) — Recherche vom 2026-08-18, siehe Suchprotokoll in diesem Report.
- EU AI Act Art. 26 (Betreiberpflichten Hochrisiko-KI: menschliche Aufsicht, Betriebsüberwachung, 6 Monate Logretention) seit 2.8.2026 scharf, BSI-Durchsetzung, Bußgelder bis €15M/3% Umsatz — gilt für Hochrisiko-Systeme (Anhang III), nicht automatisch für interne Coding-/Ops-Agenten — [advisori.de/blog/eu-ai-act-august-2026-hochrisiko-compliance-countdown](https://www.advisori.de/blog/eu-ai-act-august-2026-hochrisiko-compliance-countdown), [it-boltwise.de/eu-ai-act...](https://www.it-boltwise.de/eu-ai-act-ab-august-muss-hochrisiko-ki-am-arbeitsplatz-konform-sein.html).
- Konkretes Schadenssignal 2026: OpenClaw-Vorfall Februar 2026 (Prompt-Injection, Malware-Installation via Skill-Marktplatz ClawHub, 335+ bösartige Skills Ende Januar, 824 von 10.700 Skills bis Mitte Februar); SecurityScorecard zählte 40.214 internetexponierte OpenClaw-Instanzen, 35,4% als verwundbar markiert — [giskard.ai/knowledge/openclaw-security-vulnerabilities](https://www.giskard.ai/knowledge/openclaw-security-vulnerabilities-include-data-leakage-and-prompt-injection-risks), [helpnetsecurity.com/2026/06/11/owasp-prompt-injection...](https://www.helpnetsecurity.com/2026/06/11/owasp-prompt-injection-ai-security-failures/).

## Boring & Trends check

> `outreach_score` 5/10 ≥ 4 → `boring-and-trends-check` durchgeführt.

- **Boring/niche defensibility:** Grenzfall. "AI Agent Security" ist als Kategorie inzwischen hyped (Straiker $85M, Palo Alto, viele YC-Batches) — **zu sexy**, um von gut finanzierten Playern ignoriert zu werden. Die Verengung auf "DACH-KMU, deutschsprachig, self-serve statt Demo-Sales" ist die eigentliche unsexy Nische: zu klein und zu vertriebsaufwändig (Trust-Barriere, kein Self-Serve-Produkt-Mainstream in Security) für US-VC-finanzierte Anbieter, aber potenziell groß genug für ein Solo-Geschäft mit bestehender DACH-Reichweite. Das ist eine plausible, aber unbewiesene Positionierungs-Nische, kein starker struktureller Burggraben.
- **Sociological trend:** Zunehmendes Misstrauen gegenüber autonomen Coding-/Ops-Agenten nach konkreten 2026-Vorfällen (OpenClaw-Skill-Marktplatz-Kompromittierung Februar 2026, 40.214 exponierte Instanzen) verschiebt die Wahrnehmung von "AI-Agenten sind harmlose Assistenten" zu "AI-Agenten sind ein eigenständiges Bedrohungsmodell, das Aufsicht braucht" — das macht eine unabhängige Watchdog-Instanz jetzt erklärbarer als vor 12 Monaten. Quelle: [helpnetsecurity.com, Juni 2026](https://www.helpnetsecurity.com/2026/06/11/owasp-prompt-injection-ai-security-failures/).
- **Technological trend:** Verbreitung von Multi-Agent-Setups mit offenen Skill-/Plugin-Marktplätzen (ClawHub u.ä.) erhöht die Angriffsfläche technisch messbar (Skill-Supply-Chain-Risiko) und macht "zweiter, isolierter Watchdog-Agent ohne Input-Übernahme vom Hauptagenten" technisch einfacher umsetzbar, weil Agent-Frameworks inzwischen standardmäßig getrennte Kontexte/Sandboxes unterstützen — ASSUMPTION: konkrete Referenz-Implementierung für Kontext-Isolation zwischen zwei Agent-Instanzen wurde nicht separat verifiziert, aber die Grundbausteine (Sandboxing, getrennte API-Keys, Netzwerksegmentierung) sind Standard-Infrastruktur 2026.

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht über diese Pipeline ohne weitere Vorarbeit.* outreach_score 5/10 liegt unter der Stage-2-Schwelle (7) — kein Stage-2-Paket in diesem Lauf. Vor einem möglichen Outreach-Versuch: 5–10 qualitative Gespräche mit deutschsprachigen KMU-IT-/Security-Leitungen, die bereits Coding-/Ops-Agenten produktiv betreiben, zur Frage "Würden Sie eine unabhängige, deutschsprachige Watchdog-Instanz einsetzen — und was müsste sie kosten/können, damit sie [bitsIO/Straiker] vorzuziehen wäre?"
- **Kill signal:** N/A in diesem Lauf — kein Outreach gestartet (unter Stage-2-Schwelle).

## Produktkern für den MVP

> `product_score` 6/10 ≥ 4 → Pflichtabschnitt.

Kein Enterprise-Fleet-Monitoring nachbauen (das ist bitsIO/Straikers Spiel).
Solo-baubarer MVP-Kern, DACH-first:

1. **Ein Watchdog-Agent, ein Host, eine Aktion.** Zweiter, isolierter Prozess
   (eigener API-Key, kein geteilter Kontext mit dem überwachten Agenten) liest
   ausschließlich Tool-Call-/Netzwerk-Logs des Hauptagenten (nicht dessen
   Prompts/Outputs direkt) und erkennt grobe Anomalien: neue/unbekannte
   Output-Ziele (Domains/IPs), ungewöhnliche Burst-Muster bei Tool-Calls.
   Zwei Aktionen, kein Feature-Wettrüsten: Alert (Standard) und
   Netzwerk-Isolation via lokaler Firewall-Regel (Opt-in, Kill-Switch als
   Notfall-Stufe, kein Standardverhalten wegen False-Positive-Risiko).
2. **Deutschsprachiges, self-serve Onboarding statt Demo-Sales-Motion** —
   genau der Punkt, den keiner der vier Incumbents anbietet: Setup-Doku auf
   Deutsch, Preis öffentlich (ASSUMPTION €150–250/Monat Einstieg pro Host,
   deutlich unter US-Enterprise-Niveau), keine Pflicht-Demo vor Kauf.
   Positionierung explizit auf "AI-Agent-Aufsicht für den deutschen
   Mittelstand" statt "Enterprise Agentic AI Security Platform".
3. **Kein Fourier-Erkennungsmodell im MVP.** Die ursprünglich vorgeschlagene
   Spektralanalyse ist eine spätere Verfeinerung, kein MVP-Blocker — einfache
   Schwellwert-/Delta-Erkennung auf bekannte Ziele reicht für die erste
   validierbare Version und senkt den Bauaufwand von 8–9/10 auf ~7/10.

## Notes / assumptions
- ASSUMPTION: Preispunkt €150–400/Monat pro Host weiterhin nicht am Markt
  verifiziert (kein öffentlicher DACH-Vergleichspreis gefunden).
- ASSUMPTION: EU-AI-Act-Hebel ist Awareness-/Governance-Treiber, nicht
  bewiesener rechtlicher Kaufzwang für interne Coding-/Ops-Agenten (Art. 26
  gilt für Hochrisiko-Systeme nach Anhang III) — nicht als scharfe
  Compliance-Deadline gegenüber Leads verkaufen.
- ASSUMPTION: "Kein DACH-Anbieter gefunden" ist eine Abwesenheits-Beobachtung
  aus zwei gezielten Zusatzsuchen (siehe Cited market signals), kein Beweis
  für validierte Nachfrage — deshalb `outreach_score` 5/10 (Ausgang offen),
  nicht 7+ (klarer Wedge bewiesen).
- Nach K6 übernommener Unfair-Advantage-Kontext (nicht in `00` dokumentiert,
  aber laut `memory/user_profile.md` + Vacation-Orchestrator-Kalibrierung
  gegeben): Agent-Orchestrierungs-Erfahrung, DACH-Reichweite, bestehende
  Sendeinfrastruktur (berlow.de, `out.berlow.de`).
