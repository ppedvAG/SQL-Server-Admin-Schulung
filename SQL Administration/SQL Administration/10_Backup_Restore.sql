/*
Was kann passieren?


1. evtl gel�scht oder auch vers. falsch ge�ndert--> logischen Fehler

2. DB defekt korrupt --> Restore

3. Server weg, aber HDD noch da
             , nur ein Teil der HDDs noch da
			 --> evtl mit den Dateien der DB arbeiten statt Restore
			 --> evtl auf anderern Server restore

4. Wenn ich w�sste, dass gleich was passiert
	--> .. geht cooler

	select * into t1 from kunden

Wiederherstellungsmodel


pro DB: Full  Bulk  Simple 

Einfach (simple)

INS UP DEL --> Tlog --> nach Commit und Checkpoint (--> mdf)
Buld nur rudiment�r
das TLog entfernt automatische commited Daten
--> keine Sicherung des Logfile

Massenprotokolliert

wie bei einfach: INS UP DEL
Bulk rudiment�r
aber es wird nichts aus dem Tlog entfernt
--> MUSS! Sicherung des Logfiles entfernt die Commited Eintr�ge--> Backup
restore m�glich zum Zeitpukt der Sicherung des Tlog


Vollst�ndig
protokolliert sehr ausf�hrlich , auch Bulk
restore aus Sekunde genau m�glich
--w�chst deutlich schneller
--> MUSS: Backup des Logfile



Jede DB hat per default Full, kommt von der Model


Wann Full... meist ProduktionsDBs

Wann Simple.. TestDb


Wann Bulk: es kommt nicht auf die Sek an 


--> 2 Wichtige Fragen

A) Wie gro� darf der Datenverlust sein?
B) Wie lange darf die DB stehen?







V  Vollst�ndige Sicherung
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
V .. so oft wie m�glich

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