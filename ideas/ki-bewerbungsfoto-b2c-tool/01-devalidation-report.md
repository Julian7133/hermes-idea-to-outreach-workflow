# 01 — Devalidation Report

> Kritiker greift **`ideas/ki-bewerbungsfoto-b2c-tool/00c-realist.md`** an (Ausprägung A — Self-Service B2C über SEO/Content), nicht die rohe Idee aus `00`. Kalibrierung K1–K6 (`ORCHESTRATOR-PROMPT.md`) angewendet: zwei getrennte Scores, Wettbewerb ist kein automatischer Kill, Julians Unfair-Advantage-Fakten aus K6 gesetzt. Live-Web-Recherche 2026-09-07, 4 Suchen. **Finale Scores nach Synthese (`01b-synthese.md`): outreach 2/10, product 4/10 — NO-GO. `boring-and-trends-check` nicht ausgeführt (outreach < 4, Auto-Kill nach Synthese greift).**

## Verdict (final nach Synthese)
- **outreach_score:** 2/10
- **product_score:** 4/10
- **Go/No-Go (bezieht sich auf outreach_score):** NO-GO
- **buildable:** no (product_score < 6, Bau-Track ohnehin gesperrt)
- **One-line reason:** B2C-Self-Service ist per Definition kein Cold-Outreach-Case (Privatpersonen, Einmalkauf €15–30, keine B2B-Kaufsituation → outreach 2); die DACH-Kategorie ist dicht besetzt mit 7+ deutschsprachigen Anbietern ab €9,90–29,99 plus 3 Gratis-Tiers — nach K2-Wedge-Suche (Preis-, DACH/DSGVO-, Nischen-/Berufsratgeber-Suche) kein tragfähiger unbedienter Rand gefunden, nur ein hauchdünner Longtail-Wedge; daher product 4 (besetzter Markt, Ausgang offen, aber ohne klaren Vorteil).

## CLEARFRAME breakdown (Realisten-Plan, Ausprägung A — B2C Self-Service)

| Lens | Assessment |
|---|---|
| **C**ustomer | Bewerber:in / Young Professional (18–38 J.), DACH, braucht in dieser Woche ein Bewerbungsfoto — keine Firma, kein Impressum, B2C-Einmalkauf. |
| **L**onging/Job | In 5 Minuten ein Bewerbungsfoto, das wie ein €80–150-Studiofoto wirkt, ohne Termin und Anfahrt, sofort downloadbar für Lebenslauf/LinkedIn. |
| **E**xisting solution | 7+ DACH-KI-Anbieter mit dt. Oberfläche (siehe unten) ab €9,90–29,99 + 3 Gratis-Tiers (Vidnoz, Canva 1/Tag, Bewerbungsbild AI 1 gratis) **oder** klassisches Fotostudio (€50–150) **oder** Handy-Selfie/DIY. |
| **A**lternative cost | VERIFIED: Fotostudio €50–150 (Basic €50–100, Premium €150–300); KI-Alternative €9,90–29,99 pro Set — Ersparnis real, aber Preis schon stark komprimiert; Gratis-Optionen ankern die Zahlungsbereitschaft bei €0. |
| **R**eachability | **Per Definition nicht per Cold Outreach erreichbar** — Privatpersonen ohne Firmenadresse; Kanal laut Realist ist SEO/Content (Suchintention "Bewerbungsfoto KI") — erreichbar, aber nicht über diese Pipeline messbar. Outreach-Score daher strukturell niedrig (K4). |
| **F**requency | Sehr niedrig: neues Bewerbungsfoto alle 2–3 Jahre (Jobwechsel/LinkedIn-Refresh) — Einmalkauf, kein Abo, schwache Retention, wie vom Realisten selbst benannt. |
| **R**evenue | €15–29 Einmalticket pro Set (Realist: €19/€27); kein wiederkehrender Umsatz; Upsell €5/Extra-Varianten. CLV ≈ €19–29 (ASSUMPTION: kaum Repeat binnen 12 Monaten). |
| **A**dvantage | Nach K6: Agent-Orchestrierung senkt Build-Aufwand (Wrapper um Gemini/Nano Banana) — genereller, aber kein distributionsseitiger Vorteil in B2C-SEO; keine bestehende Audience für Bewerbungsfoto-Suchende, kein exklusiver Zugang. |
| **M**oat-later | Kein Moat: Prompt-Rezepte/Stiltemplates sind von jedem bestehenden Anbieter in Tagen kopierbar; keine Daten-Moat (kein Team-Konsistenz-Feature wie bei Praxis-B2B), kein Lock-in bei Einmalkauf. |
| **E**ffort | 4–7 Tage Solo (vom Realisten korrekt geschätzt); technisch leicht, aber SEO/Content-Aufbau bis zu tragfähigem organischem Traffic ist Monate, nicht Tage. |

