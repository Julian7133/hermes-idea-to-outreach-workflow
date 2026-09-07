# 00c — Realist

## Gewählte Ausprägung
**B — Dienstleistung (productized Service auf Hetzner-EU)** — Ein Modell, eine Umgebung, ein Fixpreis. Solo am schnellsten zum ersten Euro: kein breites CLI-Tool bauen, kein App-Store, keine Multi-Target-Matrix — ein Playbook + schlanke Adapter reichen, um den ersten Kunden produktiv zu machen und danach als Retainer zu halten. Werkzeug (A) braucht Produkt-/Distribution, Nische (C) ist später zuspitzbar, aber B ist heute verkaufbar.
Verworfen, aber aufgehoben: A — Werkzeug (CLI) wäre skalierbar, braucht aber Distribution und Bioinformatics gegen Gratis-OSS (Ollama/vLLM). C — Kanzlei-Nische ist der schärfste Compliance-Wedge, hebbar falls B zu breit streut.

## Der erste zahlende Kunde
**Tech-Lead / IT-Leiter eines 30–80-MA Softwarehauses oder einer Kanzlei/WP-Gesellschaft in DACH**, die bereits einen KI-Prototyp (RAG oder Finetune auf Llama/Mistral/Qwen) haben und vom Kunden/Geschäftsführung den Auftrag bekommen: "Bring das DSGVO-konform live, Daten bleiben in EU, wir brauchen Nachweise". Auslöser ist ein konkreter Go-Live-Termin oder eine Datenschutz/AI-Act-Anfrage. Moment: Wenn sie merken, dass Notebook ≠ Produktion (GPU-Treiber, vLLM-Flags, Quantisierung, Monitoring, Rollback fehlen) und sie niemanden haben, der das baut.
**Erreichbar über:** Empfehlung/Content/Community + SEO ("Hetzner GPU LLM hosten DSGVO", "vLLM Hetzner deploy") und Kammer-/Verbandskanäle für Kanzleien — **nicht** primär Cold Outreach an anonyme Listen, sondern 1:1-Ansprache von Tech-Leads mit sichtbarem AI-Prototyp/GitHub/Hetzner-Stack-Signal.

## Der kleinste Beweis
**Eingabe:** Modell-Artefakt (HF-Repo oder GGUF), 1 GPU-Ziel (Hetzner GEX44 oder vorhandener Bare Metal), 1 Demo-Datensatz/Prompt-Set.
**Verarbeitung:** Paketieren (Quantisierung AWQ/GPTQ wenn nötig), Deployment auf k3s + vLLM/Ollama, TLS/Auth, Basis-Autoscaling (1 Replica), Prometheus/Grafana (Latency, Tokens, GPU-Mem), Loki-Logs, Cost-Exporter, monatlicher Audit-Export (Modellversion, Datenherkunft, Zugriffslog).
**Ausgabe:** Produktive HTTPS-API (OpenAI-kompatibel), Grafana-URL, Rollback auf Vorversion in <5 Min, PDF-Audit-Snippet für Datenschutzbeauftragten.
**Bewusst nicht drin:** Multi-Cluster/Federation, Custom UI/Chat-Frontend, Training/Feintuning-Pipeline selbst (Kunde liefert Modell), 24/7-SLA, Autoscaling über mehrere Nodes, Abrechnung per Token (Kunde zahlt Hoster direkt).

## Weg zum ersten Euro
**Preis:** €2.400 Setup + €490/Monat Betrieb (+€290/Modell/Monat) — Begründung: erspart 15–25h Senior-MLOps pro Rollout + laufende Wartung; Vergleich: ein Platform-Engineer €7–9k/Monat.
1. Landing + 2 Referenz-Cases (Nürnberger Softwarehaus + Kanzlei-Prototyp) bauen, SEO-Snippet "Hetzner GPU LLM DSGVO deploy" live.
2. 10 Ziel-Tech-Leads mit sichtbarem KI-Prototyp (GitHub, Job-Post "LLM", Konferenz-Talk) 1:1 anschreiben — Angebot: "1 Modell, 1 Woche, live auf eurer Hetzner-GPU, sonst Geld zurück".
3. Ersten Setup-Termin in 5 Tagen durchführen, API + Dashboard live stellen, Health-Report liefern.
4. Nach 30 Tagen Retainer verlängern oder Referenz + Intro in deren Netzwerk holen.
5. Playbook härten, zweiten Kunden mit gleichem Schnitt holen — erst dann CLI-Extrakt erwägen.

## Aufwand und Abhängigkeiten
**Aufwand kleinster Beweis:** 6–9 Tage solo (Playbook 2d, Hetzner-k3s + GPU-Treiber + vLLM/Ollama-Adapter 3d, Observability/Audit-Export 2d, Doku/Rollback 1d). Talent vorhanden (Hetzner, k3s, Quantisierung, vLLM/Ollama aus eigenen Projekten).
**Fehlende Zugänge:** Kein Hetzner-Partnerstatus nötig, aber GPU-Verfügbarkeit (GEX44) schwankt.
**Drittabhängigkeiten:** Hetzner GPU-Verfügbarkeit/Preis, vLLM/Ollama Release-Stabilität, Hugging Face/Modell-Lizenzen, ggfs. BSI C5/DSGVO-Nachweis-Interpretation (keine Rechtsberatung).

## Riskanteste Annahme
**Annahme:** Genug DACH-Teams wollen wirklich *eigene Modelle* souverän betreiben (nicht nur OpenAI-API callen) und zahlen für Betrieb statt es intern irgendwie zu basteln.
**Billiger Test:** Vor Bau: 12 Kurzinterviews (je 15 Min) mit Tech-Leads, die öffentlich LLM-Prototypen/Finetunes zeigen — Frage: "Wie würdet ihr das produktiv in EU hosten, und was würdet ihr dafür zahlen vs. selbst bauen?" — plus 2 Probe-Setup-Angebote à €2.400 an echte Interessenten. Wenn 0 von 12 zahlen würden, ist die Annahme tot.
