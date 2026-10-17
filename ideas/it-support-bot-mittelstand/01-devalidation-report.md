# 01 — Devalidation Report

## CLEARFRAME
- **Customer:** Mittelständische Firmen mit 100–500 Beschäftigten, internem kleinen IT-Team und hohem Volumen wiederkehrender First-Level-Anfragen.
- **Job:** Wiederkehrende Anfragen schneller beantworten oder richtig routen, mit menschlicher Freigabe und belastbaren Einsparkennzahlen.
- **Existing solution:** ITSM-/Helpdesk-Wissensdatenbank, Self-Service-Portal, Copilots/virtuelle Agenten oder externer IT-Support.
- **Alternative cost:** Der NBG-Kontext nennt einen kalkulierten Nutzen von ca. 10.800 €/Jahr und Payback <3 Monate; Berechnung wurde nicht unabhängig geprüft.
- **Reachability:** NBG ist direkt zugänglich und passt von Größe/Präferenz; weitere 100–500-MA-Zielkunden über IT-Netzwerke sind **ASSUMPTION:**.
- **Frequency:** Tickets kommen laufend; wirtschaftlicher Effekt hängt vom Anteil standardisierbarer Anfragen ab.
- **Revenue:** **ASSUMPTION:** 4.000–8.000 € Implementierung für einen Tickettyp/eine Wissensquelle, danach 500–1.000 €/Monat Pflege/Betrieb.
- **Advantage:** Erfahrung mit RAG, lokaler/EU-Bereitstellung und NBGs vorliegender Business-Case-Arbeit (Kontext).
- **Moat-later:** Systemintegration, freigegebene Wissensbasis und belastbare Ticket-/Qualitätsmessung; schwacher Software-Moat.
- **Effort:** Hoch, wenn mehrere ITSM-Systeme und schreibende Aktionen integriert werden; überschaubarer bei Routing und Vorschlägen.

