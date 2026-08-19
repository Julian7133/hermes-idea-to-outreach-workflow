# 00c — Realist

## Gewählte Ausprägung
**B — Dienstleistung (Vorscreening-Tool für Tierarztpraxen)** — Tierarztpraxen
sind eine kalt anschreibbare, organisierte Zielgruppe (öffentlich gelistete
Praxisadressen, Ansprechpartner), im Gegensatz zu privaten Katzenhaltern.
Praxen haben zudem ein wiederkehrendes, dokumentationspflichtiges Problem
(Übergewicht bei Katzen als Dauerthema in der Sprechstunde), das sich in Geld
übersetzen lässt — ein einzelner Praxis-Account ersetzt hunderte
Einzelverkäufe an Privatpersonen.
Verworfen, aber aufgehoben: **A (Werkzeug)** wäre die größte Zielgruppe, aber
nur über App-Store-Marketing/SEO erreichbar, nicht kalt anschreibbar. **C
(Nische Diät-Tracking)** ist ein möglicher Wedge *innerhalb* von B, sobald ein
Praxis-Kunde da ist — als Feature, nicht als eigener Erstkanal.

## Der erste zahlende Kunde
Eine Kleintierpraxis mit 1–3 Tierärzt:innen in einer mittelgroßen deutschen
Stadt, die überdurchschnittlich viele Katzenpatienten hat (Katzen-Schwerpunkt-
oder reine Katzenpraxis) und bereits eine digitale Patientenverwaltung nutzt.
Auslöser: die Praxis merkt, dass sie Gewichtsverlauf bei Diät-Patienten
zwischen Terminen aktuell nur per Papier-Erinnerung oder gar nicht trackt, und
Übergewicht ein häufiges Beratungsgespräch ist, das Zeit kostet.
**Erreichbar über:** Cold Outreach per E-Mail/LinkedIn an Praxisinhaber:innen —
öffentlich gelistete Praxen (Tierärztekammer-Verzeichnisse, Google Maps,
Praxis-Websites) mit klar identifizierbarem Ansprechpartner, genau der Kanal,
für den Hermes gebaut ist.

## Der kleinste Beweis
**Eingabe:** Ein Seitenfoto einer Katze (vom Halter via Link/QR-Code
hochgeladen, den die Praxis dem Halter mitgibt).
**Verarbeitung:** KI-Modell schätzt Body Condition Score (1–9-Skala, etabliertes
Veterinär-Schema) aus der Silhouette; Ausgabe als Einordnung + Konfidenzhinweis,
kein Diagnosetext.
**Ausgabe:** Ein PDF/Dashboard-Eintrag für die Praxis mit BCS-Schätzung,
Foto-Datum, und bei wiederholten Fotos einer einfachen Verlaufskurve pro
Patient.
**Bewusst nicht drin:** Keine automatische Diagnose, keine Medikationsempfehlung,
keine Muskelmasse-Feinmetrik im MVP (nur BCS-Grobeinordnung), keine
Integration in bestehende Praxissoftware.

## Weg zum ersten Euro
**Preis:** €39–59/Monat pro Praxis (Flatrate, unbegrenzte Patienten) —
begründet aus dem Nutzen: spart der Praxis wiederkehrende manuelle
Gewichtsgespräche/Dokumentation, kein Pay-per-Scan, das die Nutzung bremst.
1. 15–20 Katzen-Schwerpunktpraxen identifizieren und Kontaktdaten sammeln.
2. Cold-Outreach-Kampagne mit konkretem Nutzenversprechen ("Gewichtsverlauf
   Ihrer Diät-Patienten automatisch dokumentiert") und Demo-Link.
3. 3–5 Praxen für kostenlosen 4-Wochen-Test gewinnen.
4. Feedback zur BCS-Genauigkeit einholen, Modell/UX nachschärfen.
5. Erste zahlende Praxis nach Testphase konvertieren.

## Aufwand und Abhängigkeiten
ASSUMPTION: 10–15 Tage für den kleinsten Beweis (Foto-Upload-Flow, BCS-Modell
per Fine-Tuning/Few-Shot auf vorhandenem Vision-Modell, einfaches
Praxis-Dashboard). Fehlend: Trainings-/Referenzdaten für Katzen-BCS
(Tierarzt-annotierte Fotos), um das Modell zu kalibrieren — größte Abhängigkeit.
Keine Zulassungspflicht zu erwarten, solange das Tool explizit als
Vorscreening/Dokumentationshilfe positioniert wird, nicht als Diagnosegerät.

## Riskanteste Annahme
**Annahme:** Ein Seitenfoto liefert genug Information für eine BCS-Einschätzung,
der Tierärzt:innen genug vertrauen, um sie im Praxisalltag zu nutzen.
**Billiger Test:** 20–30 vorhandene Katzenfotos mit bekanntem, tierärztlich
dokumentiertem BCS-Wert sammeln (z. B. aus offenen Datensätzen oder eigenem
Praxiskontakt), das Modell/eine Few-Shot-Klassifikation manuell dagegen prüfen,
bevor eine Zeile Produkt-Code für die Praxis-UI geschrieben wird.
