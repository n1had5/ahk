#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

#IfWinActive, ahk_exe qutebrowser.exe
    <#x::
    WinSet, Style, ^0xC00000, A
    return
#IfWinActive
