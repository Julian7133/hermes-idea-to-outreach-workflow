# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| Slot bereits von HandwerksHeld (€89) + Angebotsmeister (€49) + handi (€29) + Bot-Agent/assistent24 besetzt — kein Preis- oder Feature-Vorsprung | **Weich** | Wettbewerb ist kein Kill (K2). Belässt breites "WA-Assistent für Handwerk" als tot, aber enger Zuschnitt (Eingangs-Layer + Draft-first für 1–5-Mann) bleibt benennbar — nicht gerettet, aber überarbeitbar. |
| Gratis-Alternative WhatsApp Business App €0 + Vorlagen reicht für 1-Mann-Betrieb | **Weich** | K3: Gratis ist Preisanker, kein Todesurteil. App hat keine Klassifizierung/Entwurf/Tonalität/Team/AVV — aber HandwerksHeld/Angebotsmeister monetarisieren genau diese Lücke bereits. Verengt den zahlenden Rand, tötet ihn nicht. |
| Nummernbindung + DSGVO/AVV/Opt-in + Meta-Verifizierung = 96%-Hürde, Handwerker hängt private Nummer nicht an externes Tool | **Weich** | Härtester weicher Einwand. Coexistence App+API (gleiche Nummer, seit 2025) + EU/AVV senken Hürde, aber Misstrauen bleibt. Überarbeitung: Eingangs-Layer vor bestehender Software, kein Nummernwechsel, 14-Tage-Pilot mit Review-Gate ("Du bleibst Absender"). |
| Plattform-Risiko Meta (quartalsweise Pricing, 01.10.2026 Service ab 1.001 €0,0456) | **Weich** | Betrifft alle gleich, kein Alleinstellungs-Killer. Für reinen Reply-Use-Case bis Sep 2026 €0, danach kalkulierbar. |
| Cold Outreach an Handwerker misstrauisch/teuer (72% zu ausgelastet, Innung/Empfehlung statt Mail) | **Weich** | Kanalwechsel statt Kill (K4): Outreach_score leidet, product_score nicht. Wechsel auf Telefon + Innung/Verband/Empfehlung. |
| Rechtlich/technisch unmöglich oder kein denkbarer Käufer | **Hart — keiner** | Kein harter Einwand: WA Business API + LLM + EU-Hosting sind Commodity, 568k Betriebe + 62% Messenger-Nutzung belegen Käufer-Raum. |

## Harte Einwände

Keine. Fortführung zulässig.

## Überarbeiteter Plan

**Was sich gegenüber 00c ändert (eine Runde, begründet):**

1. **Zuspitzen — Nische schärfen:** Von "Handwerk 5–20 MA" auf **1–5-Mann-Betriebe ohne Sekretariat (Solo-Meister + Teilzeit-Bürokraft)** — das Segment, das plancraft/ToolTime als "zu groß" meiden und für das "noch ein Vollsystem" overkill ist. Dort ist der Eingangs-Layer kein Nice-to-have, sondern die einzige Digitalisierung. SHK/Elektro bleibt Fokus, aber Zuspitzung auf Betriebsgröße statt Gewerk.

2. **Schnittwechsel — Eingangs-Layer statt Inbox-Ersatz:** Nicht "eigene Inbox, die ToolTime ersetzt", sondern **Buzzard-These: Layer vor der bestehenden Software**. WA-Anfrage → Struktur + Entwurf → Übergabe als sauberer Vorgang in die vorhandene ToolTime/plancraft/openHandwerk-Welt (oder simpel per E-Mail/WhatsApp zurück). Der Betrieb behält sein System, wir machen nur den Eingang sauber — identisch zur Buzzard-Positionierung (€2.500 + €250–700/Mo), aber **lean als €39/Mo Draft-Helfer** statt Projektgeschäft.

3. **Rollen-Nuancierung — Draft-first als Hauptversprechen:** HandwerksHeld/Angebotsmeister verkaufen "antwortet in 30 Sek" (Bot-Narrativ). Überarbeitung verkauft das Gegenteil als Feature: **"Nie Auto-Send — du bleibst Absender, jede Antwort ist ein Entwurf mit Freigabe, inkl. EU AI Act-Disclosure."** Für Misstrauens-Segment ist Kontrollbehalt der Kaufgrund, nicht Geschwindigkeit. Whisper-Sprachnachricht + Tonalität bleiben, aber Kalender/Angebots-PDF bewusst nicht in v1.

4. **Kanalwechsel — Outreach → Telefon/Innung:** Cold Mail bleibt, aber nicht als Primärkanal. Erster Kontakt via **Anruf (10-Min-Interview) + Innung/Facebook-Gruppe/Empfehlung** — passend zur Handwerker-Kultur, wo Telefon schlägt Mail. Handverlesene 25er-Liste mit sichtbarer WA-Nummer bleibt, aber Ansprache telefonisch.

5. **Preis unverändert, aber Begründung geschärft:** €39/Mo + €99 Setup trägt sich über **Eingangs-Layer vor verschwendetem Software-Wechsel** ("behalte ToolTime, spare Eingangszeit") statt über "günstiger als HandwerksHeld". Bei <50 Kunden frisst BSP-Gebühr Marge — deshalb Pilot 14 Tage gratis, danach monatlich kündbar.

**Was bewusst nicht verwässert wurde:** Kein Wechsel zu Dienstleistung (B), keine SHK-Förder-Nische (C) als Hauptplan — beide bleiben als Option, falls 1–5-Mann-Layer nicht trägt.

## Neue Bewertung

- **outreach_score: 4/10** (vorher 4/10) — Zuspitzung und Kanalwechsel heben Erreichbarkeit leicht, aber Besetzung + Misstrauen halten Score auf GO-Schwelle. Bleibt grenzwertig; ohne Synthese wäre das ein 3er-Kill nach altem Maßstab gewesen (K5).
- **product_score: 6/10** (vorher 6/10) — Schmerz + Frequency + Solo-Baubarkeit unverändert stark; Wedge nach Überarbeitung klarer benennbar (Eingangs-Layer + Draft-first für 1–5-Mann), aber dünn — 6 bleibt obere Kante von "besetzter Markt, aber plausibler Wedge" (K5: 4–5 besetzt mit Wedge, 6–7 klarer Wedge). Kein 7, weil unfairer Vorteil (K6) hier Technik, nicht Handwerker-Domain, und kein struktureller Zwang.
- **buildable: yes** (product_score ≥6)

## Ehrliches Fazit

Die Überarbeitung löst das Kernproblem **nicht**: Der exakte Slot ist besetzt, und ein €39-Draft-Layer konkurriert gegen €49-inklusive-Sekretärin im Angebotsmeister-Bundle und €89-Vorarbeiter mit gleichem Review-Gate — der Preis porte kein Moat. Was sie löst: Sie gibt dem Produkt einen **ehrlichen, engen Platz** (Eingangs-Layer für Kleinstbetriebe, die keinen Systemwechsel wollen und keinen Bot-Auto-Send wollen), der solo baubar und interview-testbar ist. Ob Handwerker dafür €39/Monat zahlen statt die Gratis-App + Vorlagen zu behalten, entscheidet das 10-Min-Telefonat — nicht die Desk-Recherche. Deshalb GO auf Produkt, GO grenzwertig auf Outreach — und RAT als Pflicht vor Code.
