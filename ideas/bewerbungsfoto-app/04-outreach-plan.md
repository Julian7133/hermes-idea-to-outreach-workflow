---
slug: bewerbungsfoto-app
stage: 2
reads: 03-icp-and-positioning.md
---

# 04 — Outreach Plan (Validation Send Prep)

> **Gate-Status: OFFEN.** Julian ist im Urlaub — es wurde keine `GREENLIGHT
> NEXT STAGE` angefragt und keine erteilt. Dieser Ordner ist reine
> Stage-2-Vorbereitung. Kein Versand, kein n8n-Trigger, kein Mailgun-Trigger
> wurde ausgelöst. Vor Stage 3 (`workflows/3-validation-send.md`) müssen
> PASS/PASS WITH CHANGES + `GREENLIGHT NEXT STAGE` + der Legal-Check
> (UWG §7(2) / GDPR, `IMPLEMENTATION-PLAN.md` §7) explizit bestätigt werden.

## Avatar
- **Name:** Julia Brenner, Gründerin & Geschäftsführerin
- **Role / title:** Inhaberin einer 6-köpfigen Praxismarketing-Agentur
  (Website, Corporate Design, Content, teils Recruiting-Content für
  Arzt-/Zahnarztpraxen)
- **Company context:** Betreut aktuell ca. 15–25 Praxis-Mandanten parallel
  (ASSUMPTION: typische Mandantenzahl für eine 6-Personen-Agentur dieser
  Nische), Umsatz überwiegend aus wiederkehrenden Website-/Content-Retainern,
  kein eigenes Fotoprodukt im Portfolio.
- **What keeps them awake at night:** Mandanten fragen zunehmend nach
  "frischen, einheitlichen Teamfotos fürs Recruiting" (MFA-Fachkräftemangel,
  siehe `01` Boring-&-Trends-Check), aber Julia hat keine saubere,
  margenstarke Antwort — entweder verweist sie kostenlos an einen teuren
  Praxisfotografen (€895–2.995, `01`) und verdient nichts daran, oder sie sagt
  "kann ich nicht anbieten" und riskiert, dass der Mandant woanders hinschaut.
- **What they crave:** Ein zusätzliches Zeile im Angebotskatalog, das sie ohne
  eigenen Aufwand (kein Fotostudio, keine Terminkoordination) an mehrere
  Mandanten gleichzeitig verkaufen kann — mit einer Marge, die sich lohnt.
- **Where they get information:** Eigene Branchenrecherche über
  Wettbewerber-Websites, vereinzelt LinkedIn-Unternehmensseiten anderer
  Agenturen (Designery Health, Informationsstelle Gesundheit — beide live
  verifiziert), keine dominante Fach-Community verifizierbar (siehe `03`).
- **Why this avatar matters:** Julia ist der Kaufentscheider im
  Kanalwechsel-Modell aus `01b` — nicht die einzelne Praxis. Sie trifft die
  Reseller-Entscheidung für mehrere Mandanten auf einmal, was das
  Frequenz-/CAC-Problem aus `01` strukturell löst.

## 1-Page Marketing Plan (1PMP) — 9 Squares

### Before (Prospect)

#### 1. Target market
- **Niche:** Inch-wide, mile-deep — nicht "Marketing-Agenturen", sondern
  spezifisch **Praxismarketing-/Webdesign-Agenturen mit Fokus auf
  Arzt-/Zahnarztpraxen in DACH**, 1–15 Mitarbeitende, mehrere Praxis-Mandanten.
- **PVP score:** ASSUMPTION: Personal fulfillment mittel (Foto-Produkt ist
  Nebengeschäft, kein Kernprodukt von Hermes/Julian), Value to marketplace
  mittel-hoch (echter Mandanten-Bedarf laut `01`/`01b`), Profitability
  ASSUMPTION: hoch pro Auftrag (>90 % Marge laut `01` CAC/CLV-Sanity,
  Bildkosten unter €0,25/Bild) — aber niedrige Gesamtfrequenz.
- **Why this segment now:** MFA-Fachkräftemangel treibt Praxen aktiv zu
  Employer-Branding-Content (`01`), und Bildmodelle (Gemini 3 / Nano Banana
  Pro) haben laut `01` gerade erst die Identitätstreue erreicht, die
  Team-Konsistenz technisch praktikabel macht — beide Trends sind laut `01`
  aktuell (2026), nicht historisch.

