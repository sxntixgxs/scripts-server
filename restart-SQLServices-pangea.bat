@echo off
echo Restarting services ...
net stop "SQLBrowser"
net start "SQLBrowser"
net stop "MSSQLSERVER"
net start "MSSQLSERVER"
net stop "SQLServerReportingServices"
net start "SQLServerReportingServices"
net stop "ReportServer"
net start "ReportServer"
net stop "SQLWriter"
net start "SQLWriter"
net stop "MSSQLFDLauncher"
net start "MSSQLFDLauncher"
echo Services restarted successfully
pause