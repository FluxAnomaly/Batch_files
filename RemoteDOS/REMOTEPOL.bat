:: Copies updatepol.bat to target, then opens remote DOS shell to target. 

:: Prompt for host to connect with
@echo off
SET /P host=Please enter the host to connect to: 

@echo Copying updatepol.bat file to "\\%host%\C$\WINDOWS\system32". 
@echo.
copy "C:\TOOLS\Batch Files\RemoteDOS\payloads\updatepol.bat" "\\%host%\C$\WINDOWS\system32"
REM robocopy "C:\TOOLS\Batch Files\RemoteDOS\payloads\updatepol.bat" "\\%host%\C$\WINDOWS\system32"

@echo.
@echo Copy complete. To update policies run updatepol.bat after connection is made.
@echo.

@echo Establishing remote DOS prompt connection to %host%.
C:\TOOLS\PSTools\Psexec -s \\%host% cmd

REM How do I make this line run?
REM call c:\windows\system32\updatepol.bat
REM call "\\%host%\C$\windows\system32\updatepol.bat"


REM Notes: --------------------------------------------------------------------------------------
REM After the connection is made by Psexec nothing below it runs till after disconnecting from the remote host.  
REM which is why I copy updatepol.bat to the remote hosts

REM Actions of updatepol:
REM cmdagent.exe /p
REM cmdagent.exe /c
REM cmdagent /e