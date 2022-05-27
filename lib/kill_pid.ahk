#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

#k::
InputBox, target_pid, kill_pid, Enter target PID:, ,170, 128
if ErrorLevel {
	MsgBox, Cancelled .
	ExitApp
}
else {
Run, pwsh -Command Stop-process -Id %target_pid%
MsgBox, Process %target_pid% terminated
return
}
