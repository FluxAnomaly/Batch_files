@ECHO OFF
Echo Start of prompt batch.....
pause
SET /P uname=Please enter your name: 
IF "%uname%"=="" GOTO Error
ECHO Hello %uname%, Welcome to DOS inputs!
GOTO End
:Error
ECHO You did not enter your name! Bye bye!!
:End