# 00c — Realist

## Gewählte Ausprägung
**A — Werkzeug (Café-Kopilot-App)** — Führt solo am schnellsten zum zahlenden Nutzer, weil der Kaufmoment täglich und individuell auftritt (kein Institutionen-Verkauf nötig) und das Produkt als schlanker API-Wrapper in Tagen testbar ist. B braucht B2B-Sales an Unis/Studentenwerke (langsam), C ist zu saisonal eng für ganzjährigen Cashflow.
Verworfen, aber aufgehoben: **B — Dienstleistung** als späterer B2B-Pivot, wenn B2C-Churn zu hoch ist (Report an Unis verkaufen statt App an Studierende). **C — Prüfungsphasen-Navigator** als fokussierter Launch-Slice von A (saisonale Kampagne, nicht ganzjähriges Produkt).

## Der erste zahlende Kunde
**Lena, 24, Master-Studentin Psychologie in Leipzig** (stellvertretend für 20–29-jährige Studierende und Freelancer in Uni-Städten mit 50k+ Einwohnern), wohnt in WG, arbeitet 4–5 Tage/Woche außerhalb der Wohnung, hat 2–3 Stammcafés und leidet in Prüfungsphasen unter überfüllten Bibs/Cafés. **Auslöser:** Sie steht vor verschlossenem Stammcafé oder findet in der Bib keinen Platz — in diesem Moment googelt sie „ruhiges Café mit Steckdose Leipzig jetzt offen". **Moment:** Dienstag 10 Uhr, Prüfungsphase, sie braucht in 30 Minuten einen Platz.
**Erreichbar über:** Suche / App Store / Instagram/TikTok Content („3 Cafés in Leipzig wo du wirklich arbeiten kannst") und Campus-Community (Fachschaft-WhatsApp, Uni-Subreddit), nicht über Cold Outreach. SEO-Seiten pro Stadt + Campus-Flyer/QR.

## Der kleinste Beweis
**Eingabe:** Standort (GPS oder Stadtteil) + Jetzt-Zeitpunkt (automatisch) + optional 1 Filter (z.B. „Steckdose").
**Verarbeitung:** Query Google Places API (nearby café/library, opening_hours, current_opening, popular_times/live), kreuze mit eigener Mini-DB (20 Cafés in Leipzig manuell kuratiert: laptop-tolerant ja/nein, Steckdose, Lautstärke) und akademischem Kalender-Flag (Prüfungsphase ja/nein → Gewichtung Bibliothek runter, Geheimtipp-Café hoch), ranke nach 4 Signalen (offen, Auslastung niedrig, laptop-tolerant, Distanz) und wähle Top 3.
**Ausgabe:** 3 Karten mit Name, Entfernung, Ampel „gerade ruhig/mittel/voll", Grund („Stammcafé X heute Ruhetag → Alternative Y"), Öffnungszeit-Hinweis, Navigation-Link.
**Bewusst nicht drin:** User-Accounts/Logins, Bewertungen, Buchung, Bezahlung im Café, Crowd-Eingaben, Push, Offline-Modus, iOS/Android-Nativ — nur Web-App, nur Leipzig, nur 20 kuratierte Orte + Bibliotheken.

## Weg zum ersten Euro
**Preis:** 4,99 €/Mo oder 29 €/Jahr — Begründung: Ein gesparter Fehlweg (30 Min + Kaffee 4 €) pro Woche rechtfertigt den Preis; ein Coworking-Tag kostet 15–25 €, ein Monat dort 200–400 €. Pro ist „1 Kaffee im Monat für nie wieder Suchen".
1. 20 Cafés in Leipzig kuratieren (je 10 Min Recherche + Anruf: laptop-tolerant? Steckdose? Ruhetag?) und in JSON-DB pflegen.
2. One-Page-Web-App bauen (Next.js, Google Places API, Ampel-Logik, 3-Vorschlags-Ranking) und auf Vercel deployen.
3. 5 Testnutzer (Kommilitonen) täglich 1 Woche nutzen lassen, Trefferquote messen („war der Vorschlag wirklich gut?").
4. Landing mit Stripe-Payment-Link + 7-Tage-Gratis-Pro live stellen.
5. Content-Seed: 3 TikToks/Reels + 1 Reddit-Post „Ich habe 20 Leipziger Cafés getestet — diese 3 sind leer um 10 Uhr" mit Link → erste zahlende Conversion messen.

## Aufwand und Abhängigkeiten
**Aufwand kleinster Beweis:** 6–8 Tage solo (1 Tag DB-Kuratierung, 2 Tage API-Integration + Ranking, 2 Tage UI, 1 Tag Stripe/Landing, 1–2 Tage Test + Content). **Fehlende Zugänge:** keine, Google Places API vorhanden (Pay-as-you-go). **Drittabhängigkeiten:** Google Places API (Pricing, Rate Limits, ToS für Caching), akademischer Kalender (manuell gepflegt, kein API), Stripe. Kein Rechtsrisiko, aber Google-ToS für Popular Times-Caching prüfen.

## Riskanteste Annahme
**Annahme:** Nutzer zahlen 4,99 €/Mo für kuratierte 3 Vorschläge, obwohl Google Maps gratis eine Kartenübersicht bietet.
**Billiger Test:** Vor dem Bau: 10 intercept-Interviews vor Leipziger Bibs/Cafés („Wie findest du heute deinen Arbeitsplatz? Würdest du 5 € zahlen, um nie wieder suchen zu müssen?") + Fake-Door-Landing (Beschreibung + „Pro freischalten"-Button → E-Mail-Capture, messen wie viele klicken). Kosten: 0 €, 2 Tage.
