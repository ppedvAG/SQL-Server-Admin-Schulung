--1 DS hat 4100byte
--1 MIO DS-->1 MIO Seiten --> 1 MIO * 8 KB --> 8 GB
------> 8GB auf HDD  --1:1----> RAM


1 Seiten hat immer 8192btes
1 Seiten kann nicht mehr als 700DS enthalten
1 DS kann max 8060 bytes haben mit Ausnahmen (bei fixen L�ngen)
1 Seiten hat eine Nutzlast von 8072 bytes

--> Seiten kommen 1 zu 1 in RAM!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

8 Seiten am St�ck nennt man Block
SQL Server liest gerne Blockweise


weniger Seiten --> weniger CPU --weniger RAM

--Kann ich Verschwendung messen

use testdb;

dbcc showcontig() --ganze DB wird gescannt
--- Gescannte Seiten.............................: 20000
--- Mittlere Seitendichte (voll).....................: 50.79%

dbcc showcontig('t1') --besser nur verd�chtige Tabellen untersuchen
