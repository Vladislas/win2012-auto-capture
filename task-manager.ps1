########## OPEN TASKBAR ###########
echo "Open TaskManager"

Invoke-Command -ScriptBlock{ Start-Process $env:WinDir\System32\Taskmgr.exe }
Start-Sleep -Seconds 10
echo " "


########## MOVE TO PERFORMANCE TAB ###########
echo "Move TAB Performance"
[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.SendKeys]::SendWait('^{TAB}')
[System.Windows.Forms.SendKeys]::SendWait('{TAB}')
[System.Windows.Forms.SendKeys]::SendWait('{UP}')
[System.Windows.Forms.SendKeys]::SendWait('{UP}')
[System.Windows.Forms.SendKeys]::SendWait('{UP}')
[System.Windows.Forms.SendKeys]::SendWait('{UP}')
[System.Windows.Forms.SendKeys]::SendWait(' ')

########## CAPTURE 5s ###########
echo "CPU Usage 5s"
$apps = "CPU_5s"
timeout 5
.\screen.ps1 -apps $apps

########## CAPTURE 1m ###########
echo "CPU Usage 1m"
$apps = "CPU_1m"
timeout 60
.\screen.ps1 -apps $apps

########## CAPTURE 5m ###########
echo "CPU Usage 5m"
$apps = "CPU_5m"
timeout 300
.\screen.ps1 -apps $apps


########## MEM 5s ###############
echo "MEM Usage 5s"
$apps = "MEM_5s"
[System.Windows.Forms.SendKeys]::SendWait('^')
[System.Windows.Forms.SendKeys]::SendWait('{DOWN}')
[System.Windows.Forms.SendKeys]::SendWait(' ')
timeout 5
.\screen.ps1 -apps $apps


######### ETHERNET 5s ##################
echo "ETHERNET Usage 5s"
$apps = "ETHERNET_5s"
[System.Windows.Forms.SendKeys]::SendWait('{DOWN}')
[System.Windows.Forms.SendKeys]::SendWait(' ')
timeout 5
.\screen.ps1 -apps $apps

######### ETHERNET 1m ##################
echo "ETHERNET Usage 1m"
$apps = "ETHERNET_1m"
timeout 60
.\screen.ps1 -apps $apps

######### ETHERNET 5m ##################
echo "ETHERNET Usage 5m"
$apps = "ETHERNET_5m"
timeout 300
.\screen.ps1 -apps $apps
