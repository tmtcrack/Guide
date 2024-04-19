
$date = (Get-Date).AddDays(-365)

Get-ADUser `-Filter 'lastlogondate -le $date' `-Properties LastLogonDate | Select-Object Name,LastLogonDate