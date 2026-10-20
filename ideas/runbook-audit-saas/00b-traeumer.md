# 00b — Träumer

## Kern in einem Satz

Teams hören auf, LLM-Prompts zu raten, und bekommen in Minuten einen belastbaren Befund, welche ihrer Runbooks im nächsten Incident versagen würden — und was genau zu fixen ist.

## Die beste denkbare Version

Du ziehst dein Repo oder einen Ordner mit 30 Prompts in ein Fenster, 90 Sekunden später hältst du einen Report in der Hand, der aussieht, als hätte ein Senior Platform Engineer eine Woche lang jede Anweisung zerlegt: je Prompt ein Score, die drei gefährlichsten Lücken rot markiert, teamweit die Muster ("7 Prompts haben keinen Guardrail für leere Eingaben"), und unten ein priorisierter Fix-Plan, den du direkt ins Board kopierst. Das CI-Flag macht daraus einen Gate: kein Merge, wenn der neue Prompt unter die Schwelle fällt. Es fühlt sich nicht wie ein Tool an, sondern wie ein bestandenes Audit, das du dem CTO zeigen kannst.

## Wer wäre begeistert

Die Platform-Lead einer 40-Personen-SaaS-Firma in Berlin, die in den letzten sechs Monaten 25 Agent-Skills von vier Teams einsammeln ließ, jetzt vor dem ersten produktiven Rollout steht, nachts von Shadow-Prompts träumt und ihrem Geschäftsführer beweisen muss, dass das nicht beim ersten Kundenanruf auseinanderfällt. Für sie wird aus diffuser Angst ein abhakbares Dokument.

## Drei Ausprägungen

### A — Werkzeug

Self-Service-Web-App: Batch-Upload oder GitHub-Connect, automatisiertes Scoring, sofortiger PDF-/Markdown-Report für 99–199 € je Audit. Für Teams, die Autonomie wollen und den Befund selbst abarbeiten.

### B — Dienstleistung

Du lieferst das Ergebnis: Team schickt Repo-Zugriff, du lieferst in 48 Stunden einen annotierten Audit-Bericht plus 60-Minuten-Loom mit den drei wichtigsten Hebeln und optionalem Fix-Sprint. Für Teams, die keine Zeit haben, den Report selbst zu interpretieren, und lieber eine Person kaufen als ein Tool.

### C — Nische

Runbook-Audit ausschließlich für **regulierte DACH-Teams** (Finanzdienstleister, Krankenversicherung, öffentliche Verwaltung), die nachweisen müssen, dass ihre KI-Workflows dokumentiert, reproduzierbar und freigegeben sind — Report als Compliance-Artefakt mit Freigabe-Stempel und Versionierung, verkaufbar als Pflichtbaustein vor dem Audit. Für Organisationen, bei denen ein fehlender Nachweis teurer ist als das Tool.

## Das wird groß, wenn

1. Teams wirklich mehrere Dutzend Prompts/Skills produktiv betreiben und die Streuung ihrer Qualität zum spürbaren Betriebsrisiko wird.
2. Ein einmaliger, direkt bezahlter Audit als Format akzeptiert wird — Teams also bereit sind, 99–199 € für einen Befund zu zahlen statt auf Gratis-Grader oder interne Reviews zu warten.
3. Der Report als Artefakt genug Vertrauen erzeugt, um im Team und gegenüber Stakeholdern als "erledigtes Audit" zu gelten — nicht nur als Score, sondern als Entscheidungsgrundlage.
