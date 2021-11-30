--Bereich Sicherheit-- Überwachsungsspezifikation

--> Logfile zum Aufzeichnen best Ereignisse


--> Sicherheit--> Serverüberwachung
	--> Ereignisse des Server in das Logfile aufzeichnen
	--> Ereigbnisse im Sinne: alles was auf dem Server passieren kann (Login etc)
		--> keine Ereignisse innerhlab einer DB (Select zb)

--> Sicherheit im Bereich der DB
	--> Datenbanküberwachungsspezifikation
	--> Hier lassen sie gezielt Ereignisse innerhlab der DB aufzeichen 
--		und sehr gut filtern. zB Alle SELECT des Otto auf Tabelle Employees
--		auch unspezifischer möglich: Alle Select innerhalb eines Schemas für Rollen


-- Tipp: nicht permanent protkollieren. Kann sehr viel werden.. Aktivieren/Deaktivieren