## Verdict
- **Score:** 6/10
- **Go/No-Go:** GO
- **One-line reason:** Ein konkreter, kurzer Payback ist bei NBG durchgerechnet, aber nicht verifiziert; bestehende ITSM-KI und die explizite Job-Angst gefährden Abschluss und Adoption.

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** **ASSUMPTION:** Der adressierbare Startmarkt sind Unternehmen mit internem IT-Support und genügend wiederkehrenden Standardtickets; es wurde kein belastbarer Marktgrößenwert für genau 100–500 Beschäftigte recherchiert.
- **Saturation / competition:** Starker Wettbewerb durch etablierte ITSM-Plattformen. Jira Service Management enthält den Virtual Service Agent in Cloud Premium/Enterprise, mit 1.000 assistierten Gesprächen/Monat inklusive, danach ab 0,30 US-Dollar je Gespräch; der Premium-Planpreis wird dynamisch anhand Agentenzahl berechnet (kein universeller Festpreis). Freshservice bietet Freddy AI Copilot als kostenpflichtiges Add-on, aktuell 29 €/Agent/Monat jährlich bzw. 35 € monatlich. Deutscher Anbieter nara listet Launch für 490 €/Monat, Team für 1.500 €/Monat und Business für 2.500 €/Monat. Ein Dienstleister muss also Integration, On-Prem/EU-Setup und validierten Nutzen verkaufen, nicht „Bot“ als Feature. [Atlassian Pricing](https://www.atlassian.com/collections/service/pricing?bundle=jira-service-management) · [Freshservice Copilot Preise](https://support.freshservice.com/support/solutions/articles/50000009477-freddy-copilot-pricing) · [nara Preise](https://nara.de/preise)
- **Category maturity & growth:** **Growth**: KI-Unterstützung im Service Desk ist bereits im Markt, aber je nach Unternehmenskategorie noch Rollout-Thema. Lünendonk-Studie 2024 berichtet, jedes vierte Unternehmen nutze bereits KI im Service Desk für First-Level-Support; als Branchenstudie weder aktueller Stand noch Kaufbereitschaft exakt dieses Segments. [Lünendonk Studie 2024](https://www.hdp-management.com/wp-content/uploads/LUE_Der-Markt-fuer-IT-Sourcing-Beratung_HDP-pdf.pdf)
- **CAC vs CLV sanity:** **ASSUMPTION:** 4.000–8.000 € Projektpreis trägt den Direktvertrieb, wenn Ticketanalyse/Demo unter 1–2 Tagen bleibt. Retainer ist möglich, aber interne IT kann nach Übergabe selbst betreiben. 10.800 €/Jahr-NBG-Kalkulation reicht rechnerisch für Projektpreis, ist nur eine Kundenschätzung.
- **Difficulty score:** 7/10
- **Key risks:** (1) Job-Angst bei IT-Team/Blockade durch Betriebsrat oder Führung; (2) vorhandene ITSM-Suite reicht aus; (3) Wissenslücken/Fehler eines Bots verursachen Supportschaden statt Entlastung.

## Cited market signals (researched 2026-10-17)
- NBG (~150 MA) hat laut Kontext einen IT-Support-Bot mit ca. 10.800 €/Jahr Einsparung und Payback <3 Monaten durchgerechnet; IT-Team hat Job-Angst, GF bevorzugt On-Prem/Hetzner. Zahlen und Haltung stammen aus dem bereitgestellten Gesprächskontext, nicht aus unabhängiger Prüfung.
- Lünendonk berichtet in seiner IT-Sourcing-Studie 2024, jedes vierte Unternehmen nutze KI im Service Desk für First-Level-Support. Das zeigt aktive Nutzung, nicht die konkrete Nachfrage nach einem Freelancer-Projekt. [Lünendonk Studie](https://www.hdp-management.com/wp-content/uploads/LUE_Der-Markt-fuer-IT-Sourcing-Beratung_HDP-pdf.pdf)
- Jira Service Management Cloud integriert Virtual Service Agent in Premium/Enterprise. Damit ist der Kernansatz bereits Bestandteil eines etablierten Angebots. [Atlassian Service Collection Pricing](https://www.atlassian.com/collections/service/pricing?bundle=jira-service-management)
- Freshservice verkauft Freddy AI Copilot als Add-on für 29 €/Agent/Monat bei Jahres- und 35 € bei Monatsabrechnung; Plattformanbieter konkurrieren direkt um den Nutzen. [Freshservice Support Pricing](https://support.freshservice.com/support/solutions/articles/50000009477-freddy-copilot-pricing)
- nara listet Launch 490 €/Monat, Team 1.500 €/Monat und Business 2.500 €/Monat, nutzungsbasiert über Credits. [nara Preise](https://nara.de/preise)
- Bitkom berichtet, dass 2025 in 42 % der deutschen Industrieunternehmen KI in der Produktion eingesetzt wurde; das Signal ist ein allgemeiner Rollout-Kontext, kein spezifischer IT-Support-Nachweis. [Bitkom Research](https://www.bitkom-research.de/news/industrie-40-42-prozent-der-unternehmen-prozent-setzen-ki-der-produktion-ein)

## Boring & Trends check
- **Boring/niche defensibility:** IT-Triage ist ein alltäglicher, klar begrenzbarer Prozess; ein produktisiertes Vorhaben für einen Tickettyp und eine Wissensquelle ist ausreichend eng. Die Kategorie ist allerdings nicht langweilig für Softwareanbieter; Differenzierung muss bei lokalem Setup, Systemintegration, kontrollierter Freigabe und messbarem Nutzen liegen.
- **Sociological trend:** **KI-Rollout trifft auf Vertrauens-/Akzeptanzkonflikt:** Bitkoms Deutschlandstudie 2025 zeigt eine wachsende Bereitstellung von KI-Zugängen mit Unternehmensgröße (31 % mittelgroße, 43 % große Unternehmen ab 500 Beschäftigten). Für einen Support-Bot bedeutet der Trend mehr vorhandene KI-Nutzer, aber die NBG-Job-Angst zeigt, dass frühe Mitarbeitereinbindung zentral bleibt. [Bitkom KI-Studie 2025](https://www.bitkom.org/sites/main/files/2026-02/bitkom-studienbericht-ki.pdf)
- **Technological trend:** **ITSM-native KI-Assistenten:** Atlassian bündelt Virtual Service Agent in Cloud Premium/Enterprise und Freshservice bietet Copilot als Add-on. Die Technologie ist direkt lieferbar und senkt Integrationshürden, verschärft zugleich den Wettbewerb; Solo-Service muss Anbieter-neutral messen und kontrolliert konfigurieren. [Atlassian](https://www.atlassian.com/collections/service/pricing?bundle=jira-service-management) · [Freshservice](https://support.freshservice.com/support/solutions/articles/50000009477-freddy-copilot-pricing)

## Riskiest assumption test (RAT)
- **What to test next:** Stage 3 validation send — founder-led cold email to 20–50 hand-picked ICP contacts (max 30 enrolled). Pass if ≥1 positive reply OR ≥3 human clicks after sends complete.
- **Kill signal:** 30 sends, 0 replies AND <3 human clicks → `status: validation-failed`.

## Notes / assumptions
- ASSUMPTION: NBG-Business-Case entspricht tatsächlich realisierbarer Arbeitszeit und Vollkosten, statt theoretischer Ticketentlastung.
- ASSUMPTION: Akzeptanzprobleme können durch Assistenzmodus, Beteiligung des IT-Teams und transparente Messung gelöst werden.

## Schnell-Umsatz-Check
- **Kaufchance binnen 8 Wochen:** NBG / Bodo ist der klarste Käuferkontakt wegen bestehendem Business Case und On-Prem-Präferenz; Job-Angst im IT-Team ist ein unmittelbares Hindernis.
- **Kleinstes verkaufbares Deliverable:** Ticketanalyse plus Antwortvorschlags-Prototyp für einen wiederkehrenden, risikoarmen IT-Tickettyp; **ASSUMPTION:** 1.800 € Festpreis.
- **Demo müsste zeigen:**
  - Beispielticket wird korrekt klassifiziert und geroutet.
  - Antwortvorschlag bezieht sich auf freigegebene interne Quelle.
  - Unsichere Fälle werden an Menschen eskaliert.
  - Mitarbeitende können Vorschlag prüfen und editieren.
  - Vorher/Nachher-Kennzahl für Bearbeitungszeit und Lösung ohne Eskalation.
- **Demo-Aufwand:** **ASSUMPTION:** 16 Stunden für Ticket-Simulation, RAG und Basismessung.
