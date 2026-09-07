# 01b — Synthese (eine Überarbeitungsrunde)

> Walt-Disney-Methode Abschluss. Kritiker greift Realistenplan 00c an. Genau eine Überarbeitung erlaubt.

## Einwände sortiert
| Einwand | Klasse | Antwort |
|---|---|---|
| Kanal-Mismatch: Hermes Cold Outreach erreicht Indie-Hacker nicht — Reichweite/KAC strukturell underwater | **Weich** | Kanalwechsel: Community/Content/TinyLaunch statt Kaltmail. Ändert outreach_score nicht (Hermes misst nur Cold Outreach), hebt aber product_score-Begründung (payable channel existiert). |
| AI-generierte Apps flooden Stores, Guideline 4.2/4.3/5.1.2, 84% Submissions-Anstieg, 371k Spam-Rejections | **Weich** | Schnittwechsel: Nur Web-Apps (Vercel/Supabase), kein App-Store-Build. Verhindert harte Store-Barriere, verschiebt Risiko auf SEO/Trust. |
| Kein bewiesener Zahlungs-Wedge für "wahllos pro Nacht" / 10 Apps à €290 | **Weich** | Zuspitzung: Von "wahllos" weg zu kuratierter Nische — entweder DACH-Longtail-Content-Gaps mit Eval oder "openclaw-anfällig in einer Branche" (z. B. Handwerk/Kanzlei). Verworfene Ausprägung C (Nische: OpenClaw-Anfälligkeits-Scanner) aktivieren. |
| Competition: Lovable/Bolt/Replit $25/Mo commodity, ShipFast $199 one-time | **Unbelegt** als Kill | Kein Kill — bestätigt nur Preisanker. Ist weich, nicht hart. Wettbewerb ist per K2 kein Kill ohne Wedge-Suche. Wedge-Suche (DACH-Gap, openclaw-Skill-Nische, fehlende deutsche Oberfläche) wurde durchgeführt, ohne zahlenden Beleg — deshalb bleibt Einwand weich. |
| "Proxy zwischen Idee und Geld" — Factory verkauft Wetten, nicht Treffer; Kunde braucht trotzdem Distribution | **Weich** | Rollenwechsel: Factory als Eigen-Portfolio (Julian betreibt, behält Treffer) statt Abo-Verkauf. Monetarisierung über Treffer-MRR, nicht über Dealflow-Abo. Verwandelt "Kunde zahlt für Wetten" in "Builder platziert eigene Wetten". |
| Gratis-Alternative: Jeder kann mit Lovable selbst bauen | **Weich (K3)** | K3 greift: Gratis ist Preisanker, kein Todesurteil. Bezahlter Wedge wäre Kuration + Evaluierung + Distribution-Angle, nicht das Bauen selbst. |

## Harte Einwände
Keine. Kein rechtliches Verbot, kein technisch Unmögliches, kein nachweislich nichtexistenter Käufer — Indie-Hacker als Käufer existiert, nur der Hermes-Kanal passt nicht.

## Überarbeiteter Plan
**Was sich gegenüber 00c ändert — mit Begründung je Änderung:**

1. **Zuspitzen (wahllos → kuratiert):** Statt "wahllos pro Nacht" kuratierte Pipeline: wöchentlich 3 statt täglich 1, jede App aus validierter DACH-Longtail-Gap (LowFruits/SERP Weakness) oder einer belegten openclaw-Wedge-Hypothese (z. B. "Lexoffice Belegerfassung via Agent für Steuerberater"). Begründung: "wahllos" maximiert Quantität, minimiert Trefferquote und rechtfertigt keinen Preis. Kuratierung ist der einzige Wedge.
2. **Kanalwechsel (Cold Outreach → Community/SEO):** Validierung nicht via 20–50 B2B-Kaltmails, sondern via IH/X/TinyLaunch-Posts + 20 DMs an Indie-Hacker mit Demo-Link. Begründung: Erreichbarer Kanal zur benannten Persona; Cold Outreach bleibt per Definition ungeeignet — outreach_score bleibt deshalb niedrig, product_score gewinnt aber an Ehrlichkeit.
3. **Rollenwechsel (Abo-Verkauf → Eigen-Portfolio primär):** Primärmodell wird "Julian betreibt Factory für eigenes Portfolio, verkauft Treffer, nicht Wetten". Abo (€290/Monat Dealflow) wird sekundäres Experiment nach 30 Tagen Eigenbetrieb mit Beweiskorpus. Begründung: Behebt "Proxy zwischen Idee und Geld" — Wert entsteht beim Treffer, nicht beim Keim-Verkauf.
4. **Schnittwechsel (App Store → Web-only):** Nur Web-Apps (Next.js + Supabase + Vercel), kein iOS/Android-Build, kein Guideline-4.2/4.3-Risiko. Begründung: Entfernt harten Store-Einwand für den MVP-Beweis; Mobile erst nach Web-Traction.
5. **Preis-Anpassung (experimentell):** Einzelkauf €19/Keim bleibt, Abo auf €149 Early-Bird für erste 5 Tester gesenkt — Begründung: Senkt Hürde für RAT (Zahlungsbereitschaftstest) und reflektiert, dass unkuratierter Strom weniger wert ist als kuratierter.

Nicht erlaubt: Einwand ignorieren. Alle weichen Einwände wurden beantwortet; Plan wurde nicht verwässert ("wir bauen halt irgendwas").

## Neue Bewertung
- outreach_score: **3/10** (vorher 3) — unverändert. Überarbeitung wechselt bewusst den Kanal weg von Cold Outreach; innerhalb Hermes-Metrik gibt es keinen Hebel, weil Persona per Design nicht kalt anschreibbar ist. Das ist ehrlich so festzuhalten per K4.
- product_score: **5/10** (vorher 5) — unverändert trotz Verbesserungen. Kuratierung + Eigen-Portfolio + Web-only heben Qualität und Ehrlichkeit, aber beheben nicht den Kern: Es gibt nach aktiver Wedge-Suche (DACH-Gap, openclaw-Nische, fehlende deutsche Oberfläche, Preis-/UX-Lücke für Dealflow) **keinen verifizierten zahlenden Beleg** für "10 Keime/Monat kaufen". Der Wedge bleibt plausibel ("kuratierte Wetten sind mehr wert als wahllose"), aber unbelegt — deshalb 5 (besetzter Markt, plausibler Wedge benennbar, Ausgang offen), nicht 6 (klarer Wedge). Eine 6 verlangt einen Beleg, den die Recherche nicht lieferte.
- buildable: **no** (product_score <6 → Schwelle nach STATE.json `buildThreshold: 6` nicht erreicht)

## Ehrliches Fazit
Die Überarbeitung löst die vermeidbaren Fehler (wahllos → kuratiert, App Store → Web, Abo-only → Portfolio-first) und macht die Idee ehrlicher und baubarer — aber sie verwandelt keinen unbelegten Wedge in einen belegten. "Mehr Wetten" ist erst wertvoll, wenn die Trefferquote nachweislich steigt; dafür fehlt der Beleg. Der Wert dieses Laufs liegt im klaren "gutes Produkt, falscher Vertriebskanal"-Befund (K4): Als Hermes-Cold-Outreach-Case tot (3/10), als solo baubares Werkzeug für Julians eigenes Portfolio ein offenes 5/10-Experiment — nur nicht zu €290/Monat wahllos, sondern kuratiert, web-only und zuerst für sich selbst.
