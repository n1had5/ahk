
;Run, C:\ProgramData\chocolatey\bin\btm.exe
;Return

openBTM(asAdmin:=false) {
if WinExist("C:\ProgramData\chocolatey\bin\btm.exe") {
		WinActivate
		Return
	}

else {
		Run, "alacritty" --command btm.exe
	}
}
#B::openBTM(asAdmin:=false)