#### 2. Message
- **USP:** Einziges verifiziertes Angebot, das Praxismarketing-Agenturen ein
  reseller-fähiges, praxis-team-konsistentes, DSGVO-transparentes
  KI-Fotoprodukt gibt (siehe Wedge in `03`).
- **Elevator pitch:** Ihre Praxis-Mandanten brauchen aktuelle, einheitliche
  Team-Fotos fürs Recruiting — Sie können das heute nicht margenstark
  anbieten. Wir liefern konsistente KI-Fotosets (mit manueller
  QA-Kuration, DSGVO-transparent) in Tagen statt Wochen, die Sie unter Ihrer
  Marke an Ihre Mandanten weiterverkaufen.
- **Core offer:** Ein Test-Fotoset für einen Ihrer Praxis-Mandanten zum
  Reseller-Konditionen-Test — kein Abo, keine Mindestabnahme in der
  Validierungsphase.
- **Headline / hook:** "Liege ich daneben, oder fehlt Ihren Praxis-Mandanten
  ein margenstarkes Foto-Angebot?"
- **Enemy in common:** Der teure, langsame Praxisfotograf-Vor-Ort-Termin, der
  weder Agentur-Marge noch Recruiting-Tempo hergibt.

#### 3. Media
- **Primary channel:** E-Mail-Kaltakquise an öffentlich publizierte
  Agentur-Kontaktadressen (Impressum/Kontaktformular) — deckt sich mit dem
  gewählten GTM-Mode `founder-led cold outbound` aus `03`.
- **Other channels:** ASSUMPTION für spätere Phasen (nicht Teil dieser
  Validation Send): LinkedIn-Direktnachricht an dieselben Firmenprofile,
  Branchenmessen-Präsenz (IDS/MEDICA-Umfeld), Partnerschafts-Pitch an
  Praxisfotografen selbst (Light Hunters, Praxisdesign) als
  Kapazitätserweiterung statt Konkurrenz.
- **ROI tracking:** Antwortquote (Reply) und qualifizierte 15-Minuten-Gespräche
  aus dem Drip — Stage-3-Erfolgskriterium laut `workflows/3-validation-send.md`-
  Analogon: ≥1 Reply ODER ≥3 menschliche Klicks.

### During (Lead)

#### 4. Lead capture
- **Ethical bribe:** Kostenloses Test-Fotoset (1 Person, wasserzeichenfrei)
  für einen von der Agentur benannten Praxis-Mandanten, als Beweisstück fürs
  Reseller-Gespräch.
- **Capture mechanism:** Antwort auf die E-Mail (Reply-Stop-Drip) oder
  15-Minuten-Gespräch nach CTA.
- **CRM / follow-up:** ASSUMPTION: manuelles Nachverfolgen der Replies durch
  Julian (kein CRM-Tool in v2 der Pipeline vorgesehen) — passt zur
  Solo-Struktur laut `00`.

#### 5. Lead nurturing
- **Nurture rhythm:** 3 Touches, 1x/Woche (siehe Drip unten) — keine
  zusätzliche Nurture-Sequenz in der Validierungsphase.
- **Value-to-offer ratio:** ASSUMPTION: 2:1 (Test-Fotoset + DSGVO-Erklärung
  als Wert, ein CTA als Ask).
- **Key nurture themes:** (1) Reseller-Marge ohne eigenen Aufwand, (2)
  DSGVO-/QA-Vertrauensnachweis, (3) Tempo-Vorteil ggü. Praxisfotograf.

#### 6. Sales conversion
- **Trust reversal / guarantee:** Kostenloses Test-Fotoset vor jeder Zahlung —
  Risiko liegt beim Anbieter, nicht bei der Agentur.
- **Pricing strategy:** ASSUMPTION: Einmalpreis pro Fotoset (analog `00`
  Monetarisierungs-Annahme €9–19/Person Endkunde), Reseller-Rabattstufe
  ASSUMMPTION: 20–30 % ab 2. Mandant — noch nicht mit echtem Kunden
  verifiziert, reine Validierungs-Hypothese.
- **Friction removal:** Kein Vertrag, keine Mindestabnahme für den ersten
  Test — senkt die Einstiegshürde für die Validierungsphase bewusst.

### After (Customer)

