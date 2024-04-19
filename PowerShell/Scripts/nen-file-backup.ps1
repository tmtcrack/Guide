#Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted

# Đường dẫn đến thư mục Logs
$sourcePath = "C:\Logs"

# Đường dẫn đến thư mục Backup
$destinationPath = "C:\Backup"

# Tên tệp tin nén
$zipFileName = "logs.rar"

# Đường dẫn đến ứng dụng RAR
$rarPath = "C:\Program Files\WinRAR\RAR.exe"

# Đường dẫn đến tệp tin nén
$zipFilePath = Join-Path -Path $destinationPath -ChildPath $zipFileName

# Thực thi lệnh nén bằng ứng dụng RAR
& $rarPath a $zipFilePath $sourcePath

# Hiển thị thông báo khi hoàn thành
#Write-Host "Đã nén thư mục thành công vào $zipFilePath"