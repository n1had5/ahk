#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Paste as pure text, http://www.autohotkey.com/community/viewtopic.php?t=11427
; -----------------------------------------------------------------------------
<#v::
	Clip0 = %ClipBoardAll%
	ClipBoard = %ClipBoard%
	Send ^v
	Sleep 50
	ClipBoard = %Clip0%
	VarSetCapacity(Clip0, 0)
	Return