## CLEARFRAME + Market Reality

- **TAM (sanity):** Groß in Köpfen, schmal in Euro: Jährlich ~800k–1 Mio. Bewerberwechsel in DACH, die ein neues Foto brauchen könnten (ASSUMPTION, nicht verifiziert) — aber Zahlungsbereitschaft ist durch Gratis-Tiers bei €0 geankert; selbst bei 50k zahlenden Käufern/Jahr à €20 = €1 Mio. Marktumsatz, davon entfallen heute bereits >168k Kunden auf 2 Platzhirsche allein (Dr. Headshot 109k + ki-bewerbungsfoto.app 58k, verifiziert) — Solo-Anteil realistisch klein.
- **Saturation / competition:** **VERIFIED — DACH-Kategorie dicht besetzt, Preise transparent, Gratis-Tiers vorhanden.** Deutschsprachige B2C-Anbieter mit Live-Preisen (2026-09-07 erhoben):
  - [ki-bewerbungsfoto.app](https://www.ki-bewerbungsfoto.app/pricing) — **$9,90 USD** (~€9), 40 Fotos, deutsche Oberfläche, 58.725+ Kunden, DSGVO-Hinweis, /types für Arzt/Anwalt/CEO/LinkedIn/Realtor
  - [Dr. Headshot](https://drheadshot.com/de/ai-bewerbungsfotos) — **€29,99 Basic** (40 Fotos) / €39,99 Professional (80–100) / €59,99 Executive (140–200), Made in EU/DSGVO, 109.732+ Kunden, 6.673 Bewertungen (4,8/5), Gratis-Generator vorhanden
  - [CV Pics](https://www.cvpics.de/ai/bewerbungsfotos/) — **ab €24** (80 Varianten), dt. Anbieter mit Studio-Netzwerk
  - [bewerbungsfoto-generator.de / bewerbungsbild24.de](https://bewerbungsfoto-generator.de/bewerbungsfoto-kosten) — **ab €29** (100+ Varianten, 30 Min)
  - [Bewerbungsbild AI](https://bewerbungsbild.ai/gratis-bewerbungsfoto-generator) — **1 Foto gratis** (ohne Anmeldung, 5-Min-Vorschau), Premium ab €29 (40–120 Varianten), iOS-App
  - [Vidnoz](https://de.vidnoz.com/ai-headshot-generator.html) — **gratis** (KI-Bewerbungsfoto kostenlos ohne Anmeldung, 40+ Stile)
  - [Canva AI Headshot](https://www.canva.com/de_de/funktionen/ai-bewerbungsfoto-generator/) — **gratis 1/Tag**, danach Token-Kauf — verifiziert im [LiveCareer-Test](https://www.livecareer.de/bewerbung/ki-bewerbungsfoto)
  - [HeadshotPro / Aragon](https://www.aragon.ai/blog/headshotpro-vs-aragon-which-ai-headshot-generator-has-better-results) internationaler Preisanker $29–59 — für DACH weniger relevant, aber Vergleichsanker
  Nach K2-Suche (Bewertungen, DACH-Sprache, DSGVO-Zusicherung, Berufs-Nische, Preis-/Gratis-Lücke): **keine Lücke gefunden.** DACH-Sprache: alle Top-Anbieter deutsch. DSGVO/EU-Hosting: Dr. Headshot wirbt explizit "EU-basiert & DSGVO-konform". Berufs-Nische: ki-bewerbungsfoto.app hat /types/doctor/lawyer/realtor/CEO, Bewerbungsbild AI hat Lehrer/Krankenpflege/Arzt/Erzieher/IT/Ingenieur. Gratis-Lücke: Vidnoz/Canva/Bewerbungsbild AI bedienen €0. K3 greift: Gratis senkt Zahlungsbereitschaft, tötet aber nicht — Dr. Headshot + ki-bewerbungsfoto beweisen >168k zahlende Kunden trotz Gratis-Tiers — aber Preisdruck bleibt (€9,90-Einstieg).
- **Category maturity & growth:** **Plateau** bei generischen KI-Bewerbungsfotos (mehrjährige Kategorie, etablierte Preispunkte €9,90–29,99, 58–109k Kunden je Anbieter) — Risiko liegt nicht bei Wettbewerbserziehung, sondern bei Awareness/SEO-Kosten: Die Kategorie ist bekannt, das "ist das erlaubt/glaubwürdig?"-Risiko ist aber weiter präsent (siehe LiveCareer: "KI noch nicht von allen Unternehmen akzeptiert"). Kein Emerging-Wachstumsschub, eher Verdrängung im Bestand.
- **CAC vs CLV sanity:** **Strukturell dünn.** CLV = €15–29 Einmalticket (kein Repeat <24 Monate). CAC über SEO: organisch erst nach Monaten, vorher SEA auf "Bewerbungsfoto KI" — CPC ASSUMPTION €0,80–2,50 (nicht verifiziert, aber kompetitive DACH-Keywords liegen in dem Korridor), bei 1 % Conversion = €80–250 CAC → **CAC > CLV**, unter Wasser. SEO trägt erst ab mehreren hundert organischen Klicks/Monat; bis dahin braucht es Budget, das ein Solo-Betreiber ohne Vorteil nicht hat. Passt zu K4-Gewichtung (Reachability/CAC/Frequency = am höchsten gewichtet): genau diese drei sind hier schwach.
- **Difficulty score:** 7/10 — Build leicht (4–7 Tage), GTM schwer (6–12 Monate SEO/Content gegen etablierte Domains mit 58–109k Kunden + kostenlosem Tool als Lead-Magnet); Support-Risiko bei Unzufriedenheit ("sieht nicht wie ich aus" → Refund/Review-Druck) zusätzlich.
- **Key risks:**
  1. **Saturation — kein Wedge nach K2-Suche:** 7+ DACH-Anbieter + 3 Gratis-Tiers decken bereits Preis (€9,90–29,99), Sprache (DE), DSGVO (EU), Nische (Berufs-Typen) ab — Recherche fand keinen unterversorgten Rand, nur Longtail-Reste (siehe Synthese-Versuch).
  2. **CAC > CLV bei Einmalkauf:** €15–29 CLV trägt keine SEA-Akquise und SEO braucht Monate gegen starke Domains; Wiederkaufquote zu niedrig für Retention-Hebel.
  3. **Qualitäts-/Vertrauensrisiko:** Gratis-Vorschauen der Wettbewerber (1 Foto gratis in 5 Min) setzen Erwartung; Unzufriedenheit ("zu KI-artig", unnatürliche Haut/Outfit-Fehler wie im LiveCareer-Vidnoz-Test: Hemd zu weit aufgeknöpft, unmenschlich makellos) führt zu Refunds/negativen Bewertungen bei Solo-Support.

## Cited market signals (researched 2026-09-07)
- DACH-Preise und Anbieter — live verifiziert am 2026-09-07:
  - [ki-bewerbungsfoto.app/pricing](https://www.ki-bewerbungsfoto.app/pricing) — $9.90 für 40 Fotos, 58.725+ Kunden, DSGVO-Hinweis, /types für 5 Berufsgruppen
  - [Dr. Headshot (DACH)](https://drheadshot.com/de/ai-bewerbungsfotos) — €29,99/€39,99/€59,99 (40/80–100/140–200 Fotos), 109.732+ Kunden, 6.673 Bewertungen (4,8/5), EU/DSGVO, Gratis-Generator
  - [CV Pics](https://www.cvpics.de/ai/bewerbungsfotos/) — ab €24 (80 Varianten)
  - [bewerbungsfoto-generator.de Kosten](https://bewerbungsfoto-generator.de/bewerbungsfoto-kosten) — ab €29 (100+ Varianten, 30 Min), Vergleichstabelle Fotostudio €50–300
  - [Bewerbungsbild AI gratis](https://bewerbungsbild.ai/gratis-bewerbungsfoto-generator) — 1 Vorschau gratis (3 Selfies, 5 Min), Premium ab €29, App-Store-Präsenz
  - [Vidnoz KI Bewerbungsfoto](https://de.vidnoz.com/ai-headshot-generator.html) — gratis, 40+ Stile, ohne Anmeldung
  - [Canva AI-Bewerbungsfoto](https://www.canva.com/de_de/funktionen/ai-bewerbungsfoto-generator/) — 1 gratis/Tag, Token-Modell (verifiziert über [LiveCareer-Test 2026](https://www.livecareer.de/bewerbung/ki-bewerbungsfoto))
  - [BetterPic Kostenvergleich](https://www.betterpic.io/de/blog/bewerbungsfoto-kosten) — Fotograf €50–150, Automat €10–20, KI ab €35 — Preisanker-Validierung
  - [Profile Bakery Kosten 2026](https://www.profilebakery.com/de/wissen/bewerbungsfotos/guenstig) — KI ab ca. €24, Studio €50–150 — zweiter Preisanker
- Wettbewerber-Sättigung: [omidsaffari — 6 beste KI-Bewerbungsfoto-Generatoren 2026](https://omidsaffari.com/de/blog/beste-ki-bewerbungsfoto-generatoren-2026) — listet 6 Anbieter allein für LinkedIn; [Headyshot/Blog Bewerbungsfoto-Trends 2026](https://www.headyshot.com/de/blog/bewerbungsfoto-trends) — KI-Porträts "längst Mainstream", HR bewertet nach Plausibilität, nicht Perfektion
- Nachfrage-Signale: [profilfoto-ki.de Bewerbungsfoto-Index 2026](https://www.profilfoto-ki.de/studie-bewerbungsfoto-index-2026/) — 194.610 Suchen/Monat allgemein "Bewerbungsfoto", davon 62.870 für Online-Tools/KI-Generatoren; [LiveCareer](https://www.livecareer.de/bewerbung/ki-bewerbungsfoto) — Praxis-Test zeigt Qualitätsprobleme (zu KI-artig, Haut zu makellos → Uncanny Valley)
- Vertrauens-Signal: [LiveCareer](https://www.livecareer.de/bewerbung/ki-bewerbungsfoto) — "KI noch nicht von allen Unternehmen akzeptiert — als faul/unehrlich abgestempelt" — Restrisiko für HR-Akzeptanz trotz 76,5 % Recruiter-Akzeptanz laut Ringover-Studie (zitiert ebd.)

## Boring & Trends check
- **Nicht ausgeführt.** outreach_score 2/10 < 4 → Auto-Kill nach Synthese greift, `boring-and-trends-check` wurde nicht ausgeführt (Workflow-Regel 1-devalidation.md Schritt 3, Token-Saving-Kill-Switch und Vorgabe "nur Stage-1" — auch bei product ≥4 wird die Marktinformation über Produktkern/Pivot-Signal erhalten, nicht über Trends-Check).

## Riskiest assumption test (RAT)
- **What to test next:** *Nicht via Cold Outreach in dieser Pipeline.* Wenn trotzdem: billiger Vortest vor jedem Build — Keyword-Recherche (Google Keyword Planner: exaktes Volumen + CPC für "Bewerbungsfoto KI", "KI Bewerbungsfoto erstellen", "Bewerbungsfoto KI kostenlos"), plus 5 qualitative Interviews: "Würdest du €19 für ein KI-Bewerbungsfoto zahlen, wenn es eine Gratis-Vorschau gibt?" — **before** building or outreach. Desk devalidation says: B2C-SEO-Wirtschaftlichkeit ist hier die eigentliche Hürde, nicht die Technik.
- **Kill signal:** N/A — bereits auf Desk-Ebene NO-GO (outreach 2, product 4). Kein Stage-3-Send in dieser Pipeline.

## Notes / assumptions
- ASSUMPTION: CLV €15–29 Einmalticket ohne nennenswerten Repeat <24 Monate; CPC €0,80–2,50 — nicht live verifiziert (Keyword-Planner nicht abgefragt), Größenordnung aus DACH-Konkurrenz abgeleitet.
- ASSUMPTION: TAM-Annahme 800k–1 Mio. potenzielle Foto-Bedürftige/Jahr — nicht verifiziert, nur Plausibilitätsanker.
- ASSUMPTION: SEO-Time-to-Traction 6–12 Monate gegen etablierte Domains — branchenüblich, nicht für dieses Keyword belegt.
- Wertversprechen in `00` ist bewusst nicht als "es gibt noch kein Tool für X" formuliert (K1) — die Recherche bestätigt: Tools existieren, Preise sind bekannt, Lücke wurde nicht behauptet.
