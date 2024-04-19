$room=Get-ADOrganizationalUnit -LDAPFilter '(name=*)' -SearchBase 'OU=CLUSTER,DC=TT,DC=LOCAL' -SearchScope OneLevel | Select-Object DistinguishedName | Out-GridView -PassThru -Title 'Select Computers OU to restart all Computers in that OU'
$comp=(Get-ADComputer -SearchBase $room.distinguishedname -Filter *).Name
 
Foreach ($c in $comp)
 
{Restart-Computer -ComputerName $c -ErrorAction SilentlyContinue -Force -Verbose}