@echo off
cls
call classpath.bat
echo Compile in progress

:compile
javac Solution.java
echo Compile Successful? (Y/N)
set /p "r1=>"
if %r1% == N goto fail
if %r1% == n goto fail
if %r1% == Y goto run
if %r1% == y goto run

:run
java Solution < judgein.txt > output.txt
echo Runtime Successful? (Y/N)
set /p "r2=>"
if %r2% == N goto fail
if %r2% == n goto fail
if %r2% == Y goto diff
if %r2% == y goto diff

:diff
fc judgeout.txt output.txt
pause
goto end

:fail
echo Submission failed
goto end

:end
echo Quitting program
pause
exit
