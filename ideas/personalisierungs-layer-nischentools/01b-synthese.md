# 01b — Synthese (eine Überarbeitungsrunde)

## Einwände sortiert

| Einwand (aus 01) | Klasse | Antwort |
|---|---|---|
| **Kanal: Handwerk kauft über Empfehlung/Innung/Großhandel, nicht kalt — Cold-Outreach-Auto-Kill droht selbst bei gutem Produkt** | **Weich** (Kanal ungeeignet, nicht "kein Käufer") — per K4 ist das ein Vertriebskanal-Urteil, kein Produkt-Todesurteil. | Kanalwechsel: Realist hatte bereits Empfehlung/Innung/Großhandel als primären Kanal benannt; Synthese macht das verbindlich — kein Cold-Outreach-Send als Validierung, sondern 10 Warm-Intros via Kammer/Großhandel. |
| **Hersteller-Abhängigkeit: Plancraft/Streit-API/Webhook nicht garantiert, Lieferaufwand könnte explodieren** | **Weich** (technische Machbarkeit unbewiesen, nicht "unmöglich") — pds hat REST-API belegt, Plancraft/Streit haben DATEV/GAEB/DATANORM/WEBHOOK belegt, aber Tiefe pro Tool offen. | Schnittwechsel + Verengung: Nur noch 1 Träger (Plancraft SHK) mit verifiziertem Export-Stack; erster Auftrag nur annehmen, wenn Testzugang + API/Webhook vor Discovery bestätigt. Umfang auf 2 Workflows kappen (Foto→Auftrag, Angebot→XRechnung), keine UI-Automation. |
| **Retainer-Quote unbewiesen: €390/Monat wirkt wie "noch eine Miete" auf Träger-Abo (€60–250) — Risiko One-Off ohne Retention** | **Weich** (Preisdruck/Annahme, nicht rechtlich/technisch tot) | Preis- + Schnittwechsel: Setup bleibt Fixpreis (€3.200 Referenz → €3.900 danach), Retainer optional und an messbaren Anlass koppeln ("wenn Preise/Vorlagen sich ändern, 3 h/Monat inkl.") statt Dauer-Abo; alternativ €49/Monat Micro-Service für Foto→Auftrag als Fallback. |
| **"Es gibt schon kraft eq / itsm / LUNDS / dashandwerk — Markt besetzt"** | **Unbelegt als Kill** — Wettbewerber wurden gefunden, aber keiner verkauft 10-Tage-Layer auf *bestehenden* Plancraft/Streit zum Fixpreis (kraft eq verkauft neue Software, itsm ergänzt pds projektbasiert, LUNDS eigenes Produkt). Wettbewerb ≠ kein Wedge (K2); Wedge-Suche nach X/Y/Z ist dokumentiert. | Streichen als Kill-Grund; als Kontext behalten — Wedge ist "letzte Meile im bestehenden Tool", nicht "Tool neu bauen". |
| **"1,5 h/Tag Umweg ist ASSUMPTION, nicht belegt"** | **Unbelegt** (Zahl ist ASSUMPTION: markiert) — aber Schmerzrichtung ist belegt: "mehrere Stunden/Woche durch fehlende Schnittstellen", Stakk/Bitkom/Handwerk-Quellen. | Im überarbeiteten Plan als billiger Test vor Bau fest verankert (10 Gespräche, Schwelle 4/10 mit 60-Min-Umweg), nicht als bewiesene Zahl verkauft. |

## Harte Einwände

Keine. Kein rechtliches Verbot, keine technische Unmöglichkeit, nachweislich existiert ein Käufertyp (12–30 MA SHK mit Plancraft/Streit, leidet an Foto→Auftrag + E-Rechnung, zahlt bereits Abo + Berater-Tagessatz). Bedingungen für harten Abbruch nicht erfüllt — Überarbeitung zulässig.

## Überarbeiteter Plan (genau eine Runde — nur was sich gegenüber 00c ändert)

**1. Zuspitzung Träger + Gewerk:** Nur noch **Plancraft SHK 12–22 MA** (statt "1–2 Tools, 3 Gewerke"). Grund: Plancraft-Preise/API-Landschaft ist als einzige Live-Recherche vollständig verifiziert (>30k Betriebe, Preise, DATEV/GAEB/DATANORM, Premium-Einrichtung), HERO/Streit breiter aber unschärfer. Wenn Plancraft-SHK trägt, gelten Vorlagen; wenn nicht, ist der Test schnell falsifiziert.

