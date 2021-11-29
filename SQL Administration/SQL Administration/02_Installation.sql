/*



Dienstkonten

SQL Server (DB Engine)

SQL Agent( Jobs)

SQL Volltextsuche ( Suche "Maier", Meier meir mayer)

SQL Browser


NT Service\MSSQL$FE

Was macht das NT Service:
autom Kennwortänderungen ..cool
lok Konten --> \\Backup  ?  ..uncool --> Computerkonto!

Volumewartungstask
kein Ausnullen bei Vergrößerungen



Anmeldung

HV-SQL2

schulung\Administrator
ppedv2019!


Sicherheit:

Gemischte Auth (NT + SQL Logins)
--> Konto: SA aktiv  (Kennwort 14 Zeiechen komplex.)
	--später deaktvieren--> Ersatzkonto

--> NT Admins sind keine SQL Admins!
--manuell jemand als Admin hinzufügen (user oder Gruppen möglich)



Pfaden

DB Datendateien
DB Logfiles

Regel: Trenne Daten von Logfiles physikalisch

Backup...


Binärkram: egal.. c:\Program Files\...



TempDB

eig HDDs für MDF und LDF



RAM
cool.. SQL Server max Arbeitsspeicher sollte auf einen Wert beschränbkt werden
damit das OS noch Platz zum Arbeiten besitzt.
--> Gesmat - OS
--bei 4000--2200 als max


MAXDOP _ 
wieviele CPUs verwenden Abfragen
default: 0 ..sprich 1 oder alle
Regel: 1 oder alle (max 8)



INSTANZ
..kann auf einem Rechner 50 mal installiert werden (supportet)

--> Std Instanz:		"PC25"   --- PC25

-- benannt Instanz:                  PC25\INSTANZNAME

Instanzen sind total isoliert voneinander
eig Prozesse eig SystemDB

auch verschd Versionen möglich




































*/