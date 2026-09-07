---
slug: coworking-cafe-finder
title: Coworking-Café-Finder — 3 kuratierte Vorschläge mit Auslastung & Prüfungsphasen-Erkennung
status: dropped
created: 2026-09-07
stage: 0
---

# 00 — Idea Capture

## Raw idea
App (Mobile/Web) für laptop-arbeitende Café-Nutzer, Studenten und Freelancer in DACH-Uni-Städten. Statt endloser Karten-Suche liefert sie per Standort + Tageszeit **genau 3 Vorschläge** für jetzt passend: Cafés mit Laptop-Toleranz plus Bibliotheken als Fallback. Signale: Google Maps Popular Times / Live-Auslastung, Öffnungszeiten/Ruhetage/Feiertage, akademischer Kalender (typische Prüfungsphasen = Bibliotheken/Cafés überfüllt). Erkennt, wenn das Stammcafé heute geschlossen ist, und routet automatisch um. Filter: Steckdose, Lautstärke, WLAN, Sitzdauer-Toleranz. Kein Verzeichnis, sondern Entscheidungshilfe.

Wertversprechen (nach K1): Nicht „es gibt nichts Vergleichbares", sondern: **Du verschwendest keine 20 Minuten mehr mit Herumlaufen oder Maps-Scrollen, weil du in 10 Sekunden 3 Orte bekommst, die jetzt wirklich offen, ruhig genug und nicht überfüllt sind.**

## Monetization assumption
**Primär B2C-Freemium-Abo:** Gratis = 3 Suchen/Tag, alle Basis-Signale. **Pro: 4,99 €/Mo oder 29 €/Jahr** für unbegrenzte Suchen + Filter (Steckdose, WLAN-Qualität, Lautstärke), Offline-Merkliste, Push „Stammcafé heute zu – hier die Alternative". ASSUMPTION: 3–5 % der MAU konvertieren zu Pro; bei 10k MAU ≈ 1.500–2.500 € MRR.

**Sekundär (nicht Cold-Outreach-basiert):** Affiliate/Lead-Fee für Coworking-Spaces, wenn Nutzer aus „Café voll" auf buchbaren Desk ausweicht (ASSUMPTION: 15–25 €/Lead, nicht validiert). Cafés selbst werden nicht als zahlende Kunden angesetzt — Kaltakquise an Cafés ist strukturell unattraktiv (geringe Marge, Inhaber-Entscheider, kein Budget für Listung).

## Solo fit
**Passt:** Kleiner Scope, klarer Nutzer-Moment („wo arbeite ich heute?"), solo baubar als Wrapper um Google Places API + eigene Kuratierungs-DB (Café-Toleranz, Steckdosen), plus Scraping akademischer Kalender. Kein Team nötig, keine Enterprise-Integration. Deutsche/DACH-Städte als enger Startmarkt.

**Passt schlecht:** Reiner B2C-Case — Cold Outreach (Hermes-Kern) greift hier nicht; Distribution läuft über App Store / SEO / Content / Campus-Community, nicht über 1:1-E-Mail an Firmen. Wiederkehrende Nutzung ist saisonal (Prüfungsphasen = Peak, Sommerloch). Datenpflege (Café-Regeln ändern sich) und Google-API-Kosten sind laufender Aufwand. Kein offensichtlicher B2B-Zahler mit Budget und Erreichbarkeit per Cold Mail.

## Trigger / why now
Remote/Hybrid-Arbeit + „Work from Café" bleibt nach Corona auf hohem Niveau (RTO-Debatten treiben alternierende Orte); Coworking-Spaces in DACH sind teuer (200–400 €/Mo) — Café als Null-Euro-Coworking. Gleichzeitig: Uni-Bibliotheken in Prüfungszeiten notorisch überfüllt, Cafés schwanken saisonal. Google Places API / Popular Times / Live-Auslastung ist breit verfügbar und günstig abfragbar (technisch möglich ohne eigene Sensorik). Trend zu „laptop-friendly" Filter auf Maps & Apps zeigt Nachfrage, löst aber das „3 Vorschläge jetzt"-Problem nicht kuratiert.

## Open questions
- Wie zuverlässig sind Google Popular Times / Live-Auslastung für kleine Cafés (Datenlücken)?
- Welche Städte haben genug Dichte an laptop-toleranten Cafés, um 3 relevante Vorschläge zu garantieren?
- Zahlen Nutzer 4,99 €/Mo für etwas, das Google Maps + Instagram gratis annähernd leisten?
- Wie kuratiert man „Laptop-Toleranz" skalierbar (Crowd vs. manuell vs. reviews parsen)?
- Lizenz-/ToS-Risiko: Dürfen Popular-Times-Daten so gecacht/weiterverkauft werden?
- Reicht Bibliotheks-Fallback als Differenzierung oder braucht es Coworking-Space-Integration?
