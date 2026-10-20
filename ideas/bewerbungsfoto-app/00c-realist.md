# 00c — Realist

## Gewählte Ausprägung
**C — Die Nische**, zugespitzt auf **Arztpraxen/kleine Kliniken**, die ein
einheitliches Team-Fotoset fürs Praxisprofil (Website, Google-Profil,
Klinikflur) brauchen. Begründung: Eine Einzelperson auf Jobsuche ist kalt nicht
seriös anschreibbar (Privatperson, kein Firmen-Impressum, keine
B2B-Kaufsituation) — eine Praxis mit 5–15 Mitarbeitenden ist ein Unternehmen
mit Ansprechperson (Praxismanagement), erreichbar und mit einem wiederkehrenden
Anlass (neue Mitarbeitende, Website-Relaunch alle 1–2 Jahre).
Verworfen, aber aufgehoben: **A — Werkzeug** (B2C-Self-Service für
Einzelpersonen; guter Ausbau-Kanal später über SEO/Content, aber kein
Cold-Outreach-Case). **B — Dienstleistung** als generischer Foto-Concierge ohne
Branchenzuspitzung (zu breit, kein klarer Erstkunde, konkurriert direkt mit
etablierten Headshot-Generatoren ohne Differenzierung).

## Der erste zahlende Kunde
Praxismanagerin einer Hausarzt- oder Zahnarztpraxis mit 6–12 Mitarbeitenden in
einer deutschen Mittelstadt, die gerade die Praxiswebsite überarbeitet oder ein
neues Teammitglied eingestellt hat und merkt, dass die bestehenden Team-Fotos
uneinheitlich sind (unterschiedliche Kittel, unterschiedliches Licht, teils
Handyfotos). Der Auslösemoment: der Webdesigner oder die Marketingagentur der
Praxis fragt nach "aktuellen, einheitlichen Team-Fotos" und die Praxis will
keinen Fototermin für zwölf Personen mit Terminausfällen koordinieren.
**Erreichbar über:** Cold E-Mail/LinkedIn an Praxismanagement, mit Verweis auf
die konkrete Website der Praxis (personalisiert, "Ihre Team-Seite zeigt X
verschiedene Foto-Stile") — klassischer 1:1-B2B-Outreach-Case, passend zur
bestehenden Pipeline.

## Der kleinste Beweis
**Eingabe:** 3–5 Handyfotos einer einzelnen Person (unterschiedliche Winkel,
normales Licht) plus ein Praxis-Stilprofil (Kittelfarbe/kein Kittel,
Hintergrundfarbe, Bildausschnitt).
**Verarbeitung:** Bildgenerierung über Gemini API (Nano Banana o. ä.),
Prompt-Template pro Stilprofil, 3–5 Kandidatenbilder pro Person.
**Ausgabe:** Eine Kontaktabzugsseite mit den 3–5 generierten Varianten in
hoher Auflösung, downloadbar, im selben Bildausschnitt für alle Personen
eines Teams (damit sie auf einer Team-Seite konsistent wirken).
**Bewusst nicht drin:** Kein Self-Service-Editor, keine Kleidungs-Bibliothek
zum Selbst-Zusammenstellen, kein Bezahl-Checkout in v1 — der erste Verkauf
läuft manuell (Angebot, Zahlung per Rechnung), nicht automatisiert.

## Weg zum ersten Euro
**Preis:** €15–25 pro Person, gestaffelt ab 5 Personen (z. B. €120 für ein
6-köpfiges Team) — Begründung aus dem Nutzen: ersetzt einen Fototermin, der für
eine Praxis mit Ausfallzeiten und Koordination real €300–600+ kostet
(ASSUMPTION, kein verifizierter Vergleichspreis für Praxis-Fotoshootings).
1. 10 lokale Praxis-Websites screenen und drei mit sichtbar uneinheitlichen
   Team-Fotos identifizieren.
2. Für eine Praxis testweise ein Team-Fotoset mit den eigenen Testfotos
   erstellen (Proof, kein echter Kunde) — zeigt Qualität vor dem ersten Kontakt.
3. 15–20 Praxismanagements personalisiert per E-Mail anschreiben, mit dem
   Proof-Bild als Anhang/Link.
4. Bei erstem Interesse: kostenlose Generierung für eine Person der Praxis als
   Muster anbieten, danach Vollpreis fürs ganze Team.
5. Erste Zahlung per Rechnung einziehen, Ergebnis liefern, Referenz einholen.

## Aufwand und Abhängigkeiten
ASSUMPTION: 3–5 Tage bis zum ersten lauffähigen Beweis (Gemini-API-Anbindung,
Prompt-Iteration für konsistenten Stil über mehrere Personen, einfache
Ausgabeseite). Fehlt: verlässliche Prompt-Rezeptur, die Gesichtsähnlichkeit
über mehrere generierte Varianten hinweg stabil hält (Kernrisiko der Technik).
Drittabhängigkeit: Gemini-API-Verfügbarkeit/-Kosten pro Bild, sowie
Persönlichkeitsrechte/Einwilligung der abgebildeten Mitarbeitenden (DSGVO,
Foto-Nutzung — von der Praxis einzuholen, nicht vom Anbieter).

## Riskanteste Annahme
**Annahme:** Die generierte Bildqualität ist gut genug, dass eine Praxis sie
auf ihrer echten Website statt eines Fotoshootings verwenden würde — nicht nur
"witzig zum Ausprobieren".
**Billiger Test:** Vor jedem Outreach ein echtes Testset mit eigenen Fotos
erzeugen und drei fachfremden Personen ungestützt zeigen ("Foto oder KI?");
erst bei überzeugendem Ergebnis überhaupt anschreiben.
