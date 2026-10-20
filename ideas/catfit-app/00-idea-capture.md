---
slug: catfit-app
title: CatFit — KI-Gewichts-/Muskel-Check per Seitenfoto der Katze
status: active
created: 2026-08-19
stage: 0
---

# 00 — Idea Capture

## Raw idea
Nutzer fotografiert seine Katze von der Seite (stehend, freie Sicht auf
Silhouette); eine KI schätzt daraus Body Condition Score (Übergewicht/Idealgewicht/
Untergewicht) und grobe Muskelmasse-Einschätzung, liefert eine verständliche
Einordnung plus Trend über Zeit bei wiederholten Fotos. Analog zu "dogfit"
(Medium-Artikel, 16.04.2026) — dieselbe Idee für Hunde, hier auf Katzen
übertragen. Zielgruppe: Katzenhalter, die den Gesundheitszustand ihres Tiers
zuhause grob einschätzen wollen, ohne jedes Mal zum Tierarzt zu müssen.

## Monetization assumption
ASSUMPTION: Freemium — Einzel-Scan kostenlos (Lead-Magnet), Abo für Verlaufstracking
und Mehrfach-Scans (mehrere Katzen, Trendkurve) bei ca. €3,99–4,99/Monat oder
€29,99/Jahr, orientiert an Preisniveau von Pet-Tracking-Apps (z. B. Kinship, PetDesk).
Alternative: einmaliger Report-Kauf (€2,99) statt Abo, falls Retention zu niedrig ist.

## Solo fit
Kleiner Scope (ein Foto-Upload-Flow + ein KI-Klassifikationsmodell + Ergebnis-UI),
schmale Nische (Katzenhalter, BCS-Schätzung), solo bau- und betreibbar mit
bestehender Agent-/ML-Erfahrung. Kein Team, kein Vertrieb nötig für den Bau selbst.
Offene Frage: ob Konsumenten-B2C via App Store überhaupt zu Hermes' Cold-Outreach-
Pipeline passt (Privatpersonen sind schlecht kalt anschreibbar) — das ist der
zentrale Prüfpunkt für den `outreach_score`, unabhängig vom `product_score`.

## Trigger / why now
Direkter Auslöser: Medium-Artikel vom 16.04.2026 über "dogfit" (KI-basierte
Gewichts-/Fitness-Einschätzung für Hunde per Foto) als Vorbild-Pattern — keine
Behauptung, dass es kein vergleichbares Katzen-Tool gibt; das ist Teil der
Recherche, nicht der Prämisse.

## Open questions
- Wer ist der zahlende Kunde: Katzenhalter direkt (B2C, App-Store-Kanal) oder
  Tierärzte/Kliniken als B2B-Vorscreening-Tool (ggf. kalt anschreibbar)?
- Ist eine Foto-basierte BCS-Schätzung fachlich/rechtlich unproblematisch (keine
  Tierarzt-Ersatzdiagnose, keine Heilversprechen)?
- Gibt es bereits vergleichbare Katzen-Apps im Markt, und zu welchem Preis?
