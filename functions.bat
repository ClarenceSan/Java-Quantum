@echo off
set /p user_input=Enter your name: 
echo Hello, %user_input%.

:MENU
CLS
ECHO ============= HELP MENU =============
ECHO -------------------------------------
ECHO 1. Display the Help Menu
ECHO -------------------------------------
ECHO 2. Exit
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
ECHO Quantum Clock: Lorem Ipsum
ECHO What we are doing: Lorem Ipsum
ECHO -------------------------------------
PAUSE > NUL
GOTO MENU

REM Add other labels for additional options...

:Quit
ECHO ============== THANK YOU ===============
ECHO -------------------------------------
PAUSE > NUL
EXIT

