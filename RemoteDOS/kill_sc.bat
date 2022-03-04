
REM Goal:  Kill the solicore service scsrvc.exe.  Does the host need to be in DISABLE first?

:: Prompt for host to connect with
@echo off
SET /P host=Please enter the host to connect to: 

Psexec /s \\%host% cmd Taskkill /f /IM scsrvc.exe /T

REM Psexec /s \\%host% "cmd Taskkill /f /IM scsrvc.exe /T"

REM Psexec /s \\%host% "cmd /c Taskkill /f /IM scsrvc.exe /T"