# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand | Klasse | Antwort |
|---|---|---|
| **Zahlungsbereitschaft 99–199 € unbewiesen** — Teams können denselben Prompt gratis durch PromptGrade/T-Minus jagen oder intern reviewen; 99 € muss als Pflichtschritt wahrgenommen werden. | **Weich** | Überarbeitbar via Zuspitzen auf "vor Rollout"-Moment + Fake-Checkout-Validierung vor Bau (10–15 Interviews, 2 Beispiel-Reports als Anker). Kein harter Kill — Käufer existiert, nur Preisakzeptanz unbewiesen. |
| **Glaubwürdigkeit: LLM-Judge allein ist kein Audit** — Score wirkt beliebig, ohne deterministische Checks/Traces kein Entscheidungsnutzen, Refund-Risiko. | **Weich** | Überarbeitbar via Schnittwechsel: 3–5 Regel-Checks + kalibrierter Judge + Beispiel-Reports als PLG-Beweis; echter Trace-Eval bewusst aus v1 ausgeschlossen, aber als Upsell-Pfad benannt. |
| **Frequency-Loch: Einmalzahlung ohne Abo braucht Dauerzufluss** — 30 Sends/Monat × 5% = 1–2 Audits, zu wenig ohne Content-Kanal. | **Weich** | Überarbeitbar via Kanalwechsel-Ergänzung: Cold Outreach als Anstoß, Content-Retargeting (berlow.de, Prompt-Sprawls-Artikel) als Zufluss-Ergänzung; Re-Audit bei Release-Zyklen als natürlicher Wiederkauf. Kein Beweis, dass kein Käufer existiert. |
| **Gratis-Druck durch OSS/Subscription-Incumbents** — Promptfoo/DeepEval gratis, Braintrust/PromptLayer/LangSmith als 49–500 €/Mo Abo decken Eval-Bedarf für Teams ab. | **Weich** | Überarbeitbar via Rollenwechsel-Argument: Incumbents verkaufen Abo/Seats/Traces für kontinuierliches Eval, nicht Einmal-Befund; OSS verkauft Frameworks, nicht Befunde — Positionierung "Artefakt statt Plattform" bleibt. K3-Regel: Gratis ist Preisanker, kein Todesurteil. |
| **TAM unbewiesen (einstellige Tausender ASSUMPTION)** — keine seriöse Marktgröße für 10+ Prompt-Teams in DACH. | **Unbelegt** | Zählt nicht als Kill. TAM ist als Sanity-Größe markiert (ASSUMPTION), nicht als Prämisse der Idee. Nachfragebeleg über 69/31-Survey + Prompt-Sprawls-Signale vorhanden; präzise Zahl erst via Interview-Signal belastbar. |
| **Kernprämisse "kein Wettbewerber" wäre Lückenbehauptung** | **Unbelegt** | Zählt nicht. 00 behauptet bewusst keine Lücke (K1) — Wertversprechen ist Käufer + Preis, nicht "es gibt nichts". Wedge-Suche negativ verifiziert (K2), aber als Ergebnis dokumentiert, nicht als Prämisse erfunden. |

## Harte Einwände

Keine. Kein rechtlich unmöglicher, technisch unmöglicher oder "nachweislich kein Käufer"-Befund. Alle Einwände sind weich (Zahlungsbereitschaft, Glaubwürdigkeit, Frequency, Gratis-Druck) oder unbelegt.

## Überarbeiteter Plan

Gegenüber 00c (Ausprägung A Werkzeug) ändert sich **nicht die Ausprägung**, sondern die Schärfung — alle Änderungen antworten direkt auf weiche Einwände, ohne den Kern zu verwässern:

1. **Zuspitzen — Käufermoment schärfen:** ICP bleibt Platform-/AI-Lead 15–80 MA, aber Pitch wird von "Audit deiner Runbooks" zu **"Go/No-Go-Befund vor dem nächsten Rollout — in Minuten, als Artefakt für Team/CTO"** geschärft. Das verankert 99 € als Freigabe-Kosten (vergleichbar Code-Review), nicht als "besserer Score" — antwortet auf Zahlungsbereitschaft + Gratis-Druck.
2. **Schnittwechsel — kleinster Beweis glaubwürdiger machen:** v1 enthält jetzt explizit **2 kalibrierte Beispiel-Reports** (je 10 Prompts, einmal "gut", einmal "rot") als Landing-Beweisstücke **vor** dem ersten echten Audit. Regel-Checks (keine Rollentrennung, fehlendes Output-Schema etc.) werden im Report als "deterministischer Floor" getrennt vom LLM-Judge ausgewiesen — antwortet auf Glaubwürdigkeit.
3. **Kanal-Ergänzung — Frequency-Loch adressieren (Kanalwechsel light):** Cold Outreach bleibt Primärkanal (direkter Verkauf, 30 Sends), wird aber um **Content-Retargeting auf berlow.de** ergänzt (Prompt-Sprawls-Artikel + Beispiel-Report als Lead-Magnet für denselben Käufer) — kein Wechsel des Käufers, nur zweite Zuflussquelle für Wiederkauf/Re-Audit. Antwortet auf Frequency ohne Abo-Zwang.
4. **Preis-Anker — kein Preiswechsel, aber Begründung schärfen:** 99/199 € bleiben, werden aber im Report als **"Fixliste mit Umformulierungsbeispiel + Team-Muster"** statt nur Score verkauft — hebt wahrgenommenen Gegenwert über reinen Judge-Score und grenzt gegen Gratis-Grader ab.

Nicht erlaubt und nicht getan: Einwand ignoriert, Preis wegdefiniert, oder Plan so verwässert, dass er nichts mehr behauptet — jede Änderung ist an einem weichen Einwand verankert und prüfbar (Interview + Fake-Checkout).

## Neue Bewertung

- outreach_score: 5/10 (vorher 5) — unverändert: Reachability und Wedge tragen, Frequency-Loch und enge CAC/CLV bleiben auch nach Schärfung bestehen; Content-Ergänzung mindert, aber löst das Einmalzahlungs-Dilemma nicht. 5 = besetzter Markt, aber plausibler Wedge, Ausgang offen — ehrlich, kein Schönrechnen.
- product_score: 6/10 (vorher 6) — unverändert: Klarer Wedge (Batch + Runbook-Spezifität + One-Off, kein verifizierter direkter Wettbewerber), benennbarer Käufer, solo in 4–6 Tagen baubar, unfairer Vorteil (K6) greift. 6 = normales gutes Geschäft mit Wettbewerb — kein Aufschlag, weil Zahlungsbereitschaft weiter unbewiesen und Frequency schwach.
- buildable: yes

## Ehrliches Fazit

Die Überarbeitung hat die weichen Einwände **adressiert, aber nicht aufgelöst** — sie verschiebt das Risiko von "Idee unverkaufbar" zu "pricige Annahme, die sich billig prüfen lässt". Das ist genau ihr Wert: Der Plan ist jetzt **testbar** (10–15 Interviews + Fake-Checkout + 2 Beispiel-Reports) statt nur behauptet. Ob Teams 99 € als Pflichtschritt akzeptieren, entscheidet der Test, nicht diese Synthese — trägt er, ist 6/10 verdient; trägt er nicht, fällt die Idee beim nächsten Signal, aber mit Beleg statt Vermutung.
