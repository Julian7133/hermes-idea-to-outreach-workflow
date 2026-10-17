# 01 — Devalidation Report

**Gate:** PASS + GREENLIGHT NEXT STAGE (Julian, 2026-10-17); Stage 1 → Stage 2 freigegeben.

## CLEARFRAME
- **Customer:** Privat geführte Tagungs- und Eventhotels mit wiederkehrenden Gruppen-/Veranstaltungsanfragen und manuell erstellten Angeboten.
- **Job:** Aus unvollständigen Anfragen schnell einen belastbaren, bearbeitbaren Angebotsentwurf erstellen.
- **Existing solution:** Event-CRM/Sales-&-Catering-Software, Vorlagen und manuelle Arbeit; Event Temple deckt den Hotelprozess einschließlich Function Spaces und Banquet Orders ab.
- **Alternative cost:** ASSUMPTION: Zeitverlust bei langsamer Bearbeitung und wiederholter Dateneingabe; konkrete Stunden-/Umsatzwerte des Zielkunden sind nicht bekannt.
- **Reachability:** Ein konkreter warmer Kontakt (Hotel Maximilian’s); weitere 20–50 passende DACH-Häuser sind grundsätzlich identifizierbar, aber noch nicht recherchiert.
- **Frequency:** ASSUMPTION: Bei aktiven Tagungshäusern wiederkehrend, kundenspezifisches Volumen offen.
- **Revenue:** Plausibler Freelancer-Pilot 2.500–5.000 €, danach Einführung 4.000–8.000 € und optional 300–700 €/Monat (Annahmen).
- **Advantage:** Gesprächszugang und bekannte Angebotsprozess-Assets; tiefe Hotelsoftware-Integration ist nicht belegt.
- **Moat-later:** Bewährte hotelspezifische Vorlagen, geprüfte Paket-/Preislogik und funktionierende Integration; derzeit nur Hypothese.
- **Effort:** Mittel bis hoch, vor allem wegen Daten-/PMS-Anbindung und Preisregeln.

## Verdict
- **Score:** 6/10
- **Go/No-Go:** GO
- **One-line reason:** Konkreter warmer Bedarf und hoher Projektwert; etablierte Hotelsoftware macht einen generischen KI-Entwurf allein jedoch wenig differenziert.

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** ASSUMPTION: DACH-Privathotels mit nennenswertem Tagungs-/Eventgeschäft bilden eine erreichbare, aber begrenzte Nische; für ein Solo-Projektgeschäft reichen wenige passende Implementierungen pro Jahr.
- **Saturation / competition:** Event Temple bietet Hotel-Sales-/Event-Management ab $249/Monat und nennt Opera Cloud-Integration; MyHotelOps vermarktet Vorlagen, Pakete, Inline-Preise und gebrandete PDFs. Ein individueller Assistent muss sich an bestehenden Systemen integrieren, nicht deren Kern ersetzen.
- **Category maturity & growth:** Growth bei KI-gestützten Hotelprozessen, aber Reifegrad uneinheitlich. Die europäische Hotelerhebung 2025 zeigt 43% ohne KI-Nutzung und 16% mit kurzfristiger Einführungsabsicht; zugleich bestehen Integrationshürden.
- **CAC vs CLV sanity:** Bei 2.500–8.000 € Einführungsumsatz kann 1:1-Vertrieb über warme Branchenkontakte wirtschaftlich sein (ASSUMPTION). Ein kleiner SaaS-Preis wäre angesichts Integrationsverkauf und Support ungeeignet.
- **Difficulty score:** 7/10
- **Key risks:** Verfügbarkeits-/Preisregeln sind nicht zuverlässig aus Anfrage und Vorlagen ableitbar; Event-CRM-Anbieter decken Kernworkflow ab; Opera-Cloud-Migration kann Prioritäten und Integrationspfad verändern.

