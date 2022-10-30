Remove-Item results.txt
$env:TIMETRACKPID = (Start-Process .\track_windows.ahk -PassThru).ID
