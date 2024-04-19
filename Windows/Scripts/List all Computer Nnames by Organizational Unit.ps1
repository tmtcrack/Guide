
(Get-ADComputer -Filter * -SearchBase "OU=CLUSTER,DC=tt,DC=local").Name | Out-File c:\Scripts\computers.txt