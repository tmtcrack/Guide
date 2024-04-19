Enter-PSSession -ComputerName test242.tt.local -Credential TT\administrator

Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Value 0

Restart-Service -Name TermService