**2. Schnittwechsel kleinster Beweis:** Reduziert auf **2 Workflows** (statt 3–5): (a) Foto (WhatsApp/eMail) → Plancraft-Auftrag/Angebot, (b) Angebot → XRechnung/ZUGFeRD + Versand + DATEV-Export-Hilfe. Materialpreis-Import nur falls Pro (DATANORM vorhanden), sonst Fallback CSV. Keine allgemeine Automatisierung, keine UI-RPA. Lieferzeit 8–10 Tage, nur nach bestandenem API/Webhook-Check.

**3. Kanalwechsel — Cold Outreach streichen:** Validierung und Vertrieb laufen über **Innung/Kammer/Großhandel-Empfehlung** (5 Warm-Intros) + 1 Loom-Demo ("Plancraft Aufmaß in 2 Min") für SEO/Community (Plancraft-Facebook-Gruppe, SHK-Forum). Hermes-typischer 30-Send-Cold-Test wird explizit als ungeeignet markiert — RAT ist 10 Gespräche, nicht 30 Mails. Damit wird der Outreach-Einwand nicht ignoriert, sondern als Kanal-Ungeeignetheit akzeptiert und umgangen.

**4. Käuferwechsel im Pricing:** Setup €3.200 Fix (Referenz) → €3.900, **Retainer optional** (€290/Monat Light: 1,5 h + WhatsApp; €390 nur bei Bedarf). Budget-Anker explizit: BAFA-Türöffner (190 €/h-Beratung, bis 80 %/2.800 € Zuschuss) parallel anbieten — reduziert Erst-Hürde und nutzt bestehenden Förderrahmen. Falls Retainer verweigert: Micro-SaaS €49/Monat nur Foto→Auftrag als zweiter Pfad.

**5. Riskanteste Annahme härten:** Vor jedem Build 10 Gespräche (Schwelle: 6/10 beschreiben 60-Min-Umweg, 2/10 sagen "dafür zahle ich €3k ohne Tool-Wechsel"). Kein Code vor diesem Gesprächsnachweis — Lieferfähigkeit ist kein Risiko mehr, nur Marktbestätigung.

Nicht erlaubt und nicht getan: Einwand ignoriert, Plan verwässert ("für alle Handwerker irgendwas mit KI"), oder Prämisse erfunden.

## Neue Bewertung (nach Überarbeitung)

- **outreach_score: 3/10** (vorher 3/10) — unverändert: Cold Outreach bleibt strukturell unpassend für SHK-Handwerk (Empfehlung/Innung dominiert). Revidierter Plan umgeht das, indem er Cold Outreach als Kanal aufgibt; für Hermes-Pipeline bleibt es NO-GO, für Pull/Empfehlung ist es kein K.-o.
- **product_score: 6/10** (vorher 5/10) — **+1.** Begründung nach K5-Anker (6 = klarer Wedge, benennbarer Käufer, solo baubar): Wedge "letzte Meile im bestehenden Plancraft SHK" ist nach dokumentierter Suche (kein Solo-Fixpreis-Layer gefunden, Hersteller-Einrichtung nur Premium) klar benennbar; Käufer (SHK 12–22 MA, Plancraft seit ≥1 Jahr, Foto→Auftrag + E-Rechnung) ist eng und auffindbar via Kammer/Großhandel; solo baubar in 8–10 Tagen mit bb/openclaw (K6-Vorteil greift voll — Agent-Orchestrierung macht 10-Tage-Lieferung erst wirtschaftlich); Kanalwechsel liefert bezahlbaren Weg zum Kunden auch ohne Cold Outreach (Empfehlung + Loom-SEO + BAFA-Türöffner). Kein unfairer Regulierungs-Zwang auf 8/10, aber normale gute Solo-Dienstleistung mit Wettbewerb — 6 ist ehrlich, 5 war zu niedrig nach Verengung.
- **buildable: yes** (product ≥6) — jedoch **nicht gebaut** per Auftrag (Bau-Track gesperrt; product 6 würde sonst bauberechtigen).

## Ehrliches Fazit

Die Überarbeitung hat den Kern-Einwand (Cold-Outreach-Falle) nicht widerlegt, sondern **akzeptiert und umgangen** — das ist der ehrliche Schritt: Als Hermes-Cold-Outreach-Case bleibt die Idee tot (3/10), als Empfehlungs-Dienstleistung in enger Plancraft-SHK-Nische wird sie tragfähig (6/10). Die zweite Gefahr (Retainer-Quote) ist nur verschoben, nicht gelöst — sie hängt jetzt am billigen Test vor Build. Wenn 10 Gespräche den 60-Min-Umweg nicht bestätigen, fällt auch die 6.
