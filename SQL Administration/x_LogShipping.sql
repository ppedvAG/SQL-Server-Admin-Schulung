/*

LogShipping

1. Sicherung der Logfiles auf Quellserver

2. Kopierjob der Sicherung auf Zielserver

3. Restorejob auf Zielserver

Problemzone: Freigaben

Für die Jobs muss der jeweilige Agnt zugreifen
Für das V Backup (ohne Zeitplan) der SQL Dienst

Achte auf Vererbung


D:\_BACKUP   --> Freigabe  \\HV-SQL1\_BACKUP

Rechte: 

D:\_Backup  (Agent von HV-SQL1 (L+S),HV-SQL2 (L))

\\HV-SQL1\_BACKUP  (Agent von HV-SQL2(L))


HV2

C:\_BACKUP  (Agent Hv-sql2 (S+L))



\\kairo\_BACKUP --> D:\_HRBACKUP

D:\_HRDB\