---
slug: foerdermittel-vergleich
title: Fördermittel-Vergleich — "Check24 für Fördermittel"
status: dropped
created: 2026-08-18
stage: 0
---

# 00 — Idea Capture

## Raw idea
Ein digitaler Fördermittel-Berater für kleine und mittlere Unternehmen (KMU) und
Solo-/Kleinstunternehmer in DACH: Nutzer geben ihr Vorhaben (z. B. "Digitalisierung
Ladengeschäft", "Energieeffizienz Sanierung", "Gründung Beratung") und ein paar
Eckdaten ein (Region, Branche, Mitarbeiterzahl, Investitionssumme), und bekommen
eine gefilterte Liste passender Förderprogramme (Bund, Länder, EU, KfW) inkl.
Fördersatz, Antragsfrist und Antragsweg — statt selbst durch Förderdatenbank des
Bundes, KfW-Seite, Landesförderbanken und IHK-Rundschreiben zu suchen. Idee kam aus
einem Gemini-Chat zum "Fördermittelberater-Avatar" (26.06.2026); dort ging es um
einen persona-basierten Berater-Chatbot, hier verengt auf den reinen Vergleichs-/
Matching-Schritt als Kern-Painkiller.

## Monetization assumption
Zwei mögliche Modelle, beide mit konkretem Preispunkt:
1. **Self-serve Vergleich + Report:** einmalig €49–99 pro generiertem Fördermittel-
   Report (Liste passender Programme + Kurz-Checkliste Voraussetzungen), kein
   Abo — ASSUMPTION: Kaufhäufigkeit pro Kunde ~1× (Projektbezug, nicht wiederkehrend).
2. **Antragsbegleitung als Retainer/Projekt:** €500–1.500 pauschal pro erfolgreich
   eingereichtem Förderantrag (Vergleich + Dokumentenvorbereitung), ASSUMPTION:
   höherer Preis rechtfertigt sich durch Zeitersparnis ggü. Steuerberater/Consultant
   (die für Förderberatung oft €150–250/Std. verlangen).
Realistischster Startpunkt: Modell 1 (Report) als Lead-Magnet/Validierungs-Produkt,
Modell 2 als Upsell für Fälle mit hohem Fördervolumen.

## Solo fit
**Pro:** Enger, klar definierbarer Job (Matching + Recherche), lässt sich mit
öffentlich zugängl. Förderdatenbanken (z. B. foerderdatenbank.de des BMWK) plus
LLM-gestütztem Matching als MVP solo bauen; hoher Beratungswert pro Fall (Förder-
summen oft €5k–500k) rechtfertigt Preis pro Report unabhängig vom Automatisierungs-
grad; DACH-spezifisches Nischenwissen (Förderlandschaft ändert sich pro Bundesland/
Programm) ist schwer für große generalistische Player skalierbar.
**Contra:** Förderdatenbanken sind fragmentiert und ändern sich laufend (Pflege-
aufwand); Qualitätssicherung bei Fehlinformation ist heikel (Nutzer verlässt sich
auf Förderfähigkeit) — Haftungsrisiko/Vertrauensfrage bei einem Solo-Angebot ohne
Beraterzulassung.

## Trigger / why now
Aus Gemini-Chat "Fördermittelberater-Avatar" (26.06.2026): Idee eines persona-
basierten Beraters für Fördermittel-Matching. ASSUMPTION: gestiegener Förderdruck
durch Energiekosten/Transformationsdruck (Digitalisierung, Klimaziele) bei KMU seit
2024/2025 — noch nicht live verifiziert, wird in Part 0 der Devalidation geprüft.

## Open questions
- Existiert bereits ein etabliertes "Check24"-artiges Vergleichsportal für
  Fördermittel in DACH (z. B. von IHK, KfW selbst, oder privaten Anbietern)?
- Wie hoch ist die reale Erfolgsquote bei generischem Matching ohne persönliche
  Beratung — reicht eine Liste, oder braucht es zwingend menschliche Begleitung?
- Ist der Kauf-Trigger (Suchintention) stark genug für Cold Outreach, oder ist das
  eher ein SEO-/Inbound-getriebenes Geschäft (Nutzer sucht aktiv, wird nicht kalt
  angesprochen)?
- Wie granular/aktuell müssten die Förderdaten gepflegt werden, damit der Report
  vertrauenswürdig bleibt?
