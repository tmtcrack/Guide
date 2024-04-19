iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI -Preview"
	
Test-Connection google.com -Count ([int32]::MaxValue)