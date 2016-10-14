; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1
#Persistent


InvokeClickError:
Loop
{
    Loop
    {
        Loop
        {
            CoordMode, Pixel, Window
            ImageSearch, FoundX, FoundY, -41, -39, 305, 191, *20 %A_ScriptDir%\ImageMatches\DynaZipZip.png
        }
        Until ErrorLevel = 0
        If ErrorLevel = 0
        {
            Run, powershell.exe -command .\Write-RMSHQDynazipErrorClearerEvent.ps1, %userprofile%\Documents\WindowsPowerShell\Modules\RMSHQDynazipErrorClearer
            Shutdown, 6
        }
    }
}
Return

