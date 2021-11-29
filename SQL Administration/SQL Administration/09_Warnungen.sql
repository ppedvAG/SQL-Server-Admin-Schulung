
/* SQLServer teilt Fehler in Kategorien = Schweregrade ein

1 bis 25.. je höher die NUmmer desto ärger das Problem

Jede Ebene besitzt unter Umständen viele Fehlernummer


--> select * from sysmessages -- alle Spachen ca 300000 Fehler


select * from tab2
--Schweregrad 16


select from tab2
--Schweregrad 15

--Schweregrad 14- kein Zugriff


--Ebene 17 ... 19 .. 20 .. 21.. 23.. 24...25



--Idee... falls ein bestimmter Fehler auftritt , dann soll
--an den Operator einen Nachricht geschickt werden


*/