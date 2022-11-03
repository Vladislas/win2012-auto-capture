###SYSTEM COMPUTER
echo "Open System"
Show-ControlPanelItem -Name "System"
$apps = "System"
Start-Sleep -Seconds 10
.\screen.ps1 -apps $apps


###DXDIAG
echo "Open Dxdiag"
$apps = "dxdiag"
C:\Windows\System32\dxdiag.exe
Start-Sleep -Seconds 10
.\screen.ps1 -apps $apps

###EVENT VIEWER
echo "Open Event Viewer"
$apps = "Event-Viewer"
eventvwr.exe
Start-Sleep -Seconds 10
[System.Windows.Forms.SendKeys]::SendWait('{DOWN}{DOWN}{RIGHT}{DOWN}{DOWN}{DOWN}{DOWN}')
[System.Windows.Forms.SendKeys]::SendWait(' ')
.\screen.ps1 -apps $apps


###DISK MANAGEMENT
echo "Open Disk Management"
$apps = "Disk Management"
C:\Windows\System32\diskmgmt.msc
Start-Sleep -Seconds 10
.\screen.ps1 -apps $apps


###THIS PC
.\this-pc.ps1
Start-Sleep -Seconds 10

###TASK MANAGER (CPU,MEM,ETHERNET)
.\task-manager.ps1

