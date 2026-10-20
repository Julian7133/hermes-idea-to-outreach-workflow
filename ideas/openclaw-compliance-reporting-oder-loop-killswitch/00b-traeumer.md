# 00b — Träumer

## Kern in einem Satz

Jeder autonome Agent braucht einen Zeugen — eine zweite Instanz, die lückenlos bezeugt, was er getan hat, und notfalls den Stecker zieht, bevor Schaden entsteht.

## Die beste denkbare Version

Stell dir vor, du lässt deinen Coding-Agenten über Nacht laufen. Am Morgen findest du nicht nur den fertigen Code, sondern einen einseitigen Bericht: jede Aktion geloggt, jede Netzwerkverbindung benannt, jede Schleife markiert, mit Ampel und einem Satz: "Menschliche Aufsicht war durchgängig nachweisbar — hier ist der Beleg für euren DSB." Oder, noch simpler: du schläfst ruhig, weil du weißt — läuft er Amok, kostet er dich keine €300, er wird vorher gestoppt, und du bekommst eine Push-Nachricht: "Loop nach 47 Tool-Calls gekillt, €18 gespart." Der Agent bleibt mächtig, aber er ist nicht mehr allein.

## Wer wäre begeistert

**Für (a):** Die Datenschutzbeauftragte einer 45-Personen-Steuerkanzlei in Leipzig, die gerade den ersten openclaw-Agenten für E-Mail-Vorqualifizierung freigeben soll. Sie muss dem Mandanten und der Aufsicht erklären: "Wie stellen Sie menschliche Aufsicht sicher?" — heute hat sie dafür nur ein Word-Dokument. Mit dem Tool legt sie monatlich einen maschinell erzeugten, unterschreibbaren Report vor und schläft nachts.

**Für (b):** Der Solo-Freelancer in Berlin, der Claude Code seit drei Monaten für Kundenprojekte nutzt, letzten Monat €240 an API-Kosten durch einen nächtlichen Loop verbrannt hat und seitdem jeden Agent-Run manuell babysittet. Mit dem Kill-Switch lehnt er sich zurück: Budget-Cap bei €15, Loop-Erkennung nach 30 identischen Tool-Calls, Kill + Benachrichtigung — er zahlt €29/Monat, spart aber jeden Monat ein Vielfaches und gewinnt seine Abende zurück.

## Drei Ausprägungen

### A — Werkzeug

Ein lokales CLI + optionales Menüleisten-Widget: liest Agent-Logs (openclaw/Claude Code), schreibt täglich ein Audit-Log + Wochen-PDF ("Aufsicht nachweisbar" / Kosten-Report) und/oder killt bei Budget-/Loop-Schwelle. Der Nutzer bedient es selbst, Daten bleiben lokal, kein Cloud-Account. Für Solo-Devs und kleine Teams, die Autonomie wollen ohne Kontrollverlust.

### B — Dienstleistung

Du lieferst das Ergebnis, nicht das Werkzeug: "Agent-Aufsicht als Service" — der Kunde leitet seine Agent-Logs an dich (oder du installierst einen Collector), du lieferst monatlich einen signierten Compliance-Bericht für den DSB plus Handlungsempfehlungen. Oder: Runaway-Forensik nach einem Vorfall — "Was ist passiert, was hat es gekostet, wie verhindern wir das nächste Mal?" Abgerechnet als €490 Erst-Audit + €99/Monat Retainer. Für Kanzleien/KMU ohne eigene Agent-Expertise.

### C — Nische

Radikal zugespitzt auf eine Rechtslage: **"EU AI Act Art. 14 Nachweis-Tool für DACH-KMU mit Hochrisiko-KI"** — genau ein Report-Typ, der wörtlich die in Art. 14 geforderte "menschliche Aufsicht" dokumentiert (wer hat wann welchen Agent-Output freigegeben, welche Logs belegen die Überwachung). Oder spiegelbildlich: **"Claude Code Budget-Guard für DACH-Freelancer mit monatlichem Kundenbudget"** — nur Kosten-/Loop-Kill, nur für Claude Code/openclaw, nur für Solo-Devs mit €200–2.000 Monatsbudget. Jeweils ein Problem, ein Käufer, ein Preis.

## Das wird groß, wenn

1. ... der Nachweis menschlicher Aufsicht (a) oder die Angst vor Budget-Runaway (b) von einem "nice to have" zu einem **geforderten oder schmerzhaft erlebten** Standard wird — regulatorisch oder durch einen teuren Vorfall.
2. ... Agenten-Autonomie in DACH-KMU/Freelancing so normal wird, dass "wer schaut dem Agenten zu?" die naheliegende zweite Frage nach "was kann der Agent?" ist — und niemand sie gratis als Plattform-Feature beantwortet.
3. ... der Bericht (a) oder der Kill (b) so billig und lokal bleibt, dass er kein neues Vertrauen erfordert — er bezeugt, ohne selbst zur Risikoquelle zu werden.
