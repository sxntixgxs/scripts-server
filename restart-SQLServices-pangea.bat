@echo off
echo Restarting services ...
net stop "SQLServerReportingServices"
net stop "ReportServer"
net stop "MSSQLFDLauncher"
net stop "SQLWriter"
net stop "MSSQLSERVER"
net stop "SQLBrowser"
net start "SQLBrowser"
net start "MSSQLServer"
net start "SQLWriter"
net start "MSSQLFDLauncher"
net start "SQLServerReportingServices"
net start "ReportServer"
echo Services restarted successfully
timeout /t 5 /nobreak >nul
echo Restarting sistem ...
shutdown /r /f /t 0