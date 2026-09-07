# 00b — Träumer

## Kern in einem Satz

Jedes Team, das einen KI-Agenten zum ersten Mal produktiv nimmt, bekommt ab Tag 1 eine sichere, beobachtbare, skalierbare Infra — ohne je einen Platform-Engineer eingestellt oder fünf Tools verkabelt zu haben.

## Die beste denkbare Version

Stell dir vor, du pushst deinen Agenten-Code und 20 Minuten später läuft er hinter mTLS, mit Autoscaling, Secrets-Management, GitOps-Deploy, GPU-/Token-Kosten-Dashboard, Trace-View für jeden LLM-Call und Alerts, die dir sagen "dein Agent looped, kostet gerade €12/Stunde" — alles aus einem Befehl, auf deinem eigenen EU-Cluster, ohne ClickOps in fünf Konsolen. Du schläfst nachts besser, weil die Infra nicht dein Problem ist.

## Wer wäre begeistert

Die CTO einer 35-Personen B2B-SaaS-Firma in München, die gerade ihren ersten KI-Support-Agenten live geschaltet hat: Sie hat kein Platform-Team, ihr Senior Dev hat das Deployment mit Helm und ein paar Grafana-Dashboards zusammengeklöppelt und ist jetzt im Urlaub. Jede Nacht fragt sie sich, ob der Agent gerade Daten leakt, Kosten explodieren oder die GPU-Queue hängt — ohne dass es jemand merkt. Mit dem Bundle hätte sie endlich das Gefühl "das ist produktionsreif" statt "das ist ein Demo auf Staging".

## Drei Ausprägungen

### A — Werkzeug
Opinionated Infra-Distribution als Code: Ein CLI + Helm-Chart-/Terraform-Bundle, das ein bestehendes K8s-Cluster in 30 Minuten in eine AI-ready Platform verwandelt (Cilium/Ingress, cert-manager + mTLS, External Secrets, ArgoCD, Prometheus/Grafana/OpenTelemetry, GPU-/Token-Cost-Exporter). Self-hosted, versioniert, updatebar. Für Teams, die ihr Cluster behalten wollen und nur das "Verkabeln" abgeben.

### B — Dienstleistung
"DONE FOR YOU" AI-Infra-Setup: Du lieferst das Ergebnis — ein gehärtetes, beobachtbares Cluster (auf Hetzner/Vultr oder beim Kunden), inkl. Deployment-Pipeline und Monitoring-Dashboards für die ersten 3 Services. Fixpreis €3.500 Setup + €490/Mo Betrieb/Updates. Kein Tool, sondern ein wiederholbares Playbook, das du abarbeitest. Kunde kauft Ruhe, nicht Software.

### C — Nische
**DACH AI-Compliance Infra** — dasselbe Bundle, aber radikal zugespitzt auf regulierte DACH-KMU (Kanzleien, Steuerberater, Kliniken, Mittelstand mit EU-Datenpflicht): Alles läuft in EU, Daten verlassen nie den Cluster, jedes LLM-Call wird geloggt/auditierbar, DSGVO-/AI-Act-Nachweis per Knopfdruck. Verkauft nicht "Infra", sondern "du darfst das rechtssicher betreiben". Ein Termin, der Infra zum Pflichtkauf macht.

## Das wird groß, wenn

1. Das wird groß, wenn jedes Produktteam, das einen KI-Agenten shippt, innerhalb von Wochen an denselben Infra-Schmerzen scheitert und keine Lust hat, fünf Kategorien selbst zu Mastering zu lernen.
2. Das wird groß, wenn EU-Datensouveränität und AI-Act-Dokumentationspflichten aus "nice to have" einen echten Zwang machen, der Self-Hosting/On-Prem besser stellt als US-APIs.
3. Das wird groß, wenn ein einziges opinionated Bundle 80 % der Prod-Anforderungen abdeckt und die restlichen 20 % Erweiterbarkeit den Enterprise-Plattformen genug Parität gibt, um als Standard zu gelten.
