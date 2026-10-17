# 01 — Devalidation Report

## CLEARFRAME (Kurzprüfung)
- **Customer:** Controlling-/Finanzteam eines Versicherers oder anderen datenschutzsensiblen Mittelständlers mit stabilem, wiederkehrendem Excel-Abgleich.
- **Job:** Zwei Tabellen zusammenführen, Abweichungen nach nachvollziehbaren Regeln markieren und ein prüfbares Ausnahmeprotokoll erstellen.
- **Existing solution:** Excel-Formeln, manuelle Kontrollen, Power Automate/RPA, BI-/Datenintegrationswerkzeuge oder spezialisierte Finanzreporting-Software.
- **Alternative cost:** WWK nennt ca. 1,5 Personentage pro Monat und Fehleranfälligkeit; das ist ein konkreter Kundenschmerz aus dem bereitgestellten Kontext.
- **Reachability:** WWK ist ein sehr passender vorhandener Organisationskontakt; die Person/der konkrete Entscheider wird im Kontext nicht benannt. Einstieg über einen abgegrenzten MVP ist bereits als Angebotsspanne besprochen.
- **Frequency:** Monatlich und damit wiederkehrend.
- **Revenue:** 1.600 € für einen 2-Tage-MVP (Kontext) bis 16.000 € mögliche Ausbaustufe; ASSUMPTION: Start bei 1.600–2.500 € und separater Ausbau nach Abnahme.
- **Advantage:** Kombination aus Prozessklärung, lokaler Ausführung, prüfbarer Abweichungslogik und direkter Übergabe; direkter Fit zu Datenschutzanforderung.
- **Moat-later:** Wiederverwendbare Regel-/Testbibliothek für konkrete Controlling-Abgleichmuster, sofern keine kundenspezifische Sonderlogik dominiert.
- **Effort:** ASSUMPTION: 2–5 Arbeitstage für den MVP, sofern Beispieldateien und fachliche Regeln zeitnah vorliegen.

## Verdict
- **Score:** 8/10
- **Go/No-Go:** GO
- **One-line reason:** Der WWK-Fall hat bereits quantifizierten monatlichen Aufwand, Fehlerproblem, lokalen Betriebsbedarf und eine genannte MVP-Angebotsspanne; technische und fachliche Abnahme bleiben zu klären.

