/*
Daten von A nach B regelm��ig

Regelm: tagesaktuell

Wie komm ich von A nach B ?

innerhalb des selben Netzwerkes.. Freigabe zB \\
User, Logins, Sichten , Prozeduren

1. SSIS Paket: Import Export Assistent
	Vorteil: Assistent
	Nachteil: Alles oder nix (keine Diff�rkennung)
	keine User, keine Proz 

	Netz ist egal


2. Logshipping  (komplette DB)
    3 Auftr�ge:
		1. Backup Log A
		2. Kopie des BakLog von A nach B
		3. Restore Log auf B

	Vorteil:
		Assistent
		Zeitintervall auf min m�glich

	MUSS:
		Freigaben


	Problemzone
		Freigabe

3. Replikation (nur best Daten)
		
		zum Einrichten : Freigabe

		Snapshotreplikation

		Nachteil: echt komplex

		Proxykonten
		Snapshotagent


4. Manuelle L�sung
	


*/