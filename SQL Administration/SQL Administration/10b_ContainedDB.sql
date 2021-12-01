http://blog.fumus.de/sql-server/contained-databasedie-eigenstndige-datenbank


RECONFIGURE WITH OVERRIDE
GO
EXEC sys.sp_configure N'min server memory (MB)', N'2900'
GO
EXEC sys.sp_configure N'contained database authentication', N'1'
GO
RECONFIGURE WITH OVERRIDE
GO


/*

Was kann sein, wenn eine DB eines anderen Server restore..

kein Login (master) , aber User (containedDB)
Login in der DB

Jobs  fehlen sind msdb
--fehlen immer noch...

#tab temp Tabelle sind tempdb
Finnish Schwedisch (DB)   tempdb std latin1




*/

USE [ContDB]



select * into #t from sysusers

create proc #gpname
as
select 


GO
CREATE USER [Andreas] WITH PASSWORD=N'ppedv2019!'
GO


