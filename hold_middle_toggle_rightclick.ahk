#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


ListLines Off
SetBatchLines -1

return

*MButton::
    rClick := ""
    RightClick()
    while (rClick = "")
        continue
    if (rClick)
        Click Right
    else
    {
        Send {Blind}{MButton Down}
        KeyWait MButton
        Send {Blind}{MButton Up}
    }
return

RightClick()
{
    RightClick_Tip(10 * 2)
    SetTimer RightClick_Tip, 35
}

RightClick_Tip(set := "")
{
    global rClick
    static i := 0, pX := 0, pY := 0

    MouseGetPos x, y
    if (set)
    {
        i := set
        pX := x
        pY := y
        return
    }

    tt := Round(i-- / 10, 1)
    ToolTip % "Right click in " tt

    if !GetKeyState("MButton", "P") || pX != x || pY != y
        rClick := false

    if (i < 0)
        rClick := true

    if (rClick != "")
    {
        SetTimer RightClick_Tip, Delete
        ToolTip
    }
}