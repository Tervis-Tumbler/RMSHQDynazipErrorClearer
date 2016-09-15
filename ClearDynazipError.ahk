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
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, -41, -39, 305, 191, *1 %A_ScriptDir%\ImageMatches\RMSHQ DynaZip\Screen_20160914134332.png
        CenterImgSrchCoords("*1 %A_ScriptDir%\ImageMatches\RMSHQ DynaZip\Screen_20160914134332.png", FoundX, FoundY)
    }
    Until ErrorLevel = 0
    If ErrorLevel = 0
    {
        Click, Left, 1
        Sleep, 10
        /*
        MsgBox, 262144, , Found the window!!, 3
        */
        Loop
        {
            CoordMode, Pixel, Window
            ImageSearch, FoundX, FoundY, -27, -27, 302, 179, %A_ScriptDir%\ImageMatches\RMSHQ DynaZip\Screen_20160912152530.png
            CenterImgSrchCoords("%A_ScriptDir%\ImageMatches\RMSHQ DynaZip\Screen_20160912152530.png", FoundX, FoundY)
        }
        Until ErrorLevel = 0
        If ErrorLevel = 0
        {
            /*
            MsgBox, 262144, , Found the OK button, 3
            */
            Click, Left, 1
            Sleep, 10
        }
    }
}
Return


CenterImgSrchCoords(File, ByRef CoordX, ByRef CoordY)
{
	static LoadedPic
	LastEL := ErrorLevel
	Gui, Pict:Add, Pic, vLoadedPic, %File%
	GuiControlGet, LoadedPic, Pict:Pos
	Gui, Pict:Destroy
	CoordX += LoadedPicW // 2
	CoordY += LoadedPicH // 2
	ErrorLevel := LastEL
}