#### 7. World-class experience
- **Wow / systemization:** Manuelle QA-Kuration vor Auslieferung (laut `01b`)
  als sichtbares Qualitätsversprechen — jedes Set wird vor Übergabe an die
  Agentur gegengeprüft, nicht blind automatisiert ausgeliefert.
- **Theater:** Vorher/Nachher-Vergleich (Handyfoto → fertiges Set) als
  Beweisstück, das die Agentur selbst im Verkaufsgespräch mit ihrem
  Praxis-Mandanten wiederverwenden kann.

#### 8. Lifetime value
- **Ascension / upsell:** ASSUMPTION: Folgeaufträge bei Personalwechsel/
  Website-Relaunch der jeweiligen Praxis-Mandanten, vermittelt über dieselbe
  Agentur — noch unbewiesen, Frequenz laut `01` niedrig (1–2 Jahre).
- **Frequency / reactivation:** ASSUMPTION: Reaktivierung über die Agentur
  bei jedem neuen Praxis-Mandanten, den sie gewinnt — noch nicht verifiziert.
- **Raising prices:** Nicht Teil der Validierungsphase — erst nach
  bewiesenem Reseller-Interesse relevant.

#### 9. Referrals
- **Referral ask:** "Kennen Sie eine andere Praxismarketing-Agentur, für die
  das auch interessant wäre?" — erst nach einem erfolgreichen
  Test-Fotoset-Durchlauf zu stellen, nicht im Validation-Send-Drip selbst.
- **JV / partners:** Spezialisierte Praxisfotografen (Light Hunters,
  Praxisdesign) als mögliche Kapazitätspartner für Fälle, in denen die
  Agentur ein Vor-Ort-Shooting statt KI wünscht — ASSUMPTION, nicht Teil
  dieser Kampagne.

## Drip angles (3-step, Reply-Stop, weekly)
| Step | Week | Angle | Goal |
|---|---|---|---|
| 0 | 0 | **Liege ich daneben?** — Pain (Praxis-Mandanten fragen nach Team-Fotos fürs Recruiting, Agentur hat kein margenstarkes Angebot) + Lösungsskizze (KI-Fotoset, QA-kuratiert, DSGVO-transparent, reseller-fähig) + ehrlicher Validierungs-Disclaimer + Ask um Einschätzung | Thread öffnen, eine Zeile Reply oder 15-Min-Gespräch |
| 1 | 1 | Reframe über die Marge: was ein Reseller-Testauftrag für einen Mandanten heute kostet ggü. Praxisfotograf-Vermittlung ohne eigene Marge; kurzer DSGVO-Proof-Punkt | Dringlichkeit über konkreten Marge-/Zeitvorteil erzeugen, kurze Antwort oder Call |
| 2 | 2 | Reply-Stop — höflicher Ausstieg ("kein Interesse? Eine Zeile reicht, ich melde mich nicht mehr"), Tür bleibt offen für später | Sauberer Opt-out ohne Drängen |

#### Touch 0 (Angle-Struktur, für n8n LLM-Seed)
```
Betreff: Liege ich daneben?

Opening: Ihre Praxis-Mandanten fragen aktuell vermehrt nach frischen,
einheitlichen Team-Fotos fürs Recruiting (MFA-Fachkräftemangel) — haben Sie
dafür heute ein margenstarkes Angebot, oder verweisen Sie an den
Praxisfotografen, ohne selbst daran zu verdienen?

Lösungsskizze: Wir liefern konsistente KI-Fotosets für Praxisteams — manuell
QA-kuratiert vor Auslieferung, DSGVO-transparent (EU-Hosting oder
On-Device-Option), in Tagen statt Wochen-Terminplanung — zum Weiterverkauf
unter Ihrer Marke.

Validierungsdisclaimer (Pflicht): Ich verkaufe nichts — ich arbeite an einem
neuen Produkt für Agenturen wie Ihre und wollte wissen, ob das Sinn macht
oder ich hier falsch liege.

CTA: Eine Zeile genügt — oder 15 Minuten diese oder nächste Woche?

Signatur: Julian, Gründer/Produktentwicklung, KI-Fotoset für Praxis-Teams.
```

