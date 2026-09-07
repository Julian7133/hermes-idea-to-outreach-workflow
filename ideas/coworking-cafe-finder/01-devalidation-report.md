# 01 — Devalidation Report

> Filled by `clearframe-devalidation` (Kritiker greift Realisten-Plan an, nicht Rohidee). **Auto-abort-Regel erst nach Synthese — hier nur Kritiker-Verdikt.**
> **Researched 2026-09-07** — Part 0 Live-Recherche Pflicht vor Scoring (min. 3 Suchen, verifizierte Preise/Signale).

## Verdict (Kritiker — vor Synthese)

- **outreach_score:** 2/10 — kein Cold-Outreach-Case
- **product_score:** 4/10 — besetzter Markt, aber plausibler Wedge benennbar
- **Go/No-Go (bezieht sich auf outreach_score):** NO-GO
- **One-line reason:** B2C-Freemium für Studierende/Freelancer ist nicht kalt per E-Mail validierbar (kein B2B-Budgethalter, Distribution über App Store/SEO), und das Kernsignal „Auslastung über Google Maps" liefert die offizielle Places API gar nicht — Wettbewerber mit identischem Gratis-Nutzen (CTWF, Twork, Cafe-Nomad) setzen Zahlungsbereitschaft für 4,99 €/Mo unter Druck.

## CLEARFRAME breakdown (bezogen auf Realisten-Plan: Werkzeug A — Leipzig-Web-App, 3 Vorschläge)

| Lens | Assessment |
|---|---|
| **C**ustomer | Studierende (20–29) + Freelancer/Remote in DACH-Uni-Städten mit WG/Bib-Druck — nicht „alle Cafe-Gänger". Konkreter Moment: Prüfungsphase, Stammcafé zu/voll, jetzt sofort Platz gesucht. |
| **L**onging/Job | In 10 Sek. 3 Orte, die jetzt offen, ruhig genug und willkommen für Laptop sind — statt 20 Min. Maps-Scrollen + Herumlaufen. |
| **E**xisting solution | Google Maps (öffnungszeiten, Reviews, Fotos), kostenlose Kuratoren-Apps: Cafés To Work From (200+ Städte, 50+ Länder, CTWF), Twork, Remoto, Cafe-Nomad (30k Cafés, 126 Städte), Freework, Café Cartographer, LaptopFriendlyCafe.com; plus Coworking Day-Pass (15–25 €/Tag), Bib. |
| **A**lternative cost | ASSUMPTION: 20–40 Min. Suchzeit pro Fehlversuch + 4–5 € Kaffee pro Anlauf; Woche mit 2–3 Fehlversuchen ≈ 1–2 h + 8–15 €. Kein harter Budget-Posten, eher Ärgernis — Preisanker „gratis" stark. |
| **R**eachability | Für Hermes-Outreach: **sehr schlecht** — B2C-Zielgruppe nicht über 1:1-B2B-Mail erreichbar; Unis/Studentenwerke als B2B nur via Gremien, nicht Cold Mail. Für Produkt-Distribution: gut über Suche/Reddit/TikTok/Store, aber das ist nicht Hermes Stage 3. |
| **F**requency | Täglich in Vorlesungszeit, peak in 6 Prüfungswochen/Semester, Loch in Semesterferien. Wiederkehrend ja, aber saisonal — Retention-Risiko im Sommer. |
| **R**evenue | ASSUMPTION: 4,99 €/Mo oder 29 €/Jahr × 3–5 % Conversion aus MAU → bei 10k MAU ≈ 1.500–2.500 € MRR; nach Store-Fee/Steuer ~1.000–1.800 €. Coworking-Affiliate 15–25 €/Lead unvalidiert, volumenarm. |
| **A**dvantage | Nach K6: DACH-Freelancer mit Marke, Agent-Orchestrierung, ~20 Projekte — hilft beim Bau (Scraping, Ranking), aber **kein** unfairer Vorteil bei Café-Kuratierung oder B2C-App-Distribution; DACH-Nähe/Deutsch ist kleiner Vorteil gegenüber primär englischen Apps. |
| **M**oat-later | Kuratierte „Laptop-Toleranz"-DB + Prüfungsphasen-Gewichtung + Feedback-Loop; verwundbar: Google-ToS, Nachahmung durch CTWF/Maps-Feature, Datenpflege skaliert linear mit Städten. |
| **E**ffort | 6–7/10 solo: Web-App + Places API + eigene Kuratierungs-DB + Prüfungs-Kalender + Stripe; laufender Pflegeaufwand pro Stadt (Öffnungszeiten ändern, Cafés schließen) + API-Kosten. |

## Market Reality Evaluator (kritischer Blick)

