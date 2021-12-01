/*


SID!!!!!!!!!


Windows User/Logins
verwendet die Windows SID
daher muss das Mapping nicht ehr gemacht werden


in der DB USer Mrx (SID: 123)

Neues Login Mrx aus NT (SID=123)
---------------------------


SQL Logins/User

SQL User (SID: 1478).. OTTO

Neues Login OTTO SID =7653



Workaround: Rollen verwendet .. ja  ;-)


--User löschen..

neues Login: Usermapping zur DB und auch gleich Rollen zuweisen
--neues Kennwort
--was wenn keine Rollen



--Tipp: Google: sp_help_revlogin bei OrigServer ausführen









*/

--Folgendes ist depricated...

use whoamiDB
sp_change_users_login 'Report'

--Login passend angelegt
sp_change_users_login 'Auto_fix', 'JamesBond', NULL, 'ppedv2019!'

--User wird korrigiert
sp_change_users_login 'Update_one', 'JamesBond', 'JamesBond'

