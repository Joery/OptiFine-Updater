echo off
cls

:menu
echo OptiFine Updater 0.1 by MrJoery
echo www.github.com/Joery
echo.
echo Place the OptiFine JAR file into this directory and
echo choose the correct Minecraft Launcher version
echo.
echo 1 - Classic Launcher
echo 2 - Microsoft Store Launcher
echo 3 - Exit
echo.
echo Type 1, 2 or 3 and press ENTER

set /p menu=
if %menu%==1 goto classic
if %menu%==2 goto modern
if %menu%==3 goto exit

:classic
echo Drag the OptiFine file into this window and press ENTER
set /p file=
%appdata%\.minecraft\runtime\java-runtime-beta\windows-x64\java-runtime-beta\bin\javaw.exe -jar %file%
exit

:modern
echo Drag the OptiFine file into this window and press ENTER
set /p file=
%localappdata%\Packages\Microsoft.4297127D64EC6_8wekyb3d8bbwe\LocalCache\Local\runtime\java-runtime-beta\windows-x64\java-runtime-beta\bin\javaw.exe -jar %file%
exit

:exit
exit