- **TAM (sanity, nicht Scheinpräzision):** ASSUMPTION: DACH-Uni-Städte 20+ mit 20k+ Studierenden je 5–10k tägliche Café-Arbeiter (Studierende + Freelancer). Adressierbar für „bezahltes Café-Tool" deutlich kleiner: 1–3 % davon würde je suchen, zahlungsbereit 3–5 % der Suchenden → 5–15k potenzielle Zahler DACH-weit. Kein breites B2B-Budget — Nische, kein Venture-TAM.
- **Saturation / competition:** **Verifiziert stark besetzt und gratis.** Cafés To Work From: gratis, 200+ Städte / 50+ Länder, In-App Cowork 4,99 $/Mo [App Store CTWF]; Twork: gratis [Google Play Twork]; Remoto: gratis [App Store Remoto]; Cafe-Nomad: gratis, 30.330+ Cafés / 126 Städte [cafe-nomad.com]; Freework, Café Cartographer (free core), CofficeCafes, LaptopFriendlyCafe.com — alle gratis. Kein direkter 4,99-€-Komkurrent mit identischem „3-Vorschläge + Live-Auslastung + Bib"-Bundle, aber der Job „laptop-freundliches Café finden" ist gratis gelöst.
- **Category maturity & growth:** **Growth/Plateau.** Nachfrage nach „laptop-friendly" wächst mit Hybrid-Work, aber Kategorie ist kuratierte Verzeichnisse (2013 Workfrom, 2026 Relaunches) — kein neues emergentes Tech-Feld. Wachstumstreiber eher RTO-Debatten und Coworking-Preisdruck, nicht neues API.
- **CAC vs CLV sanity:** **Strukturell problematisch für B2C-Abo.** ASSUMPTION: CLV bei 4,99 €/Mo und 4–6 Monaten Retention ≈ 20–30 € (nach Store-Fee ~14–21 €). Gratis-Alternativen drücken Conversion; Paid-Social-CAC für B2C-Studierende liegt leicht 10–30 € → knapp bis underwater. Outreach-CAC irrelevant, da Kanal nicht passt — aber auch SEO/App-Store-CAC ist nicht „billig validierbar" via 30 Mails.
- **Difficulty score:** 7/10 — Bau leicht, **Distribution + Monetarisierung** schwer (gegen gratis, saisonal, datenpflegeintensiv).
- **Key risks:**
  1. **Kernsignal nicht in offizieller API.** Google Places API (New) liefert per ToS **keine** Popular Times/Live-Auslastung — Feature-Request offen seit 2016 [StackOverflow/Issue 35827350], Workaround nur Scraping via Outscraper ($3/1k bis 100k, $1/1k danach) mit ToS-/Stabilitätsrisiko [outscraper.com].
  2. **Gratis-Anker frisst Zahlungsbereitschaft (K3).** CTWF/Twork/Cafe-Nomad lösen denselben Job gratis; zusätzliche Filter (Steckdose/WLAN) und 3er-Kuratierung rechtfertigen für Studierende schwer 4,99 €/Mo — selbe Preislage wie CTWF Cowork ($4.99) ohne dessen Community-Mehrwert.
  3. **Kein Hermes-Channel.** B2C → Outreach nicht anwendbar; B2B-Pivot an Unis/Cafés scheitert an Budget (Cafés zahlen kaum für Listung, Studentenwerke kaufen langsam).

## Cited market signals (researched 2026-09-07)

