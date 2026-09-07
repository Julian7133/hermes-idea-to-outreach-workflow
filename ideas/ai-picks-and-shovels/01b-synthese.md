# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert
| Einwand | Klasse | Antwort |
|---|---|---|
| Gratis-OSS (Ollama 172k, vLLM) ist $0 Software + 20GB-Hetzner €184 — Preisanker drückt Zahlungsbereitschaft | **Weich** | Trifft breiten Markt, aber nicht regulierten Rand: Dort zahlt Kunde für Audit/DSB-Papier + Wartbarkeit, nicht für Software. Überarbeiteter Plan zuspitzt genau darauf. |
| EU-API mit AVV (Azure EU, Vertex Frankfurt, Mistral) löst DSGVO für Mehrheit ohne Self-Host | **Weich** | Korrekt für Mehrheit — deshalb kein breites Tool, aber verschärft den Souveränitäts-Wedge für Kanzlei/Klinik, wo AVV + Drittlandtransfer nicht reicht. |
| Cloud GPU per-second (RunPod $0,69–$2,89/h, Serverless) macht Flat-Ansatz angreifbar | **Weich** | Preisdifferenz ist real, aber nicht das Kaufargument im regulierten Segment (Fixpreis + Nachweis schlägt Sekundenpreis). Unverändert weich. |
| Nur schmaler Finetune-Bedarf — meist reicht RAG auf API | **Weich** | Mehrheit ja; aber Nische "Mandanten-/Patienten-Daten finetunen" existiert und ist wiederkehrend (Modell-Updates). Zuspitzung auf diese Nische löst Einwand, statt ihn zu ignorieren. |
| Cold Outreach nicht skalierbar (technisches Signal nötig) | **Weich** | Kanalwechsel: statt breiter Kaltmail → SEO/Content ("Hetzner GPU LLM DSGVO"), Community/Kammer-Empfehlung. Outreach bleibt schwach, Produktkanal wird tragfähig. |
| Rechtlich/technisch unmöglich (z. B. §6 StBerG, fehlende GPU) | **Hart** | **Keiner.** Kein hartes Verbot; Hetzner GPU verfügbar, Lizenzen (Llama/Mistral/Qwen Apache/MIT) erlauben kommerziellen Betrieb. Solo-Betrieb haftungsseitig eingrenzbar (kein 24/7-SLA). |

## Harte Einwände
Keine — kein Abbruch. Alle Einwände sind weich oder unbelegt und damit überarbeitbar.

## Überarbeiteter Plan
**Fokuswechsel B → C (Zuspitzung auf regulierte Nische):** Statt "ein Modell, irgendein DACH-Team" jetzt **"Souveräner Modellbetrieb für Kanzleien/WP (30–100 MA) + Kliniken/Praxen mit Mandanten-/Patientendaten"** — genau die Teilmenge, in der AVV + EU-Region laut DSB nicht reicht und eigenes Audit-Dokument Pflicht wird.

**Was sich ändert vs. 00c:**
1. **Käufer schärfer:** Nicht "Softwarehaus mit Prototyp", sondern **IT-Leiter einer 40-MA Kanzlei/WP**, der dem DSB einen Nachweis schuldet: "wo läuft welches Modell mit welchen Mandantendaten, wer hat wann zugegriffen, wie ist gelöscht?" — Auslöser ist DSB-Anfrage oder Mandantenvertrag mit Datenklausel. Gleiche Person, aber engerer Anlass → höhere Dringlichkeit.
2. **Kanalwechsel (K4):** Cold Outreach bleibt 3/10 — wird nicht erzwungen. Vertrieb stattdessen über **SEO/Content ("Kanzlei LLM DSGVO Hetzner", "Patienten-KI EU hosten") + Kammer/Verband + Empfehlung** — genau die Kanäle, über die DSB-pflichtige Betriebe heute Berater finden. Das ist nach K4 zulässiger bezahlbarer Weg, auch wenn Hermes-Outreach nein sagt.
3. **Schnittwechsel — kleinster Beweis bleibt, aber Output wird Audit-zentriert:** Gleiche Eingabe (Modell + GPU-Ziel), aber Ausgabe ergänzt um **DSGVO-Artefakte**: Verarbeitungsverzeichnis-Auszug, Zugriffslog-Export (CSV), Löschkonzept-Snippet, Art.30/35-Nachweis-Template. Das ist das, wofür regulierte Kunden zahlen — nicht für Token/s.
4. **Preis unverändert (€2.400 + €490), aber Begründung verschiebt sich:** Nicht "spart MLOps-Stunden", sondern "erspart DSB-Freigabe + Audit-Risiko" — struktureller Zwang statt Effizienz.
5. **Rollenwechsel-Option offengehalten:** Verworfene Ausprägung A (Werkzeug CLI) bleibt als späterer Extrakt denkbar, sobald 3–5 Kanzlei-Setups dasselbe Playbook nutzen — dann CLI aus Playbook extrahieren statt jetzt bauen.

**Nicht erlaubt vermieden:** Einwand nicht ignoriert, Plan nicht verwässert ("für alle KI-Nutzer") — im Gegenteil verengt.

## Neue Bewertung
- outreach_score: **3/10** (vorher 3) — bleibt NO-GO für Hermes. Zuspitzung ändert Reichweite nicht; Cold Outreach ist strukturell falscher Kanal. Bewertung ehrlich nicht angehoben.
- product_score: **6/10** (vorher 5) — **klarer Wedge in enger Nische, benennbarer Käufer, solo baubar.** Souveräner, auditierbarer Ein-Modell-Betrieb auf Hetzner-EU + DSB-Papier für Kanzlei/WP ist nach K2/K3 tragfähig: Gratis-OSS deckt Tool, aber nicht Haftung/Nachweis/DSGVO-Artefakte; EU-API deckt Mehrheit, aber nicht den regulierten Rand. Unfairer Vorteil (K6) trägt hier (Agent/Hetzner/Quantisierung). Jenseits dieser Nische bleibt 5/10 — Mix ergibt 6 für die zugespitzte Fassung.
- buildable: **yes** (Schwelle ≥6 erreicht)

## Ehrliches Fazit
Die Überarbeitung hat den Einwand nicht verschoben, sondern präzisiert: Der breite "KI an den richtigen Ort bringen"-Anspruch ist als Produkt zu dünn (Gratis + EU-API gewinnen), aber der schmale **"auditierbarer Betrieb für regulierte DACH-Nische auf Hetzner-EU"** ist ein echtes, wenn auch kleines Geschäft mit wiederkehrendem Retainer — gutes Produkt (6), falscher Hermes-Kanal (3). Genau der in K4 beschriebene erwartbare Fall. Wachstum hängt daran, ob genug Kanzleien wirklich finetunen (nicht nur RAG) und ob DSBs den Self-Host-Nachweis wirklich fordern — sonst bleibt es Boutique mit 8–15 Kunden-Deckel.
