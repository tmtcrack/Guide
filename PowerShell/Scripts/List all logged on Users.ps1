$users = quser.exe | Select-Object -Skip 1
$unames = @()
foreach ($u in $users) {
    $uname = ($u.trim() -replace '\s+',' ' -replace '>','' -split '\s')[0]
    $unames += New-Object psobject -Property ([ordered]@{
                    'Logged in Users' = [string]$uname
    })
}
Write-Output $unames