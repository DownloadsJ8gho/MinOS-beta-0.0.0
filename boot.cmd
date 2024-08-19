@echo off
cls
taskkill /f /im explorer.exe
cls
echo BOOT : LOADED!
echo DEVICES : ...
echo VIDEO : ...
if exist gui\1.py goto c2
copy recovery\gui\* gui\* > nul
goto wait
:c2
if exist gui\2.py goto c3
copy recovery\gui\* gui\* > nul
goto wait
:c3
if exist gui\3.py goto c4
copy recovery\gui\* gui\* > nul
goto wait
:c4 
if exist gui\4.py goto wait
copy recovery\gui\* gui\* > nul
goto wait
:wait
timeout 10 > nul
call krnl32.cmd