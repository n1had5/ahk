#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


openWT(asAdmin:=false) {
	; If Terminal is Already Open
	if WinExist("ahk_exe WindowsTerminal.exe") {
		WinActivate
		Return
	}

	; If File Explorer is Active (Source: https://www.winhelponline.com/blog/open-command-prompt-current-folder-keyboard-shortcut)
	if WinActive("ahk_class CabinetWClass") || WinActive("ahk_class ExploreWClass") {
		WinHWND := WinActive()
		For win, in ComObjCreate("Shell.Application").Windows {
			if (win.HWND = WinHWND) {
				dir := SubStr(win.LocationURL, 9) ; Remove "file:///"
				dir := RegExReplace(dir, "%20", " ") ; Insert Spaces
				Break
			}
		}
	} else {
		StringTrimRight, dir, A_Desktop, 8 ; Gets User Folder (ex. C:\Users:\<Username>)
	}

	if asAdmin {
		Try {
			Run *RunAs wt.exe, %dir%
		} Catch {
			MsgBox, Access Denied. Try Again.
			Return
		}
	} else {
		Run wt.exe, %dir%
	}

	; Make Terminal Window Active Once Opened
	WinWait, ahk_exe WindowsTerminal.exe, , 3
	if ErrorLevel
		MsgBox, Couldn't Find Terminal
	else
		WinActivate
}

; Open Terminal on Windows Key + C
#Enter::openWT()

; Open Terminal as Admin On Windows Key + Shift + C
#+Enter::openWT(asAdmin:=true)

