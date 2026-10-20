# 00c — Realist

## Gewählte Ausprägung
**A — Werkzeug (Self-Service B2C über SEO/Content)** — die explizit benannte Fallback-Ausprägung aus dem Auftrag. Begründung: Sie ist die einzige, die zum erzwungenen Vertriebskanal (SEO/Content, nicht Cold Outreach) passt; B (Dienstleistung) skaliert solo nicht über Content, C (Nische) überlappt direkt mit der bereits im Bau befindlichen Praxis-B2B-Variante und würde kanibalisieren.
Verworfen, aber aufgehoben: **B — Dienstleistung** (höherer Preispunkt, aber manueller Aufwand pro Kunde, kein SEO-Skaleneffekt). **C — Nische** (bereits als eigenständiges Produkt `bewerbungsfoto-app` im Bau — nicht duplizieren).

## Der erste zahlende Kunde
26-jährige Bewerberin (Bachelor/Master-Absolventin oder Young Professional 1–3 Jahre Berufserfahrung) in einer deutschen Großstadt, bewirbt sich auf 5–15 Stellen in den nächsten 4 Wochen, besitzt kein aktuelles Studiofoto, googelt "Bewerbungsfoto KI erstellen" oder "KI Bewerbungsfoto kostenlos" und landet über SEO auf der Landingpage. Auslöser: konkreter Bewerbungstermin in dieser Woche, Zeitdruck, kein Budget/Lust für Studio (€80–150 inkl. Anfahrt/Wartezeit). Sie will in 10 Minuten ein Ergebnis, zahlt per Apple Pay/Stripe und lädt das Foto direkt in den Lebenslauf.
**Erreichbar über:** Organische Suche (SEO) + Content ("Wie sieht das perfekte Bewerbungsfoto 2026 aus", Vorher/Nachher-Beispiele) und ggf. ergänzend günstige SEA auf Longtail-Keywords. Kein Cold Outreach — per Definition kein Outreach-Case, sondern inbound.

## Der kleinste Beweis
**Eingabe:** 3–5 Handy-Selfies (unterschiedliche Winkel, normales Tageslicht) + Stilwahl (z. B. "Bewerbung seriös", "LinkedIn freundlich").
**Verarbeitung:** Prompt-Template pro Stil an Bildgenerierungs-API (Gemini/Nano Banana), 3–5 Kandidatenbilder pro Stil (insgesamt 6–12 generierte Bilder).
**Ausgabe:** Galerie der besten 3–5 Bilder in hoher Auflösung, direkt downloadbar (JPEG, 300 dpi, Bewerbungsfoto-Zuschnitt 4:3 + LinkedIn-Quadrat), Kauf erst nach Vorschau der Wasserzeichen-Thumbnails (Try-before-you-buy).
**Bewusst nicht drin:** Kein Abo, keine Kleidungs-Bibliothek zum Selbst-Kombinieren, kein "Team-Modus", keine manuelle Retusche/Kuration — Self-Service pur. Kein User-Account nötig, keine Terminbuchung.

## Weg zum ersten Euro
**Preis:** €19 (Basic: 3 Varianten, 1 Stil) / €27 (Pro: 8–12 Varianten, 2–3 Stile) — Begründung: Endkunde spart den Studiobesuch (€80–150 + Zeitaufwand halber Tag), zahlt aber nur für ein digitales Produkt ohne menschlichen Kontakt; Preis muss unterhalb der psychologischen "Studio-Schwelle" liegen, aber oberhalb "Gratis-KI-Spielerei" signalisieren, dass Qualität dahintersteht.
1. Einfache Web-App bauen (Upload → Stilwahl → Generierung → Galerie → Stripe-Checkout).
2. 3–5 SEO-Landingpages texten ("KI Bewerbungsfoto erstellen", "Bewerbungsfoto mit KI", "LinkedIn Foto KI generieren") + 2 Vorher/Nachher-Beispiele mit echten Testfotos.
3. Seiten indexieren lassen, Search-Console einrichten, erste organische Impressions abwarten (2–4 Wochen).
4. Parallel 1–2 günstige SEA-Tests auf Longtails (€5–10/Tag) zur Validierung der Zahlungsbereitschaft, bevor SEO trägt.
5. Ersten zahlenden Kunden gewinnen, Conversion-Rate und Refund-Quote messen.

## Aufwand und Abhängigkeiten
ASSUMPTION: 4–7 Tage bis zum ersten lauffähigen Beweis (Web-App-Skelett, Gemini-API-Anbindung, Prompt-Rezepte pro Stil, Stripe-Checkout, simple Landingpage). Fehlt: stabile Prompt-Rezeptur für Gesichtsähnlichkeit + stiltreue Kleidung (Kernrisiko), SEO-Texte/Bilder. Drittabhängigkeit: Gemini-API-Verfügbarkeit/-Kosten pro Bild, Stripe, DSGVO-Einwilligung für Foto-Upload (B2C-Einwilligung simpel, kein Gesundheitsdaten-Problem wie bei Praxis-Variante). Kein AVV-Blocker wie bei B2B-Gesundheit.

## Riskanteste Annahme
**Annahme:** Genug suchende Nutzer finden die Seite über SEO/SEA und sind bereit, €19–27 für ein KI-Bewerbungsfoto zu zahlen, statt ein kostenloses Tool (z. B. Aragon Free, Canva, ChatGPT) zu nutzen oder das Handyfoto zu behalten.
**Billiger Test:** Vor dem Bau Keyword-Recherche (Suchvolumen + CPC für "Bewerbungsfoto KI") und 5 qualitative Interviews: "Würdest du €19 für ein KI-Bewerbungsfoto zahlen?" + Konkurrenz-Preischeck (was verlangen Dr. Headshot, CV Pics & Co. für B2C-Sets?).
