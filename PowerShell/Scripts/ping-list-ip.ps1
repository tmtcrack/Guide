
#$ipList = Get-Content -Path "C:\Script\ip_list.txt"
#$pingResults = foreach ($ip in $ipList) {
#    Test-Connection -ComputerName $ip -Count 4 | Select-Object Address, ResponseTime, ResponseTimeToLive, StatusCode
#}

$ipList = Get-Content -Path "C:\Script\ip_list.txt"
foreach ($ip in $ipList) {
    ping -n 20 $ip | Out-File -FilePath "C:\Data\ping-result.txt" -Append
}

#$pingResults | Export-Csv -Path "C:\Data\ping_results.csv" -NoTypeInformation

