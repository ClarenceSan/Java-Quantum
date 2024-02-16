@echo off
set /p user_input=Enter your name: 
echo Hello, %user_input%.

:MENU
CLS
ECHO ============= HELP MENU =============
ECHO -------------------------------------
ECHO 1. Display this help menu
ECHO 2. Another option
ECHO 3. Yet another option
ECHO -------------------------------------
ECHO 4. Exit
ECHO -------------------------------------
ECHO ========== PRESS 'Q' TO QUIT ==========
ECHO.

SET INPUT=
SET /P INPUT=Please select an option: 

IF /I "%INPUT%"=="1" GOTO Help
REM Add more options here...

:Help
CLS
ECHO ============= HELP MENU =============
ECHO Put the help menu here later.
ECHO -------------------------------------
PAUSE > NUL
GOTO MENU

REM Add other labels for additional options...

:Quit
ECHO ============== THANK YOU ===============
ECHO -------------------------------------
PAUSE > NUL
EXIT

