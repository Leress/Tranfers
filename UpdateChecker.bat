@echo off
rem /Create restore point before updates. Won't create one if less than 24 hours has passed since the last restore point/
start /b cmd.exe /k "Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "%DATE%", 100, 7"

rem /Check for updates./
cmd /c %windir%\explorer.exe ms-settings:windowsupdate-action

rem /Automatically close after 2 seconds./
timeout 2>NUL
