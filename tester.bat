
@echo off
for /f "delims=" %%a in (updatesToGet.txt) DO ( 
  ECHO Line is: %%a
  if %%a == KB4041676 ECHO found it.
)
pause
	