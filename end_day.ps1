Stop-Process -Id (Get-Content .\pid.txt)
python .\parse_window_log.py