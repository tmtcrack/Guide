(Get-ADComputer -Filter 'operatingsystem -notlike "*server*"').Name | Out-File C:\Scripts\computers.txt
