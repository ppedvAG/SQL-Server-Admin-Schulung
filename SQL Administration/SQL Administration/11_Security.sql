/* Tipps

Lasse nie eine normalen User ein ALTER bzw CREATE View, Procedure oder function zu

Vergib den Besitz immer dem dbo --> Besitzverkettung
--verweigern ist nicht mehr ultimativ

--Serverrolle public = jeder.. tu nix damit!


--tu nie den guest aktivieren
--jeder der ein Login besitzt wird in der DB zum Gast
--gib dem Gast keine Rechte
--DB public keine Rechte

--verwende Schemas
--verwende DB Gruppen


wenn möglicb nur NT Auth.. sicherer

man kann auch Windows Gruppen als Login verwenden.. :-|


TDE

Übertragung verschlüsselt

Daten verschlüsselt













*/





select * from syslogins

select * from  sysusers

USE [master]
GO
CREATE LOGIN [Otto] WITH PASSWORD=N'123', 
DEFAULT_DATABASE=[Northwind], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO



USE [Northwind]
GO
CREATE SCHEMA [MA] AUTHORIZATION [dbo]
GO


USE [Northwind]
GO
CREATE SCHEMA [IT] AUTHORIZATION [dbo]
GO


--Admin

use Northwind;

create table it.kst(itkst int)
create table ma.kst(makst int)

create table ma.projekte (mapro int)
create table it.projekte (itpro int)


use [Northwind]
GO
GRANT SELECT ON SCHEMA::[MA] TO [Susi]
GO


GRANT SELECT ON SCHEMA::[IT] TO [Otto]
GO

--
select * from kst --denke dbo..

select * from customers


USE [Northwind]
GO
ALTER USER [Otto] WITH DEFAULT_SCHEMA=[IT]
GO

ALTER USER SUSI WITH DEFAULT_SCHEMA=[MA]
GO


use [Northwind]
GO
GRANT CREATE TABLE TO [Susi]
GO

use [Northwind]
GO
GRANT ALTER ON SCHEMA::[MA] TO [Susi]
GO

USE [Northwind]
GO
CREATE ROLE [ITRolle] AUTHORIZATION [dbo]
GO
USE [Northwind]
GO
ALTER ROLE [ITRolle] ADD MEMBER [Otto]
GO

use [Northwind]
GO
GRANT SELECT ON SCHEMA::[IT] TO [ITRolle]
GO






