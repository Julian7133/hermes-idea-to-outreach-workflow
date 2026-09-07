# 00c — Realist

## Gewählte Ausprägung
A — Werkzeug — Begründung: Genau der Workflow, den Julian bereits als Skill-Stack produktisiert hat (clearframe-devalidation: Extraktion → Live-Suche pro Fakt → Citation → Ampel). Solo am schnellsten zu einem zahlenden Kunden, weil kein manueller Engpass pro Report, und der Käufer (Gründer mit Report in der Hand) versteht das Angebot ohne Erklärung: "Lade deinen Report hoch, wir prüfen jede Zahl." Nischendruck aus C (Förder-Coupon) und Dienstleistungs-Tiefe aus B (Loom-Aufpreis) bleiben als Upsell/Testvariante erhalten.
Verworfen, aber aufgehoben: B — Dienstleistung (24h + Loom, €129) als Premium-Upsell für Agentur-Käufer vor großem Invest; C — DACH-Förder-Fact-Check als enge Nische, falls generischer Check zu breit im Wettbewerb wirkt.

## Der erste zahlende Kunde
Gründerin (28–38, Solo oder 2-Personen-Team, DACH, erste/zweite SaaS-Idee), hat in den letzten 14 Tagen einen KI-Validierungsreport gekauft (IdeaProof, WorthBuild, IDEAA, MarktFit.ch) für €4–€99 und steht vor der Entscheidung "baue ich das 2–3 Monate oder verwerfe ich?". Auslöser: sie liest im Report konkrete Zahlen (z. B. "Wettbewerber X: $29/Mo, 10.000 Nutzer, 3 direkte Konkurrenten") und spürt Unsicherheit — sie kennt die Behauptungen nicht gut genug, um sie zu glauben, aber gut genug, um zu ahnen, dass sie erfunden sein könnten. Moment: sie googelt den ersten Konkurrenten, findet einen anderen Preis, und denkt "wenn das schon falsch ist, was ist mit dem Rest?" — genau dort greift der Upload-Button.
**Erreichbar über:** Community/SEO rund um Indie-Hacker-Orte (Indie Hackers, Product Hunt, r/SaaS, DACH-Gründer-Slack/Discords) sowie als Checkout-Upsell direkt nach dem Kauf eines günstigen KI-Reports (Affiliate/Partnerschaft mit einem der Billig-Tools) — Cold Outreach ist hier nicht der Primärkanal, aber für Agentur-Nebenpersona (kleine Agentur-Inhaber, 3–10 MA, die Reports für Kunden einkaufen) ist kalte 1:1-Mail an Agenturen mit "Idea Validation" als Leistungsbaustein denkbar.

## Der kleinste Beweis
**Eingabe:** Upload/Paste eines KI-generierten Validierungsreports (PDF oder Text, 5–15 Seiten) + optionale Zielbranche.
**Verarbeitung:** (1) Extraktion: LLM extrahiert 10–20 prüfbare Behauptungen (Preis, Nutzerzahl, Marktgröße, Quelle). (2) Verifikation: pro Behauptung Live-Suche (Tavily/Brave) + Fetch der Primärquelle, deterministische Klassifikation: belegt / nicht belegbar / widerlegt. (3) Korrektur: bei widerlegt/ unbelegt wird der korrekte Wert recherchiert und zitiert. (4) Report-Rendering: annotiertes PDF mit Ampel pro Fakt + Quellenlinks + 3-zeiliger Einordnung "Was das für deine Entscheidung bedeutet".
**Ausgabe:** Annotiertes PDF + CSV (Fakt | Behauptung | Ampel | korrekter Wert | Quelle | Link) + kurzer Einordnungsabsatz.
**Bewusst nicht drin:** Keine neue Validierung der Idee selbst (kein eigenes "GO/NO-GO"), keine Marktgrößen-Schätzung, kein Coaching, keine Rechts-/Förderberatung, kein Abo-Dashboard.

## Weg zum ersten Euro
**Preis:** €59 pro geprüftem Report (Standard, 10–20 Fakten) — Begründung aus dem Nutzen: der Kunde hat bereits €4–€99 für den Original-Report bezahlt und steht vor einer Entscheidung im Wert von 2–3 Monaten Lebenszeit plus ggf. €5k–€15k Build-Kosten; €59 ist <1 % dieser Entscheidungskosten und fühlt sich wie eine Versicherung an, nicht wie ein zweiter Report. Bundle: 5-Pack €229 für Agenturen.
1. Landingpage + Upload-Prototyp bauen (Extraktion + Verifikation für 5 Beispielfakten end-to-end, echte Live-Suche, Ampel-PDF als Fixture).
2. 5 echte KI-Reports (IdeaProof/Ideaa/WorthBuild, je €4–€20) kaufen, durch den Prototyp jagen, Ergebnisse als Demo/Beweis dokumentieren (vorher/nachher).
3. Ersten zahlenden Kunden über Community-Post ("Ich habe 5 KI-Reports fact-gecheckt — 40 % der Preise waren erfunden, hier sind die Belege") + direkten Outreach an 20 Agenturen, die "Idea Validation" als Service anbieten.
4. Zahlung (Stripe Link) + manuelle Nachprüfung der ersten 10 Checks, um Marge/Aufwand zu messen, dann Automatisierungsgrad erhöhen.
5. Bei Traktion: Affiliate-Upsell bei einem Billig-Tool verhandeln ("nach dem Report: willst du ihn prüfen lassen?").

## Aufwand und Abhängigkeiten
7–10 Tage für kleinsten Beweis solo (Extraktion prompt + Live-Suche-Adapter Tavily/Brave + Ampel-Klassifikation + PDF-Rendering; kein Auth, keine DB, Datei reicht). Fähigkeiten vorhanden (Agent-Orchestrierung, Prompt-Evals, PDF-Rendering). Abhängigkeiten: Live-Suche-API (Tavily/Brave, €0,01–€0,03/Suche, Kosten pro Report €0,30–€0,60); LLM für Extraktion (Anthropic/OpenAI/OMLX lokal); keine Plattform-, App-Store- oder Rechtsabhängigkeit. Risiko: Trefferquote der Verifikation bei Nischen-Fakten (z. B. private Nutzerzahlen) — dort ist "nicht belegbar" das ehrliche Ergebnis, kein Fehler.

## Riskanteste Annahme
**Annahme:** Gründer zahlen freiwillig €59 zusätzlich zu einem bereits gekauften €4–€20 Report für dessen Prüfung — "zweimal zahlen für denselben Job" könnte als irrational empfunden werden.
**Billiger Test:** 5 echte Reports kaufen, fact-checken, Ergebnisse als Thread/Post veröffentlichen + in Indie-Hacker-Communities fragen: "Würdest du €59 zahlen, um deinen €19-Report prüfen zu lassen, bevor du 3 Monate baust?" — Antwort + Klick auf Stripe-Link als Signal, vor dem Bauen des Upload-Portals.
