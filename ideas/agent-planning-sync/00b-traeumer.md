# 00b — Träumer

## Kern in einem Satz
Ein Team, das mit Agents plant, soll nie wieder zwischen Board und Markdown entscheiden müssen — beide sind dieselbe Wahrheit.

## Die beste denkbare Version
Ein Tech-Lead öffnet morgens Linear und sieht denselben Plan, den sein `bb`-Agent nachts geschrieben hat — inklusive Begründungen, offenen Fragen und verlinkten Commits. Er kommentiert ein Issue, und beim nächsten Agent-Lauf steht der Kommentar als Entscheidung im `STATE.md`. Kein Copy-Paste, kein "welche Quelle stimmt", kein Drift vor dem Sprint-Review. Die Planung fühlt sich an wie ein kollaboratives Dokument mit einem unsichtbaren, zuverlässigen Protokollanten, nicht wie zwei Systeme, die man synchron halten muss. Stakeholder sehen im Board, was wirklich passiert; Agents lesen im Repo, was wirklich gilt.

## Wer wäre begeistert
**Lena, Engineering-Managerin eines 18-Personen-Produktteams (B2B-SaaS, Berlin/Remote)**, dessen drei Senior-Devs seit 2026 ihre Feature-Planung primär über Claude Code / bb auf Markdown-Artefakten (`ROADMAP.md`, `PHASE-*.md`) betreiben, während Sales und Produkt weiterhin Linear als Reporting-Source verlangen. Sie verbringt jeden Montagvormittag damit, Agent-Entscheidungen manuell ins Board zu übertragen und Board-Kommentare zurück in die Agent-Pläne zu tragen — und weiß nie, ob der Agent beim nächsten Lauf den alten Stand überschreibt. Mit dem Sync-Tool verschwindet diese Montagsarbeit vollständig, und sie kann erstmals vertrauensvoll sagen: "Was im Board steht, ist was die Agents sehen — und umgekehrt."

## Drei Ausprägungen
### A — Werkzeug
**`planning-sync` CLI + Git-Hook/GitHub App:** `npx planning-sync push` schreibt Markdown-Tasks → Linear/Jira, `pull` holt Status/Kommentare → Markdown, Hook hält beides bei jedem Commit/PR konsistent. Konflikte werden als Review-Kommentar markiert, nicht still überschrieben. *Für Teams, die ihre Planung im Repo behalten wollen und eine deterministische CLI einem Dashboard vorziehen.*

### B — Dienstleistung
**"Agent-Planning Setup als Service":** Julian richtet das Sync-System (Mapping, Konventionen, Hooks) in 2 Tagen im Kunden-Repo ein, schult das Team und übergibt eine Doku + 30-Tage-Fixfenster. Danach Self-Service. *Für Teams, die sofort den Nutzen wollen, ohne selbst Konventionen und Mapping zu definieren.*

### C — Nische
**"EU-Datenspar-Sync für DACH-Enterprise-Jira":** Dieselbe Sync-Idee, aber ausschließlich für **Jira Data Center / On-Prem** mit dem Versprechen: kein US-Cloud-Hop, alle Sync-Daten bleiben im EU-Mandanten bzw. on-prem, auditierbares Mapping-Log, deutschsprachiger Support. *Für regulierte Branchen (Finanz, Gesundheit, Verwaltung), die Agents evaluieren, aber Jira nicht verlassen dürfen.*

## Das wird groß, wenn
1. Agent-gestützte Planung in Dev-Teams 2026/2027 von "Power-User-Setup" zum **Team-Standard** wird und das Board als Stakeholder-Interface trotzdem Pflicht bleibt — der Drift-Schmerz also strukturell wächst.
2. Ein **auf Markdown les-/schreibbares Planungsformat** (`AGENTS.md`, `.planning/`, `STATE.md`) sich teamübergreifend stabilisiert, sodass ein generisches Sync-Tool mehr als nur Julians Setup bedienen kann.
3. Engineering-Manager dem Sync vertrauen, weil es **konfliktsicher und auditierbar** ist (wer hat wann was überschrieben — sichtbar im Git-Log und als Board-Kommentar), nicht weil es "magisch" ist.