## Cited market signals (researched 2026-10-17)
- Event Temple nennt Hotel-spezifische Funktionsflächen, Banquet Orders, Opera-Cloud-Integration und Einstieg ab $249/Monat: [Event Temple](https://www.eventtemple.com/).
- MyHotelOps wirbt mit gespeicherten Paketen, Inline-Preisen und gebrandeten Angebots-PDFs; der Kernnutzen ist damit bereits als Produktkategorie besetzt: [MyHotelOps Events](https://myhotelops.com/lp/events).
- Eine Erhebung unter mehr als 1.500 Hotels in sechs europäischen Ländern (Jan.–Apr. 2025) berichtet 43% ohne KI und 16% mit baldiger Einführungsabsicht; viele unabhängige Häuser bleiben vorsichtig: [HES-SO/Hotelverband-Studie (PDF)](https://www.hotellerie.de/fileadmin/user_upload/Dokumente/Studien_und_Umfragen/Schegg_2025_AI_Adoption_in_European_Hotels_03072025.pdf).
- Event Temple gibt an, 1.400+ Hotels zu bedienen und bietet einen kostenlosen Rechner für Meetingraum-/Paketpreise: [Event Temple](https://www.eventtemple.com/) und [Meeting Space Pricing Calculator](https://www.eventtemple.com/meeting-space-pricing-calculator).
- Der Hotel-&-Chains-Report 2025 nennt steigende Personalkosten und Fachkräftemangel als Branchendruck; Übernachtungen 2024 in Deutschland lagen 1,9% über 2023: [Horwath HTL DACH Report](https://horwathhtl.com/wp-content/uploads/2025/10/DACH-Hotel-Chains-Report_2025_251017.pdf).

## Boring & Trends check
- **Boring/niche defensibility:** Angebotsentwürfe für Tagungs-/Eventanfragen sind ein konkreter Backoffice-Workflow, keine breite Gästebot-Plattform. Die Nische wird nur defensibel, wenn vorhandene Hotelprozesse und Freigaben sauber abgebildet werden; reine Textgenerierung ist leicht kopierbar.
- **Sociological trend:** Fachkräftemangel und steigende Personalkosten im DACH-Hotelbetrieb erhöhen den Druck, Verwaltungszeit zu sparen; das kann den Wert schneller Angebotsbearbeitung heben. Quelle: [Horwath HTL DACH Report 2025](https://horwathhtl.com/wp-content/uploads/2025/10/DACH-Hotel-Chains-Report_2025_251017.pdf).
- **Technological trend:** Hotelsoftware wird stärker für KI-gestützte Vertriebsabläufe geöffnet: Event Temple beschreibt Opera-Cloud-Integration sowie Hotel-spezifische Workflows, was die technische Machbarkeit integrierter Entwürfe verbessert. Quelle: [Event Temple](https://www.eventtemple.com/).

## Riskiest assumption test (RAT)
- **What to test next:** Stage 3 validation send — founder-led cold email to 20–50 hand-picked ICP contacts (max 30 enrolled). Pass if ≥1 positive reply OR ≥3 human clicks after sends complete.
- **Kill signal:** 30 sends, 0 replies AND <3 human clicks → `status: validation-failed`.

## Schnell-Umsatz-Check
- **CRM-Kontakt mit möglichem Kauf innerhalb 8 Wochen:** Theo Gandenheimer, Hotel Maximilian’s; er nannte den Use Case als Favoriten. Ein Kauf binnen 8 Wochen ist nicht belegt: im Kontext ist Projektstart Ende Jan./Anfang Feb. 2027 genannt (ASSUMPTION, dass ein bezahlter Vorab-Pilot früher möglich wäre).
- **Kleinstes verkaufbares Erstprodukt:** 90-minütige Angebotsprozessaufnahme plus klickbarer/prozessnaher Entwurfsprototyp mit 3 anonymisierten Beispielanfragen, 1.250 € netto (ASSUMPTION).
- **Demo muss zeigen:**
  - Anfragefelder strukturiert übernehmen
  - Raum-/Paketvorschlag nachvollziehbar begründen
  - Preisfelder aus gepflegter Beispielpreisliste einsetzen
  - Angebotsentwurf und Function-Sheet-Basis erzeugen
  - Unsicherheiten markieren und Freigabe erzwingen
- **Demo-Aufwand:** 18 Stunden (ASSUMPTION).
