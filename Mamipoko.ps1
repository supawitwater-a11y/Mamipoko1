$Host.UI.RawUI.WindowTitle = "MAMIPOKO ค่าขาว V1"

function Banner {
    Clear-Host
    Write-Host ""
    Write-Host "███╗   ███╗ █████╗ ███╗   ███╗██╗██████╗  ██████╗ ██╗  ██╗ ██████╗ " -ForegroundColor Magenta
    Write-Host "████╗ ████║██╔══██╗████╗ ████║██║██╔══██╗██╔═══██╗██║ ██╔╝██╔═══██╗" -ForegroundColor White
    Write-Host "██╔████╔██║███████║██╔████╔██║██║██████╔╝██║   ██║█████╔╝ ██║   ██║" -ForegroundColor Magenta
    Write-Host "██║╚██╔╝██║██╔══██║██║╚██╔╝██║██║██╔═══╝ ██║   ██║██╔═██╗ ██║   ██║" -ForegroundColor White
    Write-Host "██║ ╚═╝ ██║██║  ██║██║ ╚═╝ ██║██║██║     ╚██████╔╝██║  ██╗╚██████╔╝" -ForegroundColor Magenta
    Write-Host "╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ " -ForegroundColor White
    Write-Host ""
    Write-Host "==================== ค่าขาว V1 ====================" -ForegroundColor DarkMagenta
    Write-Host ""
}

Banner

$key = Read-Host "กรุณาใส่ KEY"

if ($key -ne "Mamipoko089") {
    Write-Host ""
    Write-Host "[!] KEY ไม่ถูกต้อง" -ForegroundColor Red
    Start-Sleep 3
    exit
}

do {
    Banner

    Write-Host "[ 1 ] Mode 1" -ForegroundColor Green
    Write-Host "[ 0 ] Exit" -ForegroundColor Red
    Write-Host ""

    $select = Read-Host "เลือกโหมด"

    switch ($select) {

        "1" {

            Write-Host ""
            Write-Host "[✓] Loading..." -ForegroundColor Green

            powercfg -setactive SCHEME_MIN

            ipconfig /flushdns | Out-Null

            Write-Host "[✓] Performance Mode" -ForegroundColor Green
            Write-Host "[✓] DNS Cleared" -ForegroundColor Green
            Write-Host "[✓] Complete" -ForegroundColor Green

            Pause
        }

        "0" {
            exit
        }
    }

} while ($true)
