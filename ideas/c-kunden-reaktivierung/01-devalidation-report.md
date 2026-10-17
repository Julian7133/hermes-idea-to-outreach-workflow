# 01 — Devalidation Report

## CLEARFRAME (Kurzprüfung)
- **Customer:** Mittelständischer Hersteller/Großhändler mit ERP-Bestellhistorie und kleinem Innendienst nach Außendienstabbau.
- **Job:** Abwanderungsgefährdete C-Kunden anhand erwarteter Bestellintervalle erkennen und passende menschliche Nachfassaktion vorbereiten.
- **Existing solution:** ERP-Listen, Excel und manuelle Wiedervorlage; größere CRM-/Vertriebsplattformen bieten Accounts und Automatisierung.
- **Alternative cost:** ASSUMPTION: Übersehene Wiederbestellungen kosten Deckungsbeitrag; Höhe muss pro Kunde aus Bestellwert und Marge ermittelt werden.
- **Reachability:** Bodo/NBG ist ein warmer, sachlich passender Kontakt; Kontext sagt ausdrücklich „zurückgestellt“, kein kurzfristiger Kauf zugesagt.
- **Frequency:** Hoch, sobald der Warenkorb wiederkehrende Bestellmuster und genügend Historie hat.
- **Revenue:** ASSUMPTION: 2.500–4.000 € Pilot + 250–600 €/Monat Betrieb.
- **Advantage:** Kundennaher Prozess-/KI-Berater mit ERP-/Automationskompetenz; spezifischer NBG-Trigger, aber noch keine Referenz in diesem Use Case.
- **Moat-later:** Kalibrierte Kunden-/SKU-Saisonalität, ERP-Datenmapping und nachweislich hilfreiche Priorisierung.
- **Effort:** ASSUMPTION: 2–4 Wochen Pilot inkl. Datenklärung, Regeln, Auswertung und Übergabe.

