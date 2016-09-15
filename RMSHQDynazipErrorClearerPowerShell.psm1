function Install-RMSHQDynazipErrorClearer{
    [CmdletBinding()]
    param (
    )
    
    $ModulePath = $env:USERPROFILE + '\Documents\WindowsPowerShell\Modules\RMSHQDynazipErrorClearer'
    $AhkShortcutPath = '.\ClearDynazipError.ahk - Shortcut.lnk' 
    $AhkShortcutDestination = $env:USERPROFILE + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\'
    
    Set-Location $ModulePath
    Copy-Item -Path $AhkShortcutPath -Destination $AhkShortcutDestination

}