# 00b — Träumer

## Kern in einem Satz
Teams, die KI wirklich selbst betreiben wollen — mit eigenen Daten, auf eigener GPU, in eigener Hoheit — bekommen das ohne MLOps-Albtraum: Modell rein, stabile API raus, Betrieb läuft.

## Die beste denkbare Version
Ein Tech-Lead zieht sein finetuntes Modell per CLI auf seine Hetzner-GPU oder seinen Homeserver, tippt `picks deploy --model ./my-llama --target hetzner-gex44`, und fünf Minuten später hat er eine dokumentierte HTTPS-API mit Auth, Autoscaling, Token-Metering, Grafana-Dashboards und Rollback-Knopf — und am Abend schläft er, weil Updates, Quantisierung und Monitoring nicht mehr sein Problem sind. Daten haben die EU nie verlassen, der AI-Act-Audit kann "wo läuft welches Modell mit welchen Daten?" in einem PDF beantworten, und das Team zahlt einen festen Retainer statt einen MLOps-Senior zu suchen.

## Wer wäre begeistert
**Laura, 38, Tech-Lead einer 45-Personen-Softwarefirma in Nürnberg**, die für einen Industriekunden eine Doku-KI auf dessen Wartungshandbüchern finetuned hat. Der Prototyp läuft auf ihrem RTX 4090-Workstation, der Kunde will es jetzt "sicher und DSGVO-konform in Betrieb" — Laura hat kein Platform-Team, keine Lust auf Kubernetes-YAML und keine Zeit, vLLM-Flags zu debuggen. Wenn jemand ihr den Sprung "aus Notebook in Produktion, bei uns in EU, wartbar" für einen Fixpreis abnimmt und danach für €490/Monat am Laufen hält, spart sie 3 Wochen Senior-Arbeit und gewinnt einen Referenzkunden.

## Drei Ausprägungen
### A — Werkzeug
**picks** — ein schlankes, offline-fähiges CLI + Web-Dashboard, das Modelle paketiert (GGUF/AWQ, vLLM/Ollama-Adapter), auf ein GPU-Ziel deployt (Hetzner, Bare Metal, Scaleway), und als Service betreibt (Health, Logs, Cost/Latency, Updates). Für Teams, die selbst hosten wollen, aber kein Kube- und GPU-Wissen haben. *Für wen:* Tech-Leads kleiner Software-Häuser/Agenturen mit eigener GPU und erstem Finetuning-Use-Case.

### B — Dienstleistung
**Souveräner MLOps-Service** — Julian richtet den sicheren EU-Betrieb ein (Hetzner-EU k3s + gehärtetes GPU-Stack + Audit-Log) und betreibt ihn als productized Service: ein Modell, eine Umgebung, ein Preis. Kunde liefert Modell + Daten, bekommt produktive API + monatlichen Health-Report. *Für wen:* DACH-Mittelstand (Kanzlei, Industrie, Klinik) mit reguliertem Kontext, der keine Cloud-USA will und keinen Platform-Menschen einstellen will.

### C — Nische
**Finetuning-zu-Produktion für regulierte DACH-Nische** — nur für **Anwalts-/Steuerkanzleien und Wirtschaftsprüfer (30–100 MA)**, die ihre eigene Akten-/Bescheid-KI finetunen. Angebot strikt auf DACH-Compliance zugeschnitten: EU-Hosting, Verschlüsselung, Zugriffslog, AI-Act-Modellinventar, DSGVO-Verarbeitungsverzeichnis-Auszug pro Rollout. *Für wen:* IT-Leiter einer Kanzlei, die LLM auf Mandantendaten nutzen muss und dem Datenschutzbeauftragten genau ein Dokument schuldet: "so läuft es, hier sind die Nachweise".

## Das wird groß, wenn
1. Es stimmt, dass genug DACH-Teams jenseits von OpenAI-API wirklich **eigene Modelle** betreiben wollen (und nicht nur RAG auf API).
2. Der Sprung "Modell läuft lokal" → "Modell läuft stabil produktiv, auditierbar, wartbar" für diese Teams ohne Hilfe so schmerzhaft bleibt, dass sie dafür fest zahlen.
3. EU-Souveränität + AI-Act-Dokumentationspflicht ein wiederkehrender, budgetierter Zwang werden — dann ist Picks & Shovels nicht Feature, sondern Pflicht.
