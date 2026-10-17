# 01 — Devalidation Report

## Verdict
- **Score:** 6/10
- **Go/No-Go:** GO
- **One-line reason:** Hoher persönlicher Fit und zwei warme Unternehmenskontakte mit konkreten Enablement-Signalen tragen ein hochpreisiges Solo-Projekt; Enterprise-Sicherheitsanforderungen, lange Beschaffung und starke Hersteller-/Beraterkonkurrenz machen den Verkauf anspruchsvoll.

## CLEARFRAME + Market Reality
- **Customer:** IT-/Engineering-Leitungen und Plattformteams in Unternehmen, die Coding- oder Ops-Agenten mit kontrolliertem Zugriff auf Repositories, interne APIs und Arbeitsabläufe einführen.
- **Job:** Agenten sicher und produktiv einführen, Aufgaben auswählen, Zugriff begrenzen, Qualitätsprüfungen und Teamroutinen etablieren.
- **Existing solution:** Einzelne Entwickler experimentieren mit Copilot/Cursor/Claude Code; Plattformteam erstellt eigene Policies; Microsoft/Azure oder große Beratungen liefern Plattform und Governance; manche warten ab.
- **Alternative cost:** **ASSUMPTION:** Fehlversuche, unkontrollierter Daten-/Codezugriff und verpasste Produktivitätsgewinne; Kundenseite hat keine belastbaren Kostenwerte geliefert.
- **Reachability:** Schindler (Shafi Syed, Azure IoT, interne KI-API und positives Feedback zur Demo) plus IHK Schwaben (Luzia Ghoggal, Webinar-/Convention-Thema) sind ungewöhnlich konkrete Türen. Nicht gleichbedeutend mit Budget oder Auftrag.
- **Frequency:** Einführung ist ein einmaliges Kernprojekt; neue Teams, Agententypen und Betriebsregeln schaffen mögliche Folgeworkshops/Begleitung.
- **Revenue:** **ASSUMPTION:** 6.500 € Setup plus zweitägiger Workshop, danach 1.500 €/Monat für zwei Monate Begleitung; kein eigenes SaaS nötig.
- **Advantage:** Ex-CTO, KI-Agenten-/RAG-Praxis, vorhandene BB-/Grafana-Demos und interne Azure-KI-API als Gesprächskontext bei Schindler.
- **Moat-later:** Wiederverwendbare Team-Playbooks, sichere Workspace-Referenzkonfigurationen und domänenspezifische Übungsbibliothek. Gegen Herstellerplattformen nur schwacher technischer Moat.
- **Effort:** Mittel bis hoch wegen Sicherheit, Repositories, Identitäten, Cloud/On-Prem und Freigaben; mit eng begrenztem Workshop/Setup solo machbar.

