---
slug: bewerbungsfoto-app
title: Bewerbungsfoto-App — KI-generierte Bewerbungsfotos
status: active
created: 2026-08-19
stage: 2
---

# 00 — Idea Capture

## Raw idea

Eine App, die aus wenigen Selfies/Handyfotos ein professionelles Bewerbungsfoto
generiert — im Hintergrund über die Gemini CLI (Nano-Banana-Bildmodell) oder
alternativ ein On-Device-LLM/Bildmodell, um laufende API-Kosten zu vermeiden.
Nutzer laden 5–10 Fotos hoch, wählen Stil/Kleidung/Hintergrund, erhalten
mehrere fertige Bewerbungsfoto-Varianten zum Download. Verwandtes Referenzprodukt:
Headshot-Pro-artige Clones (AI-Headshot-Generatoren), die als Kategorie bereits
existieren — die Idee ist ein Clone/eigene Ausprägung dieser Kategorie, kein
Anspruch auf eine Marktlücke.

## Monetization assumption

Freemium/Testphase-Modell: kostenlose Testgenerierung (z. B. 1–2 Foto-Previews
in niedriger Auflösung oder mit Wasserzeichen), danach kostenpflichtig für den
vollen Fotosatz. ASSUMPTION: Einmalzahlung €9–19 pro Fotoset (analog
Headshot-Generator-Kategorie) statt Abo, da die Nachfrage pro Nutzer meist
einmalig/anlassbezogen ist (neue Bewerbung, LinkedIn-Update). Kein B2B-Vertrag
in v1 — Endkunden-Self-Service.

## Solo fit

Pro: Klar abgegrenzter Funktionsumfang (Upload → Generierung → Download), keine
laufende Betreuung nötig, technisch als dünner Wrapper um ein bestehendes
Bildmodell (Gemini API / Nano Banana) solo baubar. Contra: Endkunden-B2C-Produkt
mit Einmalkauf — kein wiederkehrender Umsatz pro Kunde, daher Distribution
(SEO/Content/Marktplatz) strukturell wichtiger als Vertrieb; passt schlecht zu
Cold-Outreach-B2B-Pipeline, da Käufer Privatpersonen sind, nicht Unternehmen.

## Trigger / why now

- ASSUMPTION: Bildgenerierungsmodelle (Gemini/Nano Banana, u. a.) haben in den
  letzten Monaten sichtbar an Foto-Realismus gewonnen, wodurch KI-Bewerbungsfotos
  glaubwürdiger wirken als noch vor 12–24 Monaten — zu verifizieren.
  Referenzprodukt (Headshot Pro und Vergleichbares) existiert bereits als
  Kategorie; die Notiz nennt das explizit als Vorbild, nicht als Lückenbehauptung.

## Open questions

- Ist der Zielkunde (Privatperson auf Jobsuche) über Cold Outreach überhaupt
  erreichbar/anschreibbar, oder ist das strukturell ein B2C-Distributionsproblem?
- Wie stark ist die Kategorie "AI Headshot Generator" bereits besetzt, und zu
  welchen Preisen?
- Trägt On-Device-Inferenz die Marge, oder frisst Gemini-API-Kostenpro-Bild den
  Einmalpreis auf?
