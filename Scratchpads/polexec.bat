
REM Copies updatepol.bat to host and executes. 

:: Pass the hostname on the command line to replace %1
@echo off
SET /P host=Please enter the host to connect to: 

@echo Copying updatepol.bat file to "\\%host%\C$\WINDOWS\system32" and executing. 

Psexec /c /s /h /f \\%host% "C:\TOOLS\Batch Files\RemoteDOS\updatepol.bat"

REM psexe switches:
REM 	-c		Copy the specified executable to the remote system for execution
REM 	-s		Run the remote process in the System account.
REM 	-h		run with the account's elevated token
REM 	-f		Copy the specified program even if the file already exists on the remote system.
