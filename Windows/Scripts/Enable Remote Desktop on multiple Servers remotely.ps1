(Get-ADComputer -Filter 'operatingsystem -like "*server*"').Name | Out-File C:\Scripts\Servers.txt

Get-Content C:\Scripts\Servers.txt | ForEach-Object {Invoke-Command -ComputerName $_ {Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-Name "fDenyTSConnections" -Value 0;Enable-NetFirewallRule -DisplayGro
up "Remote Desktop"}}