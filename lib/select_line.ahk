#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; *** Highlight an entire line (ie. in Notepad) using SHIFT+CONTROL+CLICK ***
;
; When SHIFT CONTROL and LEFT-CLICK are presed...
+^LButton::
;
; 1) Moves the text cursor to where the mouse cursor is by sending a simple mouse CLICK command
; 2) Then moves the text cursor to the beginning of the line by sending a keyboard HOME commend
; 3) Then highlights the entire line by sending a keyboard SHIFT+END command
Send, {Click}{Home}+{End}