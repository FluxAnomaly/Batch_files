:: Establishes remote DOS session with machine. No other function.
:: Can take hostname or IP. 

@echo off

:: Prompt for host to connect with
SET /P host=Please enter the host to connect to: 

@echo Establishing remote DOS prompt connection to %host%.
C:\TOOLS\PSTools\Psexec -s \\%host% cmd



REM Notes: --------------------------------------------------------------------------------------

REM After the connection is made by Psexec nothing in the batch file below that will run till after disconnecting from the remote host.  

