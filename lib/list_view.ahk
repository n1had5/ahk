    LV_VIEW_ICON      := 0 ; Default
    LV_VIEW_DETAILS   := 1 ; Flat font and columns don't work right.
    LV_VIEW_SMALLICON := 2 ; Correct font, columns are okay.
    LV_VIEW_LIST      := 3 ; Flat font and columns are too far apart.
    LV_VIEW_TILE      := 4 ; Flat font, columns are okay, and there is extra text detail.
    LVM_SETVIEW       := 0x108E
    LVM_GETVIEW       := 0x108F
     
    <#`::
    {
        If ( Toggle ) ; LV_VIEW_SMALLICON & LV_VIEW_TILE work the best.
        {
            ControlGet, myDesktopWindow, HWND,, SysListView321, ahk_class Progman
            SendMessage, % LVM_SETVIEW, % LV_VIEW_SMALLICON, 0, , % "ahk_id " . myDesktopWindow
        }
        Else ; Set back to default.
        {
            ControlGet, myDesktopWindow, HWND,, SysListView321, ahk_class Progman
            SendMessage, % LVM_SETVIEW, % LV_VIEW_ICON, 0, , % "ahk_id " . myDesktopWindow
        }
        Toggle := !Toggle
    }
    Return