## Verdict
- **Score:** 7/10
- **Go/No-Go:** GO
- **One-line reason:** Ein konkreter NBG-Schmerz, wiederkehrende Nutzung und ein überschaubarer Pilot rechtfertigen einen Test; Kaufdringlichkeit und Datenzugang bleiben offen.

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** ASSUMPTION: Erreichbarer Startmarkt sind DACH-Hersteller und Großhändler mit wiederkehrenden ERP-Bestellungen, aber ohne ausreichend Außendienst; kein belastbarer bezifferter TAM recherchiert. Solo-Umsatz kann schon mit wenigen Implementierungen jährlich entstehen.
- **Saturation / competition:** Salesforce Sales Cloud Starter 25 €/Nutzer/Monat und Pro 100 €/Nutzer/Monat umfasst CRM-/Vertriebsfunktionen ([Salesforce Preise](https://www.salesforce.com/de/sales/cloud/)). Microsoft Copilot Studio bietet Agentenfunktionen mit nutzungsabhängiger Lizenzierung ([Microsoft Lizenzierung](https://learn.microsoft.com/de-de/microsoft-copilot-studio/billing-licensing)). Kein Nachweis, dass Standard-CRM die ERP-spezifische Bestellintervall-Erkennung in NBGs Zielprozess ohne Projektarbeit löst; diese Differenzierung ist zu verifizieren.
- **Category maturity & growth:** Growth bei KI- und Vertriebsautomatisierung, aber diese breite Kategorie beweist keine Nachfrage nach genau diesem Produkt. DMB/Salesforce befragten >500 Verantwortliche; 33,1 % der deutschen Mittelständler bis 500 Beschäftigte nutzten KI Ende 2024 ([KI-Index Mittelstand](https://www.salesforce.com/de/news/neuer-ki-index-mittelstand-zeigt-jeder-dritte-mittelstaendler-setzt-bereits-ki-ein/)).
- **CAC vs CLV sanity:** ASSUMPTION: Bei einem Pilot im niedrigen vierstelligen Bereich kann founder-led Direktvertrieb wirtschaftlich sein, wenn Datenzugriff schnell gelingt und ein Wartungsbaustein folgt. Langer ERP-Integrationsverkauf oder kostenloser PoC würden die Rechnung kippen.
- **Difficulty score:** 6/10 — Auswertung und Alerts sind machbar; Datenqualität, Saisonmuster und Akzeptanz im Innendienst sind die eigentlichen Risiken.
- **Key risks:** 1) NBG hat den Use Case zurückgestellt; 2) dünne/inkonsistente ERP-Historie erzeugt Fehlalarme; 3) CRM/ERP-Anbieter liefern das Feature bereits oder einfacher.

## Cited market signals (researched 2026-10-17)
- Salesforce veröffentlicht CRM-Preise ab 25 €/Nutzer/Monat (Starter) und 100 € (Pro); belegt die günstige Plattformalternative, nicht einen spezifischen Churn-/Bestellrhythmus-Agenten: [Salesforce Sales Cloud](https://www.salesforce.com/de/sales/cloud/).
- Microsoft Copilot Studio ist über Credits/verbrauchsabhängige Pläne abrechenbar, nicht allein durch eine fixe Agentenlizenz: [Microsoft Learn, Lizenzierung](https://learn.microsoft.com/de-de/microsoft-copilot-studio/billing-licensing).
- Der KI-Index Mittelstand (Befragung >500 Verantwortliche, Nov.–Dez. 2024) meldet 33,1 % KI-Nutzung bei Mittelständlern bis 500 Mitarbeitenden; das ist ein Adoptionssignal, kein Kaufbeleg für diese Lösung: [Salesforce/DMB](https://www.salesforce.com/de/news/neuer-ki-index-mittelstand-zeigt-jeder-dritte-mittelstaendler-setzt-bereits-ki-ein/).
- NBG-spezifisches Bedarfssignal: Außendienst wurde Anfang 2026 abgeschafft, Bodo nannte den Use Case am 18.09. akut und stellte ihn am 08.10. zurück; Quelle ist der vom Nutzer bereitgestellte Kontext, kein öffentlicher Marktbeleg.
- **ASSUMPTION:** kein verifizierter unabhängiger DACH-Kaufvolumen-/Suchvolumenbeleg speziell für C-Kunden-Erkennung aus ERP-Bestellintervallen gefunden.

## Boring & Trends check
- **Boring/niche defensibility:** Der Workflow ist unglamouröse Vertriebsnacharbeit und eng auf wiederkehrende B2B-Bestellungen ohne Außendienst begrenzt. Das ist als Dienstleistung für ERP-Exporte vertretbar; ohne wiederholbares Datenmapping entsteht allerdings kein belastbarer Schutz gegen CRM-Features.
- **Sociological trend:** **KI-gestützte Vertriebsproduktivität statt Vertriebsersatz.** Bitkoms Vertriebsjahrbuch 2024/25 beschreibt Automatisierung, präzisere Datenanalysen und kontextbezogene Unterstützung als Vertriebsanwendung. Das passt zu einem Agenten, der Innendienstaktionen vorbereitet, statt Mitarbeitende zu ersetzen ([Bitkom Yearbook Vertrieb 2024/25](https://www.bitkom.org/sites/main/files/2025-03/bitkom-leitfaden-yearbook-vertrieb-2024-25.pdf)). Der spezifische Außendienstabbau bleibt NBG-Kontext, keine allgemeine Marktstatistik.
- **Technological trend:** **Agentenbau mit nutzungsbasierter Plattforminfrastruktur.** Microsoft dokumentiert Copilot Studio Credits und verbrauchsabhängige Nutzung. Das senkt die Einstiegshürde, einen begrenzten Pilot mit ERP-Export, Priorisierung und Textentwurf zu testen; es ersetzt weder sauberes Datenmodell noch ERP-Zugang ([Microsoft Learn](https://learn.microsoft.com/de-de/microsoft-copilot-studio/billing-licensing)).

## Riskiest assumption test (RAT)
- **What to test next:** Im Stage-1-Desk-Check einen anonymisierten ERP-Export (falls bereits verfügbar) gegen simple Bestellrhythmus-Regeln prüfen; für diesen Auftrag keine Kontaktaufnahme.
- **Kill signal:** Ohne ausreichende Historie sind keine stabilen Intervalle ableitbar oder die Wiedervorlage erzeugt überwiegend Fehlalarme.

## Schnell-Umsatz-Check
- **Möglicher Käufer innerhalb 8 Wochen:** Bodo bzw. NBG – thematisch passend, aber laut Kontext am 08.10. zurückgestellt; deshalb keine belastbare Kaufwahrscheinlichkeit.
- **Kleinster verkaufbarer Erstlieferumfang:** bezahlte Analyse eines anonymisierten ERP-Exports mit Bestellrhythmus-Regeln, Top-20-Wiedervorlage und Beispielsleitfäden; ASSUMPTION: 1.600 € Festpreis.
- **Demo muss zeigen:** (1) CSV-Import mit anonymisierten Kunden/SKUs, (2) erwartete nächste Bestellung samt Begründung, (3) Priorisierung überfälliger Konten, (4) ein prüfbarer Gesprächsentwurf, (5) Export als Innendienstliste.
- **Demo-Aufwand:** ASSUMPTION: 12–16 Stunden.

## Notes / assumptions
- ASSUMPTION: Pilotpreise und Aufwand sind Kalkulationsannahmen, keine bestätigten NBG-Konditionen.
- Der Score bewertet einen schmalen bezahlten Pilot; Produktisierung und belastbarer Marktfit sind unbewiesen.
