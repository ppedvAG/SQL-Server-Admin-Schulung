/*
Was kann passieren?


1. evtl gelöscht oder auch vers. falsch geändert--> logischen Fehler

2. DB defekt korrupt --> Restore

3. Server weg, aber HDD noch da
             , nur ein Teil der HDDs noch da
			 --> evtl mit den Dateien der DB arbeiten statt Restore
			 --> evtl auf anderern Server restore

4. Wenn ich wüsste, dass gleich was passiert
	--> .. geht cooler

	select * into t1 from kunden

Wiederherstellungsmodel


pro DB: Full  Bulk  Simple 

Einfach (simple)

INS UP DEL --> Tlog --> nach Commit und Checkpoint (--> mdf)
Buld nur rudimentär
das TLog entfernt automatische commited Daten
--> keine Sicherung des Logfile

Massenprotokolliert

wie bei einfach: INS UP DEL
Bulk rudimentär
aber es wird nichts aus dem Tlog entfernt
--> MUSS! Sicherung des Logfiles entfernt die Commited Einträge--> Backup
restore möglich zum Zeitpukt der Sicherung des Tlog


Vollständig
protokolliert sehr ausführlich , auch Bulk
restore aus Sekunde genau möglich
--wächst deutlich schneller
--> MUSS: Backup des Logfile



Jede DB hat per default Full, kommt von der Model


Wann Full... meist ProduktionsDBs

Wann Simple.. TestDb


Wann Bulk: es kommt nicht auf die Sek an 


--> 2 Wichtige Fragen

A) Wie groß darf der Datenverlust sein?
B) Wie lange darf die DB stehen?







V  Vollständige Sicherung
D  Differenzierende 
T  TLogsicherung



V
		T
		T
		T
	D
		T
		T
		T
	D
		T
		T
		T : 16:20

V komplette Sicherung 
letzte D diff zu V
T der Reihe nach
T
T

Was ist der schnellste Restore?
V .. so oft wie möglich

Wie lange dauert der Restore des vorletzten T?
dauert so lange wie die Anweisungen daurten

--auf keinen Fall: viele Ts


V
!		T
		T
		T

		T
		T
		T
		T
		T
		T : 16:20











*/