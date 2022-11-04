Remove-Item results.txt
(Start-Process .\track_windows.ahk -PassThru).ID | Out-File -FilePath .\pid.txt