## Offer / CTA / Voice config block  ← copied verbatim into n8n 4b-sender config node
```json
{
  "campaign": "bewerbungsfoto-app",
  "offer": "Kostenloses Test-Fotoset (1 Person, wasserzeichenfrei) fuer einen von der Agentur benannten Praxis-Mandanten, als Beweisstueck fuer das Reseller-Gespraech",
  "cta": "Eine Zeile genuegt - oder 15 Minuten diese oder naechste Woche?",
  "voice": "Deutsch, professionell-direkt, peer-to-peer B2B, Betreff Liege ich daneben; MUSS auf Touch 0 den Validierungsdisclaimer enthalten: verkauft nichts, arbeitet an neuem Produkt, will wissen ob es Sinn macht",
  "constraints": [
    "no invented facts",
    "<=120 words per email",
    "one CTA only",
    "touch 0 must include validation disclaimer: working on a new product/service, want to know if wrong",
    "sounds like sales outreach but explicitly not selling yet"
  ],
  "sender_name": "Julian Berlow",
  "sender_signature": "Julian Berlow, Gruender/Produktentwicklung KI-Fotoset fuer Praxis-Teams, julian.berlow@googlemail.com, Abmeldung jederzeit per Antwort moeglich"
}
```

## Lead sourcing (lead-list-builder)
- **Search strategy:** Live-Websuche (2026-08-19) nach DACH-Praxismarketing-/
  Webdesign-Agenturen mit Fokus auf Arzt-/Zahnarztpraxen sowie explizit nach
  Employer-Branding-/Recruiting-Agenturen für medizinisches Fachpersonal
  (Anschluss an den in `01` verifizierten MFA-Fachkräftemangel-Trend).
  Für jeden gefundenen Agentur-Kandidaten wurde die Homepage bzw. das
  gesetzlich vorgeschriebene Impressum live abgerufen, um die dort öffentlich
  publizierte Kontakt-E-Mail (kein Scraping, kein Drittanbieter-Datenkauf) und
  den Firmensitz zu bestätigen. Kandidaten ohne live verifizierbare
  öffentliche E-Mail (z. B. 360grad-Praxismarketing, BookedoutDentist,
  mmedien GmbH, JaJo Marketing, Social-Medical — nur Kontaktformular ohne
  sichtbare Adresse in den abgerufenen Seiten) wurden **nicht** in die CSV
  aufgenommen, da keine verifizierte E-Mail vorlag — kein Ersatz durch
  Vermutung. IndieHackers/Jobbörsen als Quelle entfallen für dieses
  B2B-Agentur-Segment (dort finden sich keine Praxismarketing-Agenturen als
  Zielgruppe); LinkedIn-Firmenprofile wurden als Kontext-Quelle genutzt, aber
  nicht für den E-Mail-Erstkontakt (Website-Impressum ist die
  belastbarere, öffentlich verifizierte Quelle).
- **CSV:** siehe `leads.csv` (Schema entspricht `n8n/sql/outbound.sql`
  `leads`-Tabelle). **21 Zeilen** — Firmen-/Rollenprofile, keine
  Privatpersonen-Daten (Spalte `first_name` bewusst leer gelassen, `title`
  trägt eine generische Rollenbezeichnung statt eines Personennamens).
- **Legal basis note (per contact class):** Jede Zeile ist ein
  **hand-verifiziertes**, kleines B2B-Kontakt-Set (21 von ursprünglich >25
  recherchierten Kandidaten, Rest mangels verifizierbarer öffentlicher
  E-Mail verworfen) — kein Massen-Scrape. Jeder Kontakt hat **bestehenden
  fachlichen Kontext**: die Agentur bedient nachweislich Arzt-/
  Zahnarztpraxen als Mandanten (öffentlich auf der jeweiligen Website
  beworben), das Angebot ist damit **direkt berufsbezogen** (Cross-/
  Upsell-Angebot für ihr Bestandsgeschäft). Die genutzte E-Mail-Adresse ist
  in jedem Fall die **öffentlich publizierte Firmenadresse** aus dem
  gesetzlichen Impressum bzw. der Kontaktseite, nicht die private Adresse
  einer Einzelperson. Ein **Opt-out** ist in jedem Touch (insbesondere
  Touch 2, Reply-Stop) explizit angeboten. Erfüllt die UWG §7(2)-Kriterien
  aus `IMPLEMENTATION-PLAN.md` §7: klein, hand-kuratiert, sachlicher Bezug,
  Abmeldemöglichkeit.
