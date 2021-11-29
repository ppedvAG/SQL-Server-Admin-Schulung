/*

DB Design


Beziehungen   PK : FK   1:N
1:N




PK Primary Key Primärschlüssel: den gibts in der Tabelle nur einmal
eindeutigen Wert

FK Fremdschlüssel zigfacher Wert eines PK


SHOP

Normalisierung Normalform --> Redundanzvermeidung


1. NF: pro Spalte nur ein Wert atomar
2: NF: Primärschlüssel entweder ein Wert oder mehrere
3. NF: keine korrelierende Spalten ausserhalb des PK


1  26 datum 100
2  27 ..     10
3  40
4  31
5

1  schmitt peter 80031 München
2  Maier	Uli  1
3


int: ganze Zahl +- 2,1 Mrd
smallint : +- 32000
tinyint: 0 -255
bigint: > 2,1 Mrd



'otto'
varchar(50)... 'otto'   4 
char(50)...    'otto                            '  50  fix
nvarchar(50).. 'otto'  4 
nchar(50)

decimal (18,0) .. 18 Stellen, davon 0 Nachkomma
decimal(5,2) .. Prozente zb 5 Stellen lang, davon 2 Nachkommas
money.. 8 Nachkommastellen



Datum


datetime  ms
smalldatetime sek
datetime2 ns
datetimeoffset ns + Zeitzone
date








1  8263 Burghausen

Kunden(KdNr, Nachname, Vorname, Ort, Plz, Strasse, GebTag) 


Artikel(ArtNr, Bez, Preis, Lager)


Auftrag (ANr, KdNr,  ADatum, Lieferkosten, --"RngSumme" kann erreichnet werden)


13   111  40  10
13   113  33   5
13   56    1   100

Auftragsdetails (ANr, ArtNr, Menge, Preis)

--Normalisierung ist gesund!! Rdundanz ist schnell , aber eben redundant!






















Datenspalten
Datentypen


In Northwind immer Unicode, obwohl nicht immer notwendig



*/