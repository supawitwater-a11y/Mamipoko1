$Host.UI.RawUI.WindowTitle = "MAMIPOKO ค่าขาว V1"

function Banner {
Clear-Host
Write-Host ""
Write-Host "███╗   ███╗ █████╗ ███╗   ███╗██╗██████╗  ██████╗ ██╗  ██╗ ██████╗ " -ForegroundColor RedgroundColor
Write-Host "████╗ ████║██╔══██╗████╗ ████║██║██╔══██╗██╔═══██╗██║ ██╔╝██╔═══██╗" -ForegroundColor White
Write-Host "██╔████╔██║███████║██╔████╔██║██║██████╔╝██║   ██║█████╔╝ ██║   ██║" -ForegroundColor White
Write-Host "██║╚██╔╝██║██╔══██║██║╚██╔╝██║██║██╔═══╝ ██║   ██║██╔═██╗ ██║   ██║" -ForegroundColor Magentata
Write-Host "██║ ╚═╝ ██║██║  ██║██║ ╚═╝ ██║██║██║     ╚██████╔╝██║  ██╗╚██████╔╝" -ForegroundColor White
Write-Host "╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ " -ForegroundColor White
Write-Host ""
Write-Host "==================== ค่าขาว V1 ====================" -ForegroundColor DarkMagenta
Write-Host ""
}

Banner

$key = Read-Host "ENTER KEY"
if ($key -ne "Mamipoko3542") {
Write-Host ""
Write-Host "[!] KEY ไม่ถูกต้อง" -ForegroundColor Red
Start-Sleep 3
exit
}

do {

Banner

Write-Host "[ 1 ] MamipokoMode 1" -ForegroundColor Green
Write-Host ""
Write-Host "[ 2 ] MamipokoMode 2" -ForegroundColor Green
Write-Host ""
Write-Host "[ 0 ] Exit" -ForegroundColor Red
Write-Host ""

$select = Read-Host "choose"

switch ($select) {

"1" {    

    Write-Host ""    
    Write-Host "[✓] Loading..." -ForegroundColor Magenta    

    powercfg -setactive SCHEME_MIN    

    reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f    
    reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f    
    reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f    

    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f    
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f    

    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f    
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v Priority /t REG_DWORD /d 6 /f    
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d High /f    

    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f    
    reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f    

    reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f    

    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f    

    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 0 /f    
    reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f    

    ipconfig /flushdns    
    netsh winsock reset    

    Write-Host ""    
    Write-Host "[✓] Succeed" -ForegroundColor Green    
    Pause    
}    

"2" {    

    Write-Host ""    
    Write-Host "[✓] Loading..." -ForegroundColor Magenta    

    powercfg -setactive SCHEME_MIN    

    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f    
    reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f    

    reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f    

    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f    

    reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f    
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAnimations /t REG_DWORD /d 0 /f    

    ipconfig /flushdns | Out-Null    
    netsh winsock reset | Out-Null    

    Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue    
    Remove-Item "$env:APPDATA\Microsoft\Windows\Recent\*" -Recurse -Force -ErrorAction SilentlyContinue    
    Remove-Item "C:\Windows\Prefetch\*" -Recurse -Force -ErrorAction SilentlyContinue    

    Write-Host ""    
    Write-Host "[✓] Succeed" -ForegroundColor Green    
    Pause    
}    

"0" {    
    exit    
}

}

} while ($true)
