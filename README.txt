How to install RMSHQDynazipErrorClearer -

1. Install Chocolatey from PowerShell
	A. Open PowerShell as an Administrator
	B. Run the following:
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

2. Install Git
	A. Open PowerShell as an Administrator
	B. Run the following:
choco install git.install -y -f

3. Clone the repository
	A. Open PowerShell as an Administrator
	B. Run the following:
Set-Location $env:USERPROFILE+"\Documents\WindowsPowerShell\Modules"; Git Clone https://github.com/Tervis-Tumbler/RMSHQDynazipErrorClearer
	
4. Create a scheduled task to initiate the program on system startup
	A. Run the following in PowerShell as an Administrator:
New-RMSHQDynazipErrorClearerScheduledTask


How to use RMSHQDynazipErrorClearer -
1. Once installed the software should run automatically on system startup.


How to update RMSHQDynazipErrorClearer -
1. Open PowerShell as an Administrator
2. Run the following:
Get-RMSHQDynazipErrorClearerUpdate