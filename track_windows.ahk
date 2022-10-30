#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; output_file = %A_ScriptDir%\output_log_%A_MDAY%_%A_Hour%.txt

; Record data every second
; Print my PID so I can be stopped

Loop
{
	record_window()
    sleep 1000
}

record_window(){
	FormatTime, time_string, ,MM/dd/yyyy HH:mm:ss
	WinGetActiveStats, Title, Width, Height, X, Y
	FileAppend, 
(
%time_string%,%A_TimeIdle%,%Title%,%Width%,%Height%,%X%,%Y%

), C:\Users\dylan\Documents\dev\ahk_window_monitor\results.txt
}