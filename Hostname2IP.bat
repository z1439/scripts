@echo off
for /f %%a in (d:\Userfiles\zwilliams\Desktop\hostname.txt) do call :process %%a
goto :eof
 
:process
set hostname=%1
for /f "tokens=4 delims=: " %%r in ('ping -n 1 %hostname%^|find /i "Statistics"') do echo %hostname% %%r >> d:\Userfiles\zwilliams\Desktop\output.txt