/*

SystemDBs

master
--Datenbanken
--Logins (am SQL Server)
--Konfiguration

Backup: logo


model
Vorlage f�r alle neuen DBs

�ndert man die Model, dann haben alle neuen DBs auch diese �nderung
--> Setttings

Backup der model: bei �nderungen

--> besser als Script
--Dokumentation...

ALTER DATABASE [model] SET RECOVERY SIMPLE WITH NO_WAIT
GO



msdb
DB f�r den Agent
jeder Job , jeder Zeitplan
Emailsystem


Backup: auf jeden Fall...!!



tempdb
temp Tabellen
Zeilenversionierung
IX

Backup : geht gar nicht




Wenn Replkation
distribution

--Wartingsplan.. regelm Sicherung 

13:15 gehts weiter
*/