- **TAM (sanity, not spurious precision):** **ASSUMPTION:** DACH-Markt aus mittelgroßen Unternehmen und Konzernteams, die bereits KI-API und Entwicklerteam haben; erreichbar über wenige hochwertige Aufträge statt großer Stückzahl. Bitkom meldet GenAI-Zugänge bei 31 % der mittleren Unternehmen und 43 % der Unternehmen ab 500 Beschäftigten, aber kein Maß für Coding-Agent-Kaufbereitschaft ([Bitkom 2025](https://www.bitkom.org/sites/main/files/2026-02/bitkom-studienbericht-ki.pdf)).
- **Saturation / competition:** Hohe und schnell wachsende Konkurrenz: GitHub Copilot Business kostet 19 USD pro Seat/Monat und ist bereits breit adoptiert ([GitHub Preise](https://docs.github.com/en/copilot/get-started/plans)); Microsoft/Azure AI Foundry bündelt Agentenservices und nutzungsbasierte Modellkosten ([Azure AI Foundry Pricing Guide](https://cdn-dynmedia-1.microsoft.com/is/content/microsoftcorp/microsoft/final/en-us/microsoft-product-and-services/azure/pdf/ms-azure-ai-foundry-pricing-guide-e-book-final.pdf)); spezialisierte Anbieter verkaufen Claude-Code-Teamworkshops ([Krynex Labs](https://www.krynexlabs.de/workshops/ai-coding-claude-code/)). Konkurrenz umfasst außerdem interne Plattformteams und große Beratungen. Dienstleistung muss team-/repo-/prozessspezifische Umsetzung liefern, nicht Grundlagen erklären.
- **Category maturity & growth:** Growth/Emerging für agentische Teamworkflows, etablierte Konkurrenz bei Codeassistenz. JetBrains berichtet in seiner Entwicklerbefragung 2026 über Agentenadoption und neue Orchestrierungs-/Kontrollprodukte ([JetBrains Developer Ecosystem 2026](https://blog.jetbrains.com/research/2026/08/ai-coding-agent-adoption-2026/)); Wachstum erzeugt zugleich Governance- und Integrationsbedarf.
- **CAC vs CLV sanity:** Ein warmer Schindler-Einstieg kann Akquise stark verbilligen; ein 6.500-€-Pilot trägt mehrere Akquisewochen. Ohne Folgeauftrag kann Enterprise-Vertrieb inkl. Security-Freigabe den CLV jedoch aufzehren; Begleitung muss im Erstauftrag mitverkauft oder getestet werden.
- **Difficulty score:** 7/10.
- **Key risks:** Lange Beschaffung und Security Review; Plattformen standardisieren Enablement/Governance; unklare Produktivitätswirkung und Change-Akzeptanz im Entwicklerteam.

## Cited market signals (researched 2026-10-17)
- GitHub Copilot Business kostet 19 USD pro Seat und Monat und enthält laut GitHub monatlich 1.900 AI Credits pro Nutzer: [GitHub Docs Preis-/Planübersicht](https://docs.github.com/en/copilot/get-started/plans).
- JetBrains' Entwicklerbefragung 2026 (über 15.000 Entwickler weltweit) behandelt verbreitete AI-Coding-Tools und neue agentische Entwicklungs-/Kontrollumgebungen: [JetBrains Research](https://blog.jetbrains.com/research/2026/08/ai-coding-agent-adoption-2026/).
- Anthropic beschreibt Agentenkoordination entlang des Softwareentwicklungszyklus als zentrale Entwicklung 2026; der Bericht weist zugleich darauf hin, dass Entwickler nur 0–20 % ihrer Arbeit vollständig delegieren: [Agentic Coding Trends Report 2026](https://resources.anthropic.com/hubfs/2026%20Agentic%20Coding%20Trends%20Report.pdf?hsLang=en).
- Microsoft's Azure AI Foundry bündelt Agentenservices; Abrechnung umfasst Modellnutzung/Tokens und Servicekosten, d. h. Einführung heißt auch Verbrauchs- und Governance-Steuerung: [Microsoft Pricing Guide](https://cdn-dynmedia-1.microsoft.com/is/content/microsoftcorp/microsoft/final/en-us/microsoft-product-and-services/azure/pdf/ms-azure-ai-foundry-pricing-guide-e-book-final.pdf).
- Bitkom-Befragung 2025: 31 % der Unternehmen mit 50–499 Beschäftigten stellen GenAI-Zugänge bereit; bei Unternehmen ab 500 Beschäftigten sind es 43 %: [Bitkom Studienbericht](https://www.bitkom.org/sites/main/files/2026-02/bitkom-studienbericht-ki.pdf).
- **ASSUMPTION:** Schindler und IHK-Schwaben-Signale aus dem bereitgestellten Kontext zeigen Zugang/Interesse, aber weder bestätigte Budgets noch Kaufbereitschaft.

## Boring & Trends check
- **Boring/niche defensibility:** Workspace-Betrieb, Berechtigungen, Repo-Regeln und Teamroutinen sind weniger glamourös als ein neuer Agent, aber die Zielgruppe „Teams mit vorhandener interner KI-API und produktionsnahen Engineering-Aufgaben“ ist eng genug für ein Solo-Angebot. Plattformanbieter können Teile commoditisieren; defensibility liegt in unabhängiger, toolübergreifender Umsetzung und Übergabe.
- **Sociological trend:** **Vom persönlichen Copilot zum verantworteten Team-Workflow.** Unternehmen müssen Agentenaktionen, Datenzugriff und Verantwortlichkeit nachvollziehbar steuern; der aktuelle Diskurs über die „accountability gap“ agentischer Systeme zeigt, warum Teams Enablement samt Leitplanken brauchen: [Axios, 13.10.2026](https://www.axios.com/2026/10/13/axios-live-businesses-confront-the-accountability-gap-in-agentic-ai). Das ist eine Nachfrageindikation, kein Nachweis konkreter Budgets.
- **Technological trend:** **Entwicklungsagenten wandern in verwaltete Plattformen und Toolchains.** JetBrains beschreibt 2026 agentische IDE-/Kontrollumgebungen, während GitHub Copilot Business Agentenfunktionen samt Credits anbietet. Teams müssen daher konkrete Toolchains und Kosten-/Zugriffsregeln lernen: [JetBrains](https://blog.jetbrains.com/research/2026/08/ai-coding-agent-adoption-2026/), [GitHub Copilot Plans](https://docs.github.com/en/copilot/get-started/plans).

## Riskiest assumption test (RAT)
- **What to test next:** Stage 3 validation send — founder-led cold email to 20–50 hand-picked ICP contacts (max 30 enrolled). Pass if ≥1 positive reply OR ≥3 human clicks after sends complete.
- **Kill signal:** 30 sends, 0 replies AND <3 human clicks → `status: validation-failed`.

## Schnell-Umsatz-Check
- **CRM-Kontakt(e) als Käufer in 8 Wochen:** Schindler / Shafi Syed (konkretester Fit: interne KI-API, Use-Case-Prüfung und positives Demo-Feedback); IHK Schwaben / Luzia Ghoggal eher Multiplikatorin. Gesprächssignale, kein bestätigter Kauf.
- **Kleinstes verkaufbares Erstpaket:** 3-stündige Agenten-Workflow- und Leitplanken-Session für ein Team bis 6 Personen, mit einem Repo-/Ops-Beispiel und priorisiertem Maßnahmenblatt, **1.250 € netto** (**ASSUMPTION**).
- **Demo/Prototyp sollte zeigen:**
  - Agent führt klar umrissene Code-/Ops-Aufgabe aus isolierter Umgebung aus
  - Mensch prüft Änderungen vor Merge/Ausführung
  - Repo-/Datenzugriffsgrenzen und Auditspur
  - Gleiche Aufgabe mit Zeit-/Qualitätsvergleich und Fehlergrenzen
  - Übergabe-Checkliste mit Teamregeln und Verantwortlichen
- **Demo-Aufwand:** **12 h (ASSUMPTION)** für schlanke, wiederholbare Demo und Workshop-Unterlagen.

## Notes / assumptions
- **ASSUMPTION:** Die genannten Dienstleistungspreise sind auf Tagessatz und Solo-Kapazität abgeleitete Hypothesen.
- **ASSUMPTION:** Ein positiver Workshop-Eindruck wird innerhalb von acht Wochen zu einem bezahlten Pilot; Kundentext belegt bisher nur Prüfung/Interesse.