## CLEARFRAME + Market Reality
- **TAM (sanity, not spurious precision):** ASSUMPTION: Erreichbar sind Fachbereiche mit regelmäßigem Tabellenabgleich in Versicherungen/Finanzdienstleistungen und weiteren regulierten Branchen. Das ist ein wiederholbarer Dienstleistungsmarkt, aber kein eigenständig bewiesener lokaler-KI-Massenmarkt.
- **Saturation / competition:** Microsoft Power Automate verkauft Premium-Automatisierung; konkrete deutsche Lizenzpreise sind auf der offiziellen Seite dynamisch/teilweise konfigurationsabhängig ([Microsoft Preise](https://www.microsoft.com/de-de/power-platform/products/power-automate/pricing)). Spreadsheet Server integriert Excel in Finanzreporting und verbindet es laut Anbieter mit 140+ ERPs ([Spreadsheet Server Beschreibung](https://www.capterra.com/p/39269/Spreadsheet-Server/)). Alteryx ist ein etabliertes Analyse-/Workflowprodukt; veröffentlichte öffentliche Beschaffungspreise reichen je nach Lizenz und Lieferant in den Tausenderbereich jährlich ([G-Cloud Preisbeispiel](https://assets.applytosupply.digitalmarketplace.service.gov.uk/g-cloud-14/documents/705601/398259017276895-pricing-document-2024-05-07-1233.pdf)). Diese Produkte lösen angrenzende Probleme; der enge lokale Dateiabgleich bleibt als Integrationsdienstleistung differenzierbar, nicht als unerfüllte Softwarekategorie.
- **Category maturity & growth:** Growth bei Finanzprozessautomatisierung, jedoch reife Werkzeuglandschaft. KPMG meldet für deutsche Versicherungsfinanzfunktionen viele teilautomatisierte Insellösungen, weiterhin manuelle Reportings und fehlende Ende-zu-Ende-Orchestrierung ([KPMG Benchmark](https://kpmg.com/de/de/branchen/finanzbranche/versicherungen/so-digital-arbeitet-die-finanzfunktion-in-der-versicherungsbranche.html)). PwC berichtet, dass 80 % der befragten Versicherer Automatisierung und Integrationsfähigkeit als wichtige Transformationsziele nennen ([PwC](https://www.pwc.de/de/pressemitteilungen/2024/pwc-studie-versicherungskernsysteme-im-wandel.html)).
- **CAC vs CLV sanity:** Bei der im Kontext genannten Einstiegsspanne ab 1.600 € und direkter WWK-Beziehung ist Akquiseaufwand wahrscheinlich vertretbar (ASSUMPTION). Mehrere ähnliche Dateien/Abteilungen können Folgeaufträge erzeugen, aber Wiederholung ist nicht bestätigt. Security-Review kann Verkaufszeit stark verlängern.
- **Difficulty score:** 5/10 — einfacher Abgleich ist überschaubar; fachliche Ausnahmeregeln, Belegbarkeit, Datenschutzfreigabe und Einbettung in den lokalen Desktop erhöhen den Aufwand.
- **Key risks:** 1) Regeln/Dateien ändern sich häufig; 2) automatische Abweichungslogik wird als fachlich bindend missverstanden; 3) lokale Installation oder Audit-Anforderungen blockieren einen 2-Tage-MVP.

## Cited market signals (researched 2026-10-17)
- KPMG untersuchte Automatisierung von Abschlussprozessen deutscher Versicherungsunternehmen; die Zusammenfassung nennt teilautomatisierte Insellösungen, oft manuelle Reportings und fehlende Ende-zu-Ende-Automatisierung. Die Studienpopulation deckt laut KPMG erhebliche Teile der deutschen Versicherungsprämien ab: [KPMG Benchmark](https://kpmg.com/de/de/branchen/finanzbranche/versicherungen/so-digital-arbeitet-die-finanzfunktion-in-der-versicherungsbranche.html).
- PwC meldet aus 41 DACH-Versicherern, dass für 80 % Automatisierungsgrad und Integrationsfähigkeit wichtige Transformationsziele sind: [PwC Pressemitteilung](https://www.pwc.de/de/pressemitteilungen/2024/pwc-studie-versicherungskernsysteme-im-wandel.html).
- Microsoft bietet Power Automate Premium; Preis-/Lizenzmodell und Funktionsumfang sind auf offizieller Seite beschrieben, der konkrete lokalisierte Preis wird im Abruf nicht verlässlich ausgegeben: [Power Automate Preise](https://www.microsoft.com/de-de/power-platform/products/power-automate/pricing).
- Spreadsheet Server bietet Excel-basiertes Finanzreporting mit ERP-Verbindungen (140+ laut Anbieter-/Produktprofil), direkte Alternative für strukturierte Finanzteams: [Spreadsheet Server Profil](https://www.capterra.com/p/39269/Spreadsheet-Server/).
- Kundenspezifischer Trigger: WWK Sales Controlling benötigt laut Nutzerkontext 1,5 Personentage/Monat für zwei Excel-Dateien, fehleranfällig; lokale KI ist aus Datenschutzgründen gefordert. Kontext nennt 1.600 € (2-Tage-MVP) bis 16.000 € als Angebotsspanne.
- **ASSUMPTION:** keine öffentliche Studie quantifiziert die Kaufbereitschaft für einen lokal installierten Assistenten für genau diese Excel-Abgleiche; die WWK-Angaben sind das stärkste vorliegende Signal.

## Boring & Trends check
- **Boring/niche defensibility:** Ein monatlicher Zahlenabgleich mit Ausnahmeprotokoll ist unsexy und durch Fachregeln, Dateiformate und Freigabeprozess eng begrenzt. Als servicebasierter, übergebbarer Workflow kann das eine Solo-Nische sein. Als generische KI für Excel wäre es zu breit und gegen Office-/RPA-/Finanztools schlecht abzugrenzen.
- **Sociological trend:** **KI-Nutzung breitet sich in Unternehmen aus, während Vertrauen und Datenfreigabe konkrete Anforderungen bleiben.** KfW berichtet, dass der Anteil deutscher KMU mit KI-Einsatz von 4 % (2016–18) auf 20 % (2022–24) stieg. Für diesen Fall macht die breitere Adoption eine Automationsdiskussion anschlussfähiger; WWKs Forderung nach lokalem Betrieb bleibt kundenspezifisch, nicht aus der KfW-Statistik ableitbar ([KfW Research](https://www.kfw.de/About-KfW/Newsroom/Latest-News/Pressemitteilungen-Details_880896.html)).
- **Technological trend:** **Zunehmende lokale Bereitstellung von Open-Source-KI und Automatisierungswerkzeugen.** Bitkoms Open-Source-Monitor 2025 befragt mehr als 1.100 Unternehmen und behandelt auch transparente KI-/Open-Source-Nutzung. Das erweitert die Optionen, Regeln lokal auszuführen und nur erklärende Hilfen optional mit lokalem Modell zu ergänzen; für exakte Tabellenvergleiche bleiben deterministische Regeln nötig ([Bitkom Open-Source-Monitor 2025](https://www.bitkom.org/sites/main/files/2026-03/bitkom-study-report-open-source-monitor-2025.pdf)).

## Riskiest assumption test (RAT)
- **What to test next:** Mit den bereits vorhandenen WWK-Anforderungen (ohne neue Kontaktaufnahme) definieren, ob der 2-Tage-MVP deterministisch per Python/Excel-Regeln statt generativer KI abbildbar ist; anhand anonymisierter Beispieldateien und fachlich freigegebener Soll-Ausnahmen prüfen.
- **Kill signal:** Wenn Schlüssel/Spalten nicht stabil oder Abweichungen ohne manuelle Ermessensentscheidung nicht prüfbar sind, ist der kleine Festpreis-MVP nicht belastbar.

## Schnell-Umsatz-Check
- **Möglicher Käufer innerhalb 8 Wochen:** WWK Lebensversicherung, Sales Controlling; konkreter Entscheidername steht nicht im bereitgestellten Kontext, daher keine Person erfinden.
- **Kleinster verkaufbarer Erstlieferumfang:** 2-Tage-MVP für zwei Beispieldateien: lokale Einlesung, deterministischer Abgleich, Excel-Ausgabe mit Ausnahmeliste und kurzer Übergabe; 1.600 € (im Kontext genannte Angebotsspanne).
- **Demo muss zeigen:** (1) zwei Beispieldateien lokal einlesen, (2) Schlüssel normalisieren und Treffer/Abweichungen trennen, (3) Ausnahmeprotokoll mit nachvollziehbarem Grund erzeugen, (4) Ergebnis als Excel-Datei zurückschreiben, (5) reproduzierbaren Lauf ohne Rohdaten-Cloudtransfer demonstrieren.
- **Demo-Aufwand:** ASSUMPTION: 8–12 Stunden mit synthetischen Daten; Datenschutz-/WWK-Umgebungsintegration nicht enthalten.

## Notes / assumptions
- ASSUMPTION: Demoaufwand und Folgeerlöse sind Schätzungen; 1.600 € ist aus Nutzerkontext als besprochene Angebotsspanne übernommen, nicht als beauftragter Umsatz.
- Kein Stage-2-Artefakt und keine Kontaktaufnahme in diesem Auftrag.
