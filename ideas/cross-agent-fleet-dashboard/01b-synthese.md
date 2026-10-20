# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert
| Einwand | Klasse | Antwort |
|---|---|---|
| Kernprämisse „niemand bedient Multi-Tool-Nutzer" widerlegt durch `oguzhnatly/fleet` (MIT, 6+ Runtimes, adapterbasiert) | Weich | Wettbewerb ist kein harter Kill (K2), aber hier trifft er den Kernnutzen direkt (Status-Board). Suche nach DACH-/Support-/SLA-Wedge verlief leer — Dev-Zielgruppe braucht keinen davon. |
| Alle direkten Cross-Tool-Dashboards sind gratis (MIT) — €19/Mo ohne Beleg, nativer Ersatz je Tool ebenfalls im Abo enthalten | Weich | Gratis-Anker ist Preisdruck, kein Rechts-/Technik-K.o. (K3). Überarbeitung müsste Käufer wechseln (wer zahlt trotz Gratis-Alternative?) oder Schnitt wechseln (kleinerer, nicht-gratis Job). |
| Cold Outreach ungeeignet — Persona (Multi-Tool-Solo-Dev) nicht über Firmenlisten erreichbar, Devs ignorieren Cold Email | Weich | Kanal-Einwand, nicht Produkt-K.o. (K4). Realist hatte bereits Community/SEO als passenden Kanal benannt — Cold-Outreach-Fail ist Vertriebsurteil, kein Produkturteil. |
| TAM extrem schmal (bb 3,3k Stars, Multi-Tool-Schnittmenge ~150–300) | Weich | Nischen-Argument, nicht hart (kein „kein Käufer"). Aber verschärft CAC/CLV-Problem. |
| Kategorie nicht „boring" — Hype-Zone, viele Bastler können Dashboard in Wochen bauen | Weich | Defensibility-Einwand, überarbeitbar durch Zuspitzen. |

## Harte Einwände
Keine. Kein rechtliches Verbot, keine technische Unmöglichkeit, und es existiert mindestens ein (wenn auch gratis bedienter) Käuferkreis. Kein Abbruch.

## Überarbeiteter Plan
Geprüfte Züge gegen die weichen Einwände:

- **Zuspitzen geprüft:** Auf bb-native Tiefe (Eltern-Kind-Thread + Environment-Graph + Workflow-Runs) zuspitzen würde zum `project-status-mindmap`-Wedge zurückführen — dort lag product_score 6, aber outreach ebenfalls 2. Das ist kein neuer Plan, sondern Rückzug auf die Vorgängeridee. Verworfen — die Synthese soll nicht die alte Idee wiederholen.
- **Käuferwechsel geprüft:** Team-Lead/Engineering-Manager mit 5–10 parallelen Agenten (statt Solo-Dev) als Zahler für Fleet-Governance (Kosten-/Loop-Kill-Switch, Budget-Caps). Dieser Job wird aber bereits von `oguzhnatly/fleet` (reliability scoring, routing) und kommerziellen Plattformen (Cursor Teams, Devin Teams) bedient — kein belegter Zahl-Wedge für reinen Status-Viewer auf Team-Ebene.
- **Kanalwechsel geprüft:** Von Cold Outreach auf Community/Content/SEO wechseln — das ist der realistische Kanal (Realist hatte ihn benannt). Hebt den outreach_score nicht (Hermes misst Cold Outreach), könnte aber den product_score stützen, wenn Distribution über bb-Plugin-Marktplatz als Lead-Magnet (gratis) funktioniert.
- **Schnittwechsel gewählt:** Einziger tragfähiger Zug: Scope von „€19/Mo SaaS für Status" auf **„kostenloses bb-Plugin / Lead-Magnet für pragmatic-ai-systems"** reduzieren — kein Monetarisierungsanspruch, reiner Distributions-/Reputationsnutzen. Dann entfällt der Gratis-Anker als Kill (man konkurriert nicht um €19, sondern um Aufmerksamkeit), und der bb-Vorteil wird wieder zum Wedge (kein anderes Board kennt bb-Environments/Workflow-Runs tief). Das ist aber kein eigenständiges Geschäft mehr, sondern ein Marketing-Asset — wie `skill-tester-tool` (dort product 6 als Lead-Magnet).

**Konsequenz:** Als bezahltes Solo-SaaS bleibt kein tragfähiger überarbeiteter Plan übrig, der die drei weichen Einwände gleichzeitig löst. Die Überarbeitung bestätigt den Befund: Gutes Bastelprojekt für Eigenbedarf + Lead-Magnet, kein Cold-Outreach-fähiges Geschäft.

## Neue Bewertung
- outreach_score: 3/10 (vorher 3) — unverändert; Kanalwechsel auf Community ändert Hermes-Outreach-Score nicht, Cold Outreach bleibt ungeeignet.
- product_score: 4/10 (vorher 4) — unverändert; als Gratis-Lead-Magnet wäre der Score höher (5–6 wie `project-status-mindmap`), aber als bezahltes Werkzeug (€19/Mo) bleibt der Markt besetzt und der Zahl-Wedge unbelegt. Die K5-Definition 4–5 („besetzter Markt, aber plausibler Wedge benennbar") trifft genau: Wedge = bb-Tiefe + poliertes Board — schmal, nicht verifiziert zahlungswillig.
- buildable: no (product_score < 6)

## Ehrliches Fazit
Die Überarbeitung hat nichts gerettet — sie hat präzisiert, warum nichts zu retten ist. Der werkzeugneutrale Status-Viewer ist als Produktidee von einem 12★-MIT-CLI überholt, bevor er gebaut wurde, und als bezahltes Solo-SaaS ohne belegten Preis. Als kostenloses bb-Plugin wäre er sinnvoll, aber dann ist er kein Geschäft, sondern ein Marketing-Asset — und dafür existiert bereits `project-status-mindmap` als gebauter Vertreter.
