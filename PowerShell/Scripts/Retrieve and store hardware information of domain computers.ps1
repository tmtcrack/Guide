(Get-ADComputer -Filter 'operatingsystem -like "*server*"').Name | Out-File C:\Scripts\Servers.txt

Get-WMIObject -ComputerName (Get-ADComputer -Filter *).Name -Class Win32_Computersystem -ErrorAction SilentlyContinue | Select-Object @{n="Computer"; e={$_.PSComputerName}}, @{n="RAM/GB"; e={[Math]::Round($_.TotalPhysicalMemory/ 1GB)}}
