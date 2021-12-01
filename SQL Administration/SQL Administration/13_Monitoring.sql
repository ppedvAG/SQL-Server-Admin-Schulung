--Monitoring


/*

akt Problem

1. Task Manager --> Ressourcemonitor  mslaugh.exe  teakids.exe
2. SQL Server --> Aktivitätsmonitor

--> Blick auf Wartetypen-- > wo sit das Problem grundsätzlich? Locks, Network
--> Blick zu aktiven Abfragen.. Was passiert gerade und wo
--> Blick auf Prozesse: Details wer sperrt evt wen und warum...



was wenn Problem vorbei?

Nach Neustart--> Nix!

DMVs --> Datamanagement Views

sys.dm_os
sys.dm_db



*/

--Wichtigste:

select * from sys.dm_os_wait_stats order by 3 desc ,5 desc

--Wartezeiten sind kummulierend
--signal_time : nicht mehr als 25% der gesamten Wartezeit

select * from sys.dm_db_index_usage_stats -- SCAN SEEK
where database_id = db_id('northwind')

--Seek müssen ultimtiv mehr als Scan sein

--> Indizes!!

--aber noch viele andere DMVs --> Glenn Berry


--Wir brauchen Aufzeichnugen

--Tool: Profiler  Perfmon

select * from sys.dm_os_performance_counters


