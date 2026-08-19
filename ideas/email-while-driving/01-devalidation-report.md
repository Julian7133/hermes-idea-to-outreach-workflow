# 01 — Devalidation Report

> Filled by `clearframe-devalidation` (Kritiker-Rolle, greift `00c-realist.md`
> an) + `boring-and-trends-check`. Die hier gezeigten Scores sind die
> **Kritiker-Rohwerte vor der Synthese**. Die endgültigen Scores stehen in
> [`01b-synthese.md`](01b-synthese.md) — dort wird auch die Auto-Kill-Regel
> `outreach_score < 4` angewendet, nicht hier.

## Verdict (Kritiker-Rohwert, vor Synthese)
- **Score:** outreach_score 3/10, product_score 5/10
- **Go/No-Go:** vorläufig NO-GO für Outreach — **wird von der Synthese neu
  bewertet, siehe `01b-synthese.md` für den endgültigen Wert.**
- **Endgültig (nach Synthese):** outreach_score 4/10 (knapp GO), product_score
  6/10, buildable: yes — Kanalwechsel (öffentliche Geschäftsadressen statt
  reiner Verbandsansprache, E-Mail+WhatsApp statt nur E-Mail) hebt den
  outreach_score über die Auto-Kill-Schwelle. Details: `01b-synthese.md`.
