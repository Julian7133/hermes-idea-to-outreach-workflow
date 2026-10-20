---
slug: ai-picks-and-shovels
title: "Picks & Shovels für KI: Training, Finetuning und Deployment dorthin bringen, wo die Daten liegen"
status: dropped
created: 2026-09-07
stage: 1
---

# 00 — Idea Capture

## Raw idea
Ein Angebot, das KI-Leistung an den richtigen Ort bringt — dort wo Daten, GPU und Compliance-Anforderung liegen — und Teams beim Trainieren, Finetunen und Deployen ihrer Modelle praktisch entlastet. Für kleine bis mittlere DACH-Teams (20–150 MA, z. B. Software-Haus, Industrie-Mittelstand, Agentur mit KI-Use-Case), die ein eigenes Modell / einen Llama-/Mistral-Fork finetunen oder eine GPU-Inferenz produktiv betreiben wollen, aber kein Platform-Team haben. Ergebnis: Daten bleiben in EU, Modell läuft als stabile API/Worker, Update und Monitoring sind geklärt — ohne dass das Team Kubernetes, GPU-Treiber, vLLM/Ollama, Quantisierung und Observability selbst zusammenbauen muss.

## Monetization assumption
Productized Service + leichtes Tooling, nicht reines Tool-Abo:
- **Setup/Onboarding:** €2.400 einmalig — GPU-Ziel einrichten (Hetzner GPU, on-prem oder EU-Cloud), Modell paketieren (vLLM/Ollama + Quantisierung), Deployment-Pipeline + Observability/Grenzwerte live.
- **Betrieb/Retainer:** €490/Monat — Updates, Modell-Rollout, Cost-/Latency-Monitoring, Alerting, monatlicher Health-Check. Kündbar monatlich.
- **Alternative Skalierung:** bei mehreren Modellen/Environments +€290/Modell/Monat.

ASSUMPTION: Preispunkt aus erspartem Platform-/MLOps-Aufwand (1 Senior MLOps/Platform Engineer €7–9k/Monat Vollkosten oder 15–25h Senior-Dev pro Rollout). Zielkunde zahlt für "läuft stabil in unserer EU-Umgebung und ich muss es nicht selbst warten" — nicht für GPU-Stunden selbst (die zahlt er direkt beim Hoster, wir orchestrieren nur).

## Solo fit
**Passt:** Julian hat unfairen Vorteil: Agent-Orchestrierung (bb/openclaw/Claude Code), 20+ eigene Repos, Finetuning-Pipelines, lokale Quantisierung, Hetzner-Erfahrung — genau das "Spitzhacken"-Wissen, das die Zielkunden nicht haben. Scope ist schmal schneidbar: ein Modell, eine Umgebung, ein Service — solo lieferbar als Playbook + leichtes CLI/Adapter. Wiederkehrender Betrieb als Retainer, nicht Einmal-Projekt.
**Schlecht:** Wenn der Markt nur Hyperscaler-Managed-Services will (SageMaker/Vertex/AI Studio) und jeder Rest als DIY mit gratis OSS gilt, ist Zahlungsbereitschaft fragil. Außerdem: Haftungs-/SLA-Erwartung bei produktiver GPU kann solo schnell unbequem werden — deshalb bewusst kein 24/7-SLA, nur "best effort + Alert + Rollback".

## Trigger / why now
- Open-Weights-Modelle (Llama 3.x, Mistral, Qwen, Gemma) sind gut genug, dass Mittelstand nicht mehr nur API callt, sondern **eigene Daten** finetunen will — EU AI Act + DSGVO pushen "Daten bleiben in EU".
- GPU-Angebot in EU wird verfügbar und günstiger (Hetzner GEX44 €184/Mo, Civo, Scaleway), aber MLOps-Stack bleibt fragmentiert (vLLM, TGI, Ollama, Quantisierung, Autoscaling, Monitoring) — Integrationslast für kleine Teams steigt, nicht sinkt.
- Gleichzeitig commoditisieren Hyperscaler Finetuning/Inference als Managed Feature, was den generischen "irgendwo hosten"-Wedge schließt, aber den **souveränen, auditierbaren Betrieb beim Kunden** offen lassen könnte — genau der Pick-&-Shovel-Rand, der geprüft werden muss.

## Open questions
- Zahlt der DACH-Mittelstand für souveränen Betrieb oder nimmt er am Ende doch OpenAI-API/Vertex trotz Datenlage (Bequemlichkeit > Souveränität)?
- Ist die Nachfrage "finetunen + selbst hosten" bei 20–150 MA überhaupt häufig oder nur 2 % der KI-Nutzer (rest Inference via API)?
- Wie groß ist die Konkurrenz durch Gratis-OSS-Bundles (Kubeply ai-infra-platform, Hugging Face Spaces, Modal/Replicate) + Hyperscaler-Managed Finetuning — bleibt ein bezahlter Dazwischen-Raum?
- Wie anfällig ist der Betrieb für Haftungs-/SLA-Forderungen, die solo nicht tragbar sind?
