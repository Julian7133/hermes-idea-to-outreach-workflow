# 01 — Devalidation Report

## CLEARFRAME
- **Customer:** Mittelständler, die bereits RAG-/KI-Assistenten einsetzen und deren Fachverantwortliche Qualität vor Änderungen belegen müssen.
- **Job:** Prüfen, ob Antworten fachlich belegt und ausreichend vollständig sind; Regressionen nach Daten-/Promptänderungen sichtbar machen.
- **Existing solution:** Manuelle Stichproben, interne Testfragen oder Entwicklungsframeworks wie Ragas/DeepEval/Langfuse.
- **Alternative cost:** Fehlerhafte Entscheidungen und Nacharbeit sind plausibel, aber ein Eurobetrag ist **ASSUMPTION:** und im Kontext nicht beziffert.
- **Reachability:** NBG ist konkreter Gesprächszugang; zusätzlich bestehen KI-Kontakte bei Schindler und WWK, jedoch ohne bestätigten Eval-Kaufbedarf. Weitere Reichweite ist **ASSUMPTION:**.
- **Frequency:** Regression nach Änderungen und laufender Betrieb könnten wiederkehrend sein; Häufigkeit ist kundenspezifisch.
- **Revenue:** **ASSUMPTION:** 2.000–4.000 € Initialaudit plus 400–900 €/Monat Monitoring.
- **Advantage:** Praktische RAG-/Eval-Erfahrung aus NBG und vorhandene lokale Wissensbot-Assets (Kontext).
- **Moat-later:** Kundenspezifische, fachlich freigegebene Fehlerfälle und reproduzierbare Abnahmeberichte; Datensatz bleibt kundengebunden.
- **Effort:** Mittel; Auswertung ist technisch machbar, Ground Truth und Systemzugriff sind aufwendig.

