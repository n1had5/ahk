#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance

#Include %A_ScriptDir%\lib\kill_pid.ahk
#Include %A_ScriptDir%\lib\caps_ctrl.ahk
#Include %A_ScriptDir%\lib\close_window.ahk
#Include %A_ScriptDir%\lib\desktop_switch.ahk
#Include %A_ScriptDir%\lib\empty_trash.ahk
#Include %A_ScriptDir%\lib\launch_alacritty.ahk
#Include %A_ScriptDir%\lib\middle_right.ahk
#Include %A_ScriptDir%\lib\paste_pure.ahk
#Include %A_ScriptDir%\lib\qute_titlebar.ahk
#Include %A_ScriptDir%\lib\select_line.ahk
;;#Include %A_ScriptDir%\lib\sticky_shift.ahk
#Include %A_ScriptDir%\lib\sticky_window.ahk
#Include %A_ScriptDir%\lib\toggle_hidden.ahk
#Include %A_ScriptDir%\lib\toggle_maxmize.ahk
#Include %A_ScriptDir%\lib\launch_btm.ahk
`;::send {:}
#+z::Run % "C:\Windows\System32\rundll32.exe powrprof.dll, SetSuspendState 0,1,0"