- **One-line reason:** Der Realisten-Plan verzichtet selbst ausdrücklich auf
  Cold Outreach ("Ansprache über Verbandskanäle, nicht kaltes
  E-Mail-Anschreiben") — das widerspricht dem Kernmechanismus dieser Pipeline
  (Stage 3 = founder-led Cold Email); zusätzlich zeigt die Recherche, dass
  WhatsApp im Handwerk E-Mail als bevorzugten Kundenkanal zunehmend verdrängt,
  was die reine E-Mail-Fokussierung schwächt. Beides sind **weiche** Einwände
  (Kanalfragen), kein widerlegter Kernnutzen.

## CLEARFRAME breakdown (gegen den Realisten-Plan geprüft)

| Lens | Assessment |
|---|---|
| **C**ustomer | Solo-/Kleinbetrieb-Handwerksmeister (Elektro/SHK/Maler) mit 3–6 Kundenterminen/Tag — konkret genug, verifiziert durch Fachkräftemangel-/Zeitdruck-Recherche unten. |
| **L**onging/Job | Fahrzeit in Antwortzeit umwandeln, ohne abends nachzuarbeiten. |
| **E**xisting solution | Generische Voice-E-Mail-Apps (DriveMail Voice, Speaking Email $4.99/Mo) — nicht handwerkerspezifisch. Handwerker-Software-Suiten (Angebotsmeister, Meisterwerk) bieten bereits Sprachdiktat, aber für Angebote/Rechnungen, nicht für Kunden-E-Mail-Antworten während der Fahrt. |
| **A**lternative cost | Verifiziert: Handwerksbetriebe verbringen laut Branchenberichten mehr Zeit im Büro als in der Werkstatt; 62 % lehnen Aufträge wegen Personalmangels ab — Zeit ist der knappste Faktor (siehe Quellen). |
| **R**eachability | **Schwachpunkt:** Der Realist schließt kaltes E-Mail-Anschreiben selbst aus und setzt auf Verbandskanäle/Empfehlung. Das ist ein plausibler Vertriebsweg, aber kein Cold-Outreach-Case im Sinne dieser Pipeline. Öffentliche Geschäfts-E-Mail-Adressen (Impressum, Handwerkskammer-Verzeichnisse) existieren zwar, aber Handwerker gelten laut Recherche als Nutzer, die zunehmend WhatsApp statt E-Mail für Kundenkommunikation bevorzugen — offen, ob sie auf eine kalte Produkt-E-Mail reagieren. |
| **F**requency | Täglich, bei aktivem Terminkalender — starkes Argument für Abo statt Einmalkauf. |
| **R**evenue | €19/Mo ist plausibel: vergleichbare Handwerker-Tools (Angebotsmeister €39–89/Mo, Meisterwerk ab €49/Mo) zeigen, dass die Zielgruppe für Zeitersparnis-Software zahlt — €19/Mo liegt sogar unterhalb der beobachteten Vergleichspreise. |
| **A**dvantage | Nach K6 real: Julian hat tiefe praktische Erfahrung mit Agent-/Voice-Pipelines (STT→LLM→strukturierte Ausgabe) — genau das Kernstück dieses Produkts. Kein Handwerker-Branchennetzwerk oder bestehende Innungsbeziehung vorhanden. |
| **M**oat-later | Handwerksbetrieb-spezifische Antwortvorlagen-Bibliothek über Zeit, plus Integration in bestehende Handwerker-Workflows (Angebote/Rechnungen) als Ausbaustufe. |
| **E**ffort | 5–6/10: STT/LLM/Gmail-Integration technisch überschaubar (Julians Kernkompetenz), der schwierige Teil ist Vertrieb/Vertrauen in eine unbekannte Solo-Marke, nicht der Bau. |

## CLEARFRAME + Market Reality
- **TAM (sanity):** ASSUMPTION: rund 1 Mio. Handwerksbetriebe in Deutschland (Destatis-Größenordnung, nicht im Detail verifiziert), davon ein kleiner Bruchteil (Ein-Personen-/Kleinbetriebe mit viel Kundenverkehr und aktiver Digitalisierungsbereitschaft) als realistisches Erstsegment — ASSUMPTION: niedrige vierstellige bis niedrige fünfstellige Zahl.
- **Saturation / competition:** **Nicht identisch besetzt, aber angrenzend besetzt.** Angebotsmeister (Voice-zu-Angebot, €39–89/Mo, Gründerpreis €49/Mo) und Meisterwerk (modulare Handwerkersoftware ab €49/Mo + €12/Nutzer, inkl. Chat-Modul) bedienen dieselbe Zielgruppe mit demselben technischen Muster (Diktat → KI-Strukturierung), aber für Angebote/Auftragsverwaltung, nicht für Kunden-E-Mail-Antworten während der Fahrt. Generische Voice-E-Mail-Apps (DriveMail Voice, Speaking Email $4.99/Mo) bedienen das E-Mail-während-der-Fahrt-Muster, aber ohne Handwerker-Bezug. Beide Ränder sind besetzt, die Schnittmenge (Handwerker + E-Mail-Antwort-Diktat + Fahrzeit) ist es nach dieser Recherche nicht.
- **Category maturity & growth:** Emerging. Voice-Dictation-für-Handwerker ist ein 2025/2026-Trend (Angebotsmeister, Meisterwerk-KI-Funktionen erst kürzlich eingeführt), keine etablierte Kategorie mit klarem Platzhirsch.
- **CAC vs CLV sanity:** Für den Validierungs-Zweck (20–50 handverlesene, founder-geführte 1:1-Mails) ist CAC primär Zeitaufwand, kein Media-Budget — das hält die Validierung günstig, unabhängig vom Kanal-Einwand oben. Für skalierten Vertrieb später bliebe die Kanalfrage (Cold Mail vs. WhatsApp vs. Verband) offen.
- **Difficulty score:** 5/10 (technisch moderat, Vertriebsvertrauen ist der eigentliche Engpass).
- **Key risks:**
  1. **Kanalfrage ungeklärt** — der Realist selbst meidet Cold Outreach; ob kalte Geschäfts-E-Mail an Handwerksbetriebe überhaupt funktioniert, ist unbewiesen.
  2. **WhatsApp-Verdrängung** — der bevorzugte Kundenkanal im Handwerk verschiebt sich Richtung Messenger, nicht E-Mail; eine reine E-Mail-Lösung trifft ggf. den falschen Kanal.
  3. **Feature-Erweiterungsrisiko** — Angebotsmeister/Meisterwerk könnten eine E-Mail-Antwort-Diktat-Funktion als Modul nachziehen, da sie bereits Diktat-Infrastruktur und die Zielgruppe haben.

## Cited market signals (researched 2026-08-19)
- Rechtslage: Sprachsteuerung bei im Halter befestigtem, nicht in der Hand gehaltenem Telefon ist nach §23 StVO zulässig; Diktieren mit Telefon **in der Hand** ist untersagt — die MVP-Auslegung (Diktat per Sprachsteuerung, kein Halten) ist compliant. ([bussgeldkatalog.net](https://www.bussgeldkatalog.net/handy-am-steuer/))
- Adjacente Wettbewerber mit identischem Diktat-Muster, gleiche Zielgruppe: [Angebotsmeister](https://angebots-meister.de/) — KI-Diktat für Angebote, €39–89/Mo (Gründerpreis €49/Mo); [Meisterwerk](https://www.meisterwerk.app/preise) — modulare Handwerkersoftware ab €49/Mo (+€12/Nutzer), inkl. Chat/Kundenkommunikation-Modul.
- Generische Voice-E-Mail-Apps ohne Handwerker-Fokus: [DriveMail Voice](https://apps.apple.com/es/app/drivemail-voice/id6760625295) (kostenlos + In-App-Käufe); [Speaking Email](https://speaking.email/pricing) Premium $4.99/Mo.
- Kanal-Risiko: Trend zu Messenger statt E-Mail/Telefon in der Handwerker-Kundenkommunikation ([handwerk-magazin.de](https://www.handwerk-magazin.de/messengerdienste-in-betrieben-180876/), [hellomateo.de](https://www.hellomateo.de/blog-artikel/handwerker-whatsapp-kundenkommunikation)).
- Demand-Signal (Zeitdruck im Handwerk): 62 % der Betriebe müssen Aufträge wegen Personalmangels ablehnen; „Handwerk 2026: Zeitmanagement wird zur Überlebensstrategie" ([ad-hoc-news.de](https://www.ad-hoc-news.de/boerse/news/ueberblick/handwerk-2026-zeitmanagement-wird-zur-ueberlebensstrategie/68514825)); sinkende Meisterprüfungszahlen (−22 % ausbaugewerbeübergreifend, −28 % Bau) verschärfen die Personalknappheit ([iwkoeln.de](https://www.iwkoeln.de/studien/lydia-malin-fachkraeftesicherung-im-handwerk-ausbildung-zwischen-krise-und-renaissance.html)).
- Technische Machbarkeit/Kosten: Whisper-API-Kosten 2026 bei ca. $0.003–0.006/Minute, deutlich commoditisiert ([diyai.io](https://diyai.io/ai-tools/speech-to-text/openai-whisper-api-pricing-2026/), [brasstranscripts.com](https://brasstranscripts.com/blog/openai-whisper-api-pricing-2025-self-hosted-vs-managed)).

## Boring & Trends check
> Läuft, weil die Synthese (`01b-synthese.md`) den outreach_score auf ≥4
> angehoben hat — siehe dort für die Begründung des Kanalwechsels, der diesen
> Abschnitt auslöst.

- **Boring/niche defensibility:** Klar unsexy: „Sprachdiktat für Handwerker-Kundenantworten während der Autofahrt" ist keine Kategorie, die ein Product-Hunt-Launch oder ein YC-Batch reizen würde — zu schmal, zu B2B-vertical, zu wenig Netzwerkeffekt-Potenzial. Genau diese Enge macht es für gut finanzierte Generalisten (Google Assistant, Apple/ChatGPT-CarPlay) unattraktiv, weil der Umsatz pro Vertical zu klein ist, aber für einen Solo-Anbieter mit Branchenfokus ausreichend groß. Das eigentliche Risiko ist nicht Übersexyness, sondern dass die bestehenden Handwerker-Software-Anbieter (Angebotsmeister, Meisterwerk) die Funktion als Modul nachziehen — das ist ein Wettbewerbsrisiko, kein Sexyness-Risiko.
- **Sociological trend:** **Zeitknappheit als Wettbewerbsfaktor im Handwerk durch Fachkräftemangel und Bürokratie-Überlastung.** Betriebsinhaber verbringen laut Branchenberichten mittlerweile mehr Zeit im Büro als in der Werkstatt oder beim Kunden; 62 % müssen Aufträge wegen Personalmangels ablehnen. Das macht ungenutzte Zeitfenster (Fahrzeit) wertvoller als noch vor 2–3 Jahren, weil jede zurückgewonnene Büro-Minute direkt mehr annehmbare Aufträge bedeutet. Quelle: [ad-hoc-news.de, „Handwerk 2026: Zeitmanagement wird zur Überlebensstrategie"](https://www.ad-hoc-news.de/boerse/news/ueberblick/handwerk-2026-zeitmanagement-wird-zur-ueberlebensstrategie/68514825).
- **Technological trend:** **Kommoditisierung von Sprache-zu-Text- und Voice-to-structured-output-Pipelines.** Whisper-Klasse-APIs kosten 2026 nur noch $0.003–0.006/Minute (vs. deutlich höher noch vor 1–2 Jahren), und das Muster „Diktat → KI-Strukturierung" ist im Handwerker-Segment bereits produktiv im Einsatz (Angebotsmeister transkribiert und strukturiert Angebote per Sprache in unter zwei Minuten). Das senkt sowohl die Baukosten als auch das Marktrisiko, weil das grundlegende Verfahren im ICP bereits akzeptiert ist. Quellen: [diyai.io Whisper-Pricing 2026](https://diyai.io/ai-tools/speech-to-text/openai-whisper-api-pricing-2026/), [Angebotsmeister](https://angebots-meister.de/blog/beste-angebotssoftware-handwerk).

## Riskiest assumption test (RAT)
- **What to test next:** Stage 3 validation send — founder-led cold email an 20–50 handverlesene Handwerksbetrieb-Kontakte (öffentliche Geschäfts-E-Mail-Adressen aus Impressen/Handwerkskammer-Verzeichnissen, max. 30 enrolled). Pass bei ≥1 positiver Antwort ODER ≥3 menschlichen Klicks.
- **Kill signal:** 30 Sends, 0 Antworten UND <3 Klicks → `status: validation-failed`.

## Notes / assumptions
- ASSUMPTION: TAM-Zahl (Handwerksbetriebe DACH, Erstsegment-Größe) nicht separat verifiziert, nur Größenordnung.
- ASSUMPTION: CAC/CLV für skalierten (nicht nur Validierungs-)Vertrieb nicht quantifiziert — hängt von der ungeklärten Kanalfrage ab.
- Die finalen Scores dieses Berichts sind die **Kritiker-Rohwerte vor Synthese**. Verbindlich ist ausschließlich [`01b-synthese.md`](01b-synthese.md).
