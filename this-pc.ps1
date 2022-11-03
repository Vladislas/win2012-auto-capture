##test.ps1
###THIS PC
echo "Open This PC"
$apps = "This-PC"
Add-Type -AssemblyName System.Windows.Forms
& "$env:WinDir\explorer.exe"
Start-Sleep -Seconds 2
#[System.Windows.Forms.SendKeys]::SendWait('+{TAB}{LEFT}{DOWN}')
[System.Windows.Forms.SendKeys]::SendWait('{TAB}{TAB}{TAB}{TAB}{ENTER}')
[System.Windows.Forms.SendKeys]::SendWait("This PC")
[System.Windows.Forms.SendKeys]::SendWait('{ENTER}')
Start-Sleep -Seconds 2
.\screen.ps1 -apps $apps