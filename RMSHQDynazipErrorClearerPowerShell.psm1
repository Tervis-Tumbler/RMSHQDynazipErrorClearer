function New-RMSHQDynazipErrorClearerScheduledTask{
    $AHKPath = $env:USERPROFILE+"\Documents\WindowsPowerShell\Modules\RMSHQDynazipErrorClearer\ClearDynazipError.exe"
    $Action = New-ScheduledTaskAction -Execute $AHKPath
    $Description = "Starts RMSHQDynazipErrorClearer.exe on System Startup"
    $Trigger = New-ScheduledTaskTrigger -AtLogOn
    $User = $env:COMPUTERNAME+"\administrator"
    $TaskName = "Start-RMSHQDynazipErrorClearer.exe"
    $Settings = New-ScheduledTaskSettingsSet 
    $Settings.ExecutionTimeLimit="PT0S"
    Register-ScheduledTask -TaskName $TaskName -Action $Action -User $User -Trigger $Trigger -Description $Description -Settings $Settings -RunLevel Highest
}
function Get-RMSHQDynazipErrorClearerUpdate{
    $RepositoryLocal = $env:USERPROFILE+"\Documents\WindowsPowerShell\Modules\RMSHQDynazipErrorClearer"

    if(Test-Path $RepositoryLocal){
        Set-Location $RepositoryLocal
        Git Pull
    }
}