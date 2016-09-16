﻿function Install-RMSHQDynazipErrorClearer{ 
    $ModulePath = $env:USERPROFILE + '\Documents\WindowsPowerShell\Modules\RMSHQDynazipErrorClearer'
    $AhkShortcutPath = '.\ClearDynazipError.ahk - Shortcut.lnk' 
    $AhkShortcutDestination = $env:USERPROFILE + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\'
    Set-Location $ModulePath
    Copy-Item -Path $AhkShortcutPath -Destination $AhkShortcutDestination
}
function New-RMSHQDynazipErrorClearerScheduledTask{
    $AHKPath = $env:USERPROFILE+"\Documents\WindowsPowerShell\Modules\RMSHQDynazipErrorClearer\ClearDynazipError.ahk"
    $Action = New-ScheduledTaskAction -Execute $AHKPath
    $Description = "Starts RMSHQDynazipErrorClearer.ahk on System Startup"
    $Trigger = New-ScheduledTaskTrigger -AtLogOn
    $User = $env:COMPUTERNAME+"\administrator"
    $TaskName = "Start-RMSHQDynazipErrorClearer.ahk"
    $Settings = New-ScheduledTaskSettingsSet
    $Settings.ExecutionTimeLimit="PT0S"
    Register-ScheduledTask -TaskName $TaskName -Action $Action -User $User -Trigger $Trigger -Description $Description -Settings $Settings
}