- Gratis-Wettbewerb verifiziert: **Cafés To Work From — 200+ Städte, 50+ Länder, Cowork optional $4.99/Monat, Café-Suche gratis** [App Store CTWF](https://apps.apple.com/us/app/caf%C3%A9s-to-work-from/id6745089649) und [cafestoworkfrom.com](https://cafestoworkfrom.com/); **Twork — laptop-friendly Cafés weltweit, gratis** [Google Play Twork](https://play.google.com/store/apps/details?id=com.martinappelmann.coworkingmap); **Remoto — gratis** [App Store Remoto](https://apps.apple.com/my/app/remoto-laptop-friendly-caf%C3%A9s/id6755244215); **Cafe-Nomad — 30,330+ Cafés, 126 Städte, community-voted Wi-Fi/Outlets/Noise** [cafe-nomad.com](https://www.cafe-nomad.com/en).
- Google Places API Preise verifiziert (Stand 28.08.2026): **Text Search Pro $32/1k (5k free), Nearby Search Enterprise $35/1k (1k free), Place Details Enterprise $20/1k (1k free)** — $200-Guthaben seit 01.03.2025 ersetzt durch Per-SKU-Caps [bizcollect.dev](https://bizcollect.dev/blog/google-places-api-pricing) und [Google Pricing](https://developers.google.com/maps/billing-and-pricing/pricing); Worked cost: 10k Calls ≈ $160 net [goodenoughmaps.com](https://goodenoughmaps.com/blog/google-places-api-pricing).
- **Popular Times nicht in offizieller Places API** — offener Feature-Request [Issue 35827350](https://issuetracker.google.com/issues/35827350) via [StackOverflow](https://stackoverflow.com/questions/60652129/can-i-use-the-google-places-api-to-see-a-venues-busy-hours); nur Outscraper liefert popular_times (nur Einzelabfrage) für $3/1k bis 100k, danach $1/1k [outscraper.com](https://outscraper.com/google-maps-places-api-copy/) und [outscraper popular_times](https://outscraper.com/places-api-popular-times/) / [Glossar](https://outscraper.com/glossary/popular-times/).
- DACH-Coverage-Lücke & Pain belegt: Leipzig nur Einzel-Einträge wie KELIA Leipzig 4.8/160 Reviews, Mo–So 11:30–19:30, Sa geschlossen [laptopfriendlycafe.com](https://laptopfriendlycafe.com/cafes/leipzig/kelia-leipzig); Berlin-Guides zeigen: „Most cafes here don’t have free WiFi and definitely don’t want you working on your laptop for hours" [honeygouda.travel.blog](https://honeygouda.travel.blog/2026/05/29/my-favorite-laptop-friendly-cafes-for-working-in-berlin/) — Nachfrage ja, aber DACH-Abdeckung der globalen Apps ist dünn und englisch.
- Coworking-Kosten als Preisanker: Berlin Hot Desk €150–250/Monat, Day Pass 15–25 € [getwherenext.com](https://getwherenext.com/blog/berlin-digital-nomad-guide-2026) — erklärt „Café als Gratis-Coworking"-Motiv, aber auch warum 4,99 € gegen gratis schwer wirkt.

## Boring & Trends check

- **Nicht ausgeführt.** outreach_score 2/10 < 4 → Auto-Abort nach Workflow 1-devalidation.md §3; boring-and-trends-check entfällt vor Synthese. (Wird nach Synthese erneut bewertet; bei GO dann nachgeholt.)

## Riskiest assumption test (RAT)

- **What to test next (trotz NO-GO für Outreach):** Kein Hermes-Stage-3-Send. Billigster echter Test: Fake-Door-Landing „3 ruhige Orte jetzt in Leipzig — Pro 4,99 €" + 10 Intercept-Interviews vor Bib/Café (Prüfungsphase) messen: Klickrate auf „Pro freischalten" und Antwort auf „Würdest du 5 € zahlen vs. gratis Maps/CTWF?". Kosten 0 €, 2 Tage. Kill-Signal im Test: <2 % Klickrate oder „Gratis reicht".
- **Validation gate:** Entfällt — Idee ist kein Cold-Outreach-Case (Validierung wäre App-Store/SEO-A/B, nicht 30 Mails).

## Notes / assumptions

- ASSUMPTION: Popular-Times-Verfügbarkeit pro Café (Datenlücken bei kleinen Läden) nicht verifiziert — nur via Outscraper-Scraping, nicht stabile API.
- ASSUMPTION: 3–5 % Conversion, 4–6 Monate Retention — keine DACH-Benchmark für Café-Finder-Abos gefunden; alle Wettbewerber setzen auf gratis + Community.
- ASSUMPTION: Uni-Prüfungskalender als Gewichtungssignal — manuell gepflegt, kein zentrales API.
- Nach K1: Keine „es gibt kein Tool"-Prämisse erfunden — Wertversprechen ist Zeitersparnis + Kuratierung, nicht Lückenbehauptung.
- Nach K2 gesucht: Wedge-Kandidaten geprüft — Live-Auslastung, Bib-Fallback, 3er-Kuratierung, DACH-Deutsch/Prüfungsphase, Steckdosen-Filter. Live-Signal ist technisch riskant, andere Wedges plausibel aber schmal.

## Produktkern für den MVP (Pflicht, da product_score 4/10 ≥4)

Für **Lena in Leipzig (Prüfungsphase)**: Eine Web-App, die für **Leipzig** aus 20 manuell kuratierten Cafés + 3 Bibs per Standort/Distanz + Öffnungszeit-Check + eigener Ampel (leer/mittel/voll = historische Popular-Times manuell gepflegt, nicht Live) **genau 3 Vorschläge** rankt („Stammcafé heute Ruhetag → Alternative Y"). **Kleinster lauffähiger Beweis:** Next.js + Places API (nur Nearby + Details ohne Reviews, Pro-Tier $32/1k, 5k free) + JSON-DB der 20 Cafés, kein Login, kein Crowd-Input, nur Leipzig. Startbefehl lokal, Stripe-Payment-Link für Pro. Das umgeht das Popular-Times-ToS-Risiko und testet, ob 3 kuratierte Vorschläge allein schon zahlungsrelevant sind.
