$credential = Get-Credential -UserName "administrator" -Message "Enter your password" -Title "Credential"
Enter-PSSession -ComputerName 192.168.100.242 -Credential $credential

cd 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'

Get-ItemProperty . -name "PortNumber"

Set-ItemProperty . -name "PortNumber" -value 5565

Restart-Service -Name TermService