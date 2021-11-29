/*
Objekte


a) Ad hoc Abfragen

select * from tabelle

b) Sichten Views

select * from Sicht


c) Proz

exec procname 5

create proc procname @par
as
begin
	Code INS UP DEL SEL
end

--wie batch Datei
der Plan wird beim ersten Aufruf fixiert und dann immer wieder weiterverwendet


d) F()

select * from F()


--super praktischm´, abwer wir wissen vorher nicht was rauskommt
und wie sollen wir da den Plan schätze



--langsam ------------------------schnell

bacd

--langsam--------------------------------------schnell
--f()              Sicht/adhoc                               proc



Sicht gemerkte Abfrage
besteht nur aus einem SELECT
kann wie Tabellen behandelt werden (SEL, INS, UP DEL, Rechte)

--Verwendung: komplexe Abfragen verinfachen da wiederverwendbar
--Cool für Rechte  (vertikal und horizontal filtern)

create view vname
as
select sp1, sp3 from tabelle... where ..



--DB Design









*/