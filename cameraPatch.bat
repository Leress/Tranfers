ECHO OFF

MKDIR C:\WinUpdater

rem COPY C:\Users\%USERNAME%\Desktop\UpdateChecker.bat C:\WinUpdater
if exist C:\WinUpdater\UpdateChecker.bat (
	rem delete old file and replace with newest one. Change to REPLACE 
	del C:\WinUpdater\UpdateChecker.bat
	COPY C:\Users\%USERNAME%\Desktop\UpdateChecker.bat C:\WinUpdater
) else ( 
	COPY C:\Users\%USERNAME%\Desktop\UpdateChecker.bat C:\WinUpdater )

rem create the scheduled task to run update on log in of device.
SchTasks /Create /SC ONLOGON /TN "Shutdown WinUpdate" /TR "C:\WinUpdater\UpdateChecker.bat"	
	
ECHO "Installation Complete."
Echo Press any key to close
pause>NUL