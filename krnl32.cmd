@echo off
:1
cls
call "gui\python.exe" gui\1.py
pause > nul
goto 2

:a
cls
call "gui\python.exe" gui\2.py
call functions\fmg.cmd
pause > nul
goto 1

:2
cls
call "gui\python.exe" gui\3.py
functions\cmdmenusel f870 " Filemanager " " About " " Reboot "
if %ERRORLEVEL%==1 goto a
if %ERRORLEVEL%==2 goto 3
if %ERRORLEVEL%==3 call boot.cmd
pause > nul
goto 1

:3
cls
call "gui\python.exe" gui\4.py
pause > nul
goto 1