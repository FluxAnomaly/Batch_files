
@echo off
echo There will be a blank line below
echo.
echo Above line is blank
echo.
echo The above line is also blank.
REM Does this display?

:Start

call :ColorText ac "Testing"
echo.
call :ColorText 0d "Hi There"


:ColorText
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