## Verdict
- **Score:** 5/10
- **Go/No-Go:** GO
- **One-line reason:** Es gibt einen belegten NBG-Use-Case und wiederkehrende Qualitätsprobleme am Markt, aber kostenlose Frameworks machen generische Evaluation leicht substituierbar.

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** **ASSUMPTION:** Ein kleiner Beratungsmarkt aus DACH-Mittelständlern mit produktiven Assistenten existiert; öffentlich belastbare Zahl für diesen eng definierten Käufer wurde nicht gefunden.
- **Saturation / competition:** Stark auf Tool-Ebene: Ragas und DeepEval sind Open-Source-Frameworks; Langfuse bietet eine MIT-lizenzierte Self-Host-Variante und Cloud Core ab 29 US-Dollar/Monat; LangSmith listet Free/Pay-as-you-go und kostenpflichtige Pläne. Der Service muss fachliche Testfall-Erstellung, Interpretation und unabhängige Freigabe verkaufen, nicht nur Metriken. [Ragas](https://github.com/explodinggradients/ragas) · [DeepEval](https://deepeval.com/) · [Langfuse Preise](https://langfuse.com/pricing) · [LangSmith Preise](https://www.langchain.com/pricing)
- **Category maturity & growth:** **Growth** in der Produktionsanwendung, noch uneinheitliche Evaluationspraxis. Eine Interviewstudie zu industriellem RAG berichtet, dass Systeme häufig noch Prototypen sind und Qualität überwiegend menschlich evaluiert wird. [Applied AI / Interviewstudie](https://arxiv.org/abs/2508.14066)
- **CAC vs CLV sanity:** Bei 2.000–4.000 € Audit ist Direktvertrieb prinzipiell tragfähig; Retainer hängt davon ab, ob sich Testset und Zugriff ohne monatliche Beratungseskalation nutzen lassen (**ASSUMPTION:**). Kundenzugang bei NBG/Schindler/WWK reduziert anfängliche Akquisekosten, ist aber keine Kaufzusage.
- **Difficulty score:** 7/10
- **Key risks:** (1) generische Plattformen plus Inhouse-Entwickler ersetzen den Anbieter; (2) schlechte Referenzantworten machen Scores wenig aussagekräftig; (3) Anbieter haben keinen regelmäßigen Budgetposten für Tests.

## Cited market signals (researched 2026-10-17)
- NBG führt „Wissensmanagement mit definiertem Output (Evals)“ unter seinen 11 Leuchttürmen; im „Virtueller Jens“-Use-Case existieren Testfragen und wöchentliche kritische Fälle. Das belegt konkretes internes Interesse, aber keinen Auftrag für externes Monitoring (Gesprächskontext).
- Eine Branchen-Interviewstudie zu RAG in Unternehmen berichtet, dass Anwendungen meist domänenspezifische QA-Prototypen sind und Evaluation häufig manuell erfolgt. [RAG in Industry, arXiv 2025](https://arxiv.org/abs/2508.14066)
- Slalom berichtet aus einer 2025er Befragung (161 deutsche Führungskräfte/Experten, überwiegend große Unternehmen), dass 62 % unzuverlässige oder verzerrte KI-Ergebnisse mit Nachbesserungsbedarf erlebt hätten; Stichprobe ist kein Beleg für Mittelstands-Kaufabsicht. [Slalom KI-Realitätscheck](https://presse.slalom.com/news-ki-realitaetscheck-deutsche-unternehmen-kaempfen-mit-ki-praxis?id=225438&l=deutsch&menueid=33995)
- Ragas/DeepEval bieten frei verfügbare Frameworks; Langfuse Cloud Core listet 29 US-Dollar/Monat und Self-Hosting ist möglich. Das widerlegt eine Lücke bei Basistools; möglicher Service-Wert liegt bei domänenspezifischer Bewertungsarbeit. [Ragas](https://github.com/explodinggradients/ragas) · [DeepEval](https://deepeval.com/) · [Langfuse](https://langfuse.com/pricing)
- LangSmith bietet Evaluation/Observability mit kostenlosen Einstiegsoptionen und bezahlter Nutzung; Käufer können Funktionalität direkt in bestehende Developer-Tools integrieren. [LangSmith Pricing](https://www.langchain.com/pricing)
- **ASSUMPTION:** Es gibt derzeit kein ausreichendes öffentliches Signal, wie viele DACH-Mittelständler separate Eval-Beratung bezahlen würden.

## Boring & Trends check
- **Boring/niche defensibility:** Qualitätsbericht für einen vorhandenen internen Assistenten ist sachlich und eng, aber „AI evals“ als Kategorie ist attraktiv und gut finanziert. Boring wird es erst mit einem klaren Segment (z. B. interne Wissensassistenten in datenschutzsensiblen Mittelständlern), reproduzierbarer fachlicher Abnahme und verständlichem Maßnahmenbericht.
- **Sociological trend:** **Skepsis wegen unzuverlässiger KI-Ergebnisse:** Slalom meldet, dass 62 % der befragten deutschen Entscheider/Experten unzuverlässige oder verzerrte Ergebnisse mit Nacharbeit erlebt haben. Das schafft einen nachvollziehbaren Bedarf, bestehende Assistenten regelmäßig gegen echte Fachfälle zu prüfen; Sample ist überwiegend Großunternehmen und nur Richtungsindikator. [Slalom KI-Realitätscheck](https://presse.slalom.com/news-ki-realitaetscheck-deutsche-unternehmen-kaempfen-mit-ki-praxis?id=225438&l=deutsch&menueid=33995)
- **Technological trend:** **Open-Source-Eval-Frameworks werden einsatzfähig:** DeepEval stellt RAG-Metriken und lokale Ausführung bereit. Damit sinkt die technische Eintrittshürde für Regressionstests; der verkaufbare Anteil verschiebt sich zu kundenspezifischen Testfällen, Interpretation und akzeptierten Qualitätsgrenzen. [DeepEval Dokumentation](https://deepeval.com/docs/metrics-ragas)

## Riskiest assumption test (RAT)
- **What to test next:** Stage 3 validation send — founder-led cold email to 20–50 hand-picked ICP contacts (max 30 enrolled). Pass if ≥1 positive reply OR ≥3 human clicks after sends complete.
- **Kill signal:** 30 sends, 0 replies AND <3 human clicks → `status: validation-failed`.

## Notes / assumptions
- ASSUMPTION: Initialaudit und monatliches Monitoring lassen sich wiederholbar für 2.000–4.000 € bzw. 400–900 €/Monat verkaufen.
- Der Kontext nennt NBGs use-case, aber keine separate Budgetfreigabe für unabhängige Qualitätsprüfung.

## Schnell-Umsatz-Check
- **Kaufchance binnen 8 Wochen:** NBG / Bodo ist der passendste Kontakt wegen „definierter Output“-Eval-Leuchtturm; Kaufabsicht nicht belegt. WWK (Sales Controlling) hat ebenfalls KI-Use-Cases, aber keinen Eval-Bedarf im Kontext.
- **Kleinstes verkaufbares Deliverable:** 20 fachlich abgestimmte Fragen gegen einen vorhandenen Assistenten, mit Ergebnis-/Fehlerbericht und Review; **ASSUMPTION:** 1.200 € Festpreis.
- **Demo müsste zeigen:**
  - Testfall mit Frage, erwarteten Belegen und Abnahmekriterium.
  - automatischer Lauf gegen Antworten und Quellen.
  - markierte unbelegte Antwort plus verständliche Begründung.
  - Vergleich zweier Versionen mit Regression.
  - exportierbarer Bericht für Fachverantwortliche.
- **Demo-Aufwand:** **ASSUMPTION:** 10 Stunden mit vorhandenem Wissensbot/Eval-Stack.
