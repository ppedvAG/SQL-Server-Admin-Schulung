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

--Medium= Sicherung (kann auch mehrere Sicherung enthalten)

--Diff Sicherung
BACKUP DATABASE [ShopDB] TO  DISK = N'D:\_BACKUP\ShopDB.bak' WITH  DIFFERENTIAL 
, NOFORMAT, NOINIT,  NAME = N'ShopDB-Diff'
, SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

--Log
BACKUP LOG [ShopDB] TO  DISK = N'D:\_BACKUP\ShopDB.bak' WITH NOFORMAT
, NOINIT,  NAME = N'ShopDB-TLog'
, SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

-- V D TTT D TTT D TTT



-----Fall1 : Logischen Fehler
--Daten wurde versehentlich fehlerhaft manipuliert

--Restore geht eigt nur auf einen Zeitpunkt zurück
--Idee : DB soll weiterlaufen, aber Daten muss man korrigieren

--Backup = Online  Restore = Offline

--Workaround: DB unter anderern Namen restoren zu einem Zeitpunkt kurz vor Fehler
--





use shopdb


select * into mess from sysmessages

update mess set error = error +1






--Fall 2 : auf anderen Server restoren
--V D TTT
--auf Pfade aufpassen
--Rechte des Dienstes (Servicekoten greifen auf ext Ressourcen zu )


--Fall 3: DB muss restore werden zu einem best Zeitpunkt
--  11:14:00
--mit geringst möglichen Datenverlust

--die Daten von 11:15 (letzte Backup) bis 11:48 (jetzt) sollen nicht verloren gehen

--1.  User runterkicken
---2. Logsicherung (dauert 5 min)
---3. Restore

--DB aus Dateien wiederherstellen


---Fall 4 Wen man weiss


--SNAPSHOT


-- Create the database snapshot
CREATE DATABASE SNNAME ON
( NAME = <Database_Name, sysname, Database_Name>, FILENAME = 
'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Data\<Database_Name, sysname, Database_Name>_<Snapshot_Id,,Snapshot_ID>.ss' )
AS SNAPSHOT OF OrigDB;
GO


create database sn_1215 on
(
Name = ShopDB, --logische Name der DAtendatei
Filename='D:\_HRDB\sn_1215.mdf' --neue Datei des Snapshot
)
as snapshot of shopdb

--Restore vom Snapshot
--es darf keiner auf dem Snapshot sein und keiner auf der Shopdb

use master;

restore database shopdb
from database_snapshot='sn_1215'



/*
DB Größe: 2 GB
Datenverlust in Zeit: 12h
Ausfallzeit in:  30min bis 60min

Arbeitszeiten: Mo - FR
Azeit am Tag: 6 - 20 Uhr

Import von Daten 0 bis 200


T.. brauch ich nicht wg Diff Sicherung und weil zu  wenig TX stattfinden..
--> Wiederherstellungmodel: Einfach

V: täglich  4 Uhr  (in weniger als 1 min fertig)
D: alle 30min D (630 bis 2030)








/*
DB Größe: 20 GB
Datenverlust in Zeit: 30min
Ausfallzeit in:  30min bis 60min

Arbeitszeiten: Mo - FR
Azeit am Tag: 6 - 20 Uhr

Import von Daten 0 bis 200


V: täglich ausser Sa und So  400
D: alle 2 Ts 705-- alle 1h 2005
T: alle 30min.. 630 bis 2030


DB Größe: 500 GB
Datenverlust in Zeit: 15min
Ausfallzeit in:  15min
---> Hochverfügbarkeit (Spiegeln, HOchverfügbarkeitsgruppen, Cluster nur unter Umständen)


Arbeitszeiten: Mo - FR
Azeit am Tag: 6 - 20 Uhr

Import von Daten 0 bis 200




*/