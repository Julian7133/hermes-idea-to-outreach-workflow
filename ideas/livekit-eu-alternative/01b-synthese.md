# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert
| Einwand | Klasse | Antwort |
|---|---|---|
| Gratis-Konkurrent: LiveKit OSS self-host auf Hetzner für ~€10/Mo + 3h Pflege löst 80 % des Problems ohne Abo | **Weich** | Trifft nur Teams ohne Audit-Druck. Überarbeitung: Fokus auf regulierte Käufer (Telehealth/EdTech/HR mit US-Transfer-Blocker) + AVV/Haftung/Support als bezahlter Kern, nicht SFU-Feature. |
| LiveKit Cloud hat Region-Pinning (EU) — löst EU-Thema ohne neue Firma | **Weich** | Region-Pinning ist Scale-gated ($500/Mo) und löst US-Jurisdiktion (CLOUD Act) + AVV-Tiefe nicht. Wedge bleibt: EU-Jurisdiktion + deutscher AVV unter deutscher GmbH. |
| Sehr kleiner TAM (nur LiveKit-nutzende DACH-Teams mit Blocker) — schwer skalierbar | **Weich** | Ja, Nische. Zuspitzen statt verbreitern: 80–250 Käufer reichen für Solo-Ziel 40×199 €. SEO "LiveKit DSGVO" + Community statt breitem Outreach. |
| Solo-Betrieb haftungsnah (99,9 %, TURN, AVV-Zusage) | **Weich** | Schnittwechsel: Start ohne 99,99%-SLA, nur 99,9% best-effort + klarer Haftungs-Disclaimer + Anwalt für AVV-Muster (500–1k €). Erst bei Traction SRE zukaufen. |
| Wettbewerb CPaaS $0.004/Min, LiveKit Cloud $0.0005 günstiger — Preisdruck | **Unbelegt** | Preisdruck greift hier nicht: Wettbewerber sind US-zentriert ohne EU-AVV-Vorteil; LiveKit Cloud ist selbst der Preisanker, nicht teurer. Einwand streicht nicht den Wedge, bestätigt ihn. |
| Kein harter technischer/rechtlicher K.-o. (LiveKit OSS vorhanden, Hetzner DPA vorhanden) | — | **Kein harter Einwand.** Alles weich/unbelegt. |

## Harte Einwände
keine — kein rechtlich/technisch unmöglicher Block, kein "kein Käufer existiert" nachweisbar. Die Einwände sind Preisanker, enger TAM und Betriebsrisiko — alles überarbeitbar.

## Überarbeiteter Plan
Gegenüber 00c Realist (Ausprägung A) nur Zuspitzen + Schnittwechsel, kein Rollenwechsel:

- **Zielkunde geschärft:** Von "alle DACH Produktteams mit LiveKit" → **"DACH EdTech/Telehealth/HR-Tech (15–80 MA) mit konkretem US-Transfer-Blocker (Audit/Enterprise-Deal)"**. Die anderen (Hobby/SMB ohne Audit) sind bewusst kein ICP — sie bleiben bei Self-Host, und das ist okay.
- **Beweis verkleinert:** V1 nur **Single-Region EU-Central (Falkenstein), kein globales Edge-Netz, kein eigenes Recording/Transcription** — LiveKit-Features 1:1 durchgereicht. TURN-EU-only + AVV-Download + Metering + 4h-Support im Growth-Tier. SLA nur best-effort 99,9%, kein 99,99%-Versprechen in V1.
- **Kanalwechsel:** Outreach nicht als Volume-Blast, sondern **15–20 handverlesene LiveKit-Teams + SEO/Docs-Funnel** ("LiveKit EU hosting DSGVO", "LiveKit AVV Deutschland"). Community/GitHub/Jobs als Hauptkanal, Cold Email nur 1:1 mit Migrationsangebot.
- **Preis validieren statt setzen:** Vor Bau 15 Interviews zum Preisanker (199 € vs. Hetzner €10) — Positionierung als **"Haftung + Papierkram + On-Call"**, nicht "Server".

Nicht erlaubt und nicht getan: Einwand ignoriert oder Plan verwässert ("für alle Video-Apps").

## Neue Bewertung
- outreach_score: 4/10 (vorher 4) — bleibt knapp GO; Volumen-Outreach trägt nicht, 1:1-Liste + SEO/Community trägt. Kein Up-Score ohne bewiesene Liste.
- product_score: 6/10 (vorher 6) — klarer Wedge (EU-Jurisdiktion + deutscher AVV), Schmerz wiederkehrend bei regulierten Käufern, solo baubar mit Helm/Agent-Tooling, Weg zum Kunden auch ohne breites Cold-Outreach vorhanden.
- buildable: yes

## Ehrliches Fazit
Die Überarbeitung löst den Gratis-Anker nicht weg — sie **grenzt ihn ein**: Wer keinen Audit-Druck hat, bleibt bei Hetzner-Selbsthost und ist kein Kunde. Übrig bleibt eine kleine, aber zahlungsbereite Nische, in der Papierkram mehr wert ist als Technik. Das trägt ein Solo-Infra-Produkt mit 40 Kunden, aber kein Venture-Case. Over-Retten wäre 5/7 — hier bleibt 4/6 ehrlich.
