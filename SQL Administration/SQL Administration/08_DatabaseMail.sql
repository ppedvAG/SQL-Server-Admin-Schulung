/*

SQL als SMTP Client


Feature Windows SMTP

IIS 6 Konsole --> Maildom�ne.. sql.local

Zugriff--> Relay--> Eintrag 127.0.0.1



SQL Server .. Database Mail

�ffentliche�s Profil  Mitglied von DatabaseMailUserRole(msdb)

Privates Profile direktes Zuweisen



guest accesss auf local


--kommt die Mail an:

auf dem SMTP Server (keine Postf�cher) Order

c.\inetpub\mailroot

Drop-- angekommene Mail
Queue -- im Versand
Pickup --zu versenden
Badmail--nicht zustellbar




*/

use msdb

exec sp_send_dbmail

--Soo  nun nach Auftragsende Mial versenden


--Operatoren = Kontaktliste

--Im Auftrag unter Benachrichtigungen Operator zuweisen

--in Agenteigenschaften -- Warnungssystem -- Profil altivieren
--Agent neu starten




