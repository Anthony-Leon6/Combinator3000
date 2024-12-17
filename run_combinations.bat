@echo off 
:START 
cls 
python ascii_art.py
echo ============================ 
echo WELCOME TO COMBINATOR 3000 
echo ============================ 
echo. 
set /p NUMBER=ENTER A NUMBER :  

python generate_combinations.py %NUMBER%

echo All POSSIBLE combinations have been saved to combinations_%NUMBER%.txt
echo.
echo RESTART?? (y/n)
set /p RESTART=

if /I "%RESTART%"=="Y" goto START
if /I "%RESTART%"=="N" goto END
:END
pause

