echo off

:menu
cls

echo OptiFine Updater 2.00 by Joery
echo www.github.com/Joery
echo.
echo Place the OptiFine JAR file into this directory and
echo choose the correct Minecraft Launcher version
echo.
echo 1 - Microsoft Store (Green Creeper)
echo 2 - Program Files (Grey Creeper)
echo 3 - Classic (Grass Block)
echo 4 - Custom Location
echo 5 - Help
echo 6 - Exit
echo.
echo Type 1-6 and press ENTER

set /p menu=
if %menu%==1 goto store
if %menu%==2 goto msi
if %menu%==3 goto exe
if %menu%==4 goto custom
if %menu%==5 goto help
if %menu%==6 goto exit
goto menu

:store
cls
echo OptiFine Updater 2.00 by Joery
echo www.github.com/Joery
echo.
echo Drag the OptiFine file into this window and press ENTER
set /p file=
"%LocalAppData%\Packages\Microsoft.4297127D64EC6_8wekyb3d8bbwe\LocalCache\Local\runtime\java-runtime-gamma\windows-x64\java-runtime-gamma\bin\javaw.exe" -jar %file%
goto menu

:msi
cls
echo OptiFine Updater 2.00 by Joery
echo www.github.com/Joery
echo.
echo Drag the OptiFine file into this window and press ENTER
set /p file=
"%ProgramFiles(x86)%\Minecraft Launcher\runtime\java-runtime-gamma\windows-x64\java-runtime-gamma\bin\javaw.exe" -jar %file%
goto menu

:exe
cls
echo OptiFine Updater 2.00 by Joery
echo www.github.com/Joery
echo.
echo Drag the OptiFine file into this window and press ENTER
set /p file=
"%AppData%\.minecraft\runtime\java-runtime-gamma\windows-x64\java-runtime-gamma\bin\javaw.exe" -jar %file%
goto menu

:custom
cls
echo OptiFine Updater 2.00 by Joery
echo www.github.com/Joery
echo.
echo Enter the location of the runtime folder and press ENTER
echo For example: D:\Minecraft
set /p path=
echo Drag the OptiFine file into this window and press ENTER
set /p file=
"%path%\runtime\java-runtime-gamma\windows-x64\java-runtime-gamma\bin\javaw.exe" -jar %file%
goto menu

:help
cls
echo OptiFine Updater 2.00 by Joery
echo www.github.com/Joery
echo.
echo Different Minecraft Launcher versions
echo.
echo Microsoft Store (Green Creeper)
echo Known as MinecraftInstaller.exe, it uses a green creeper icon
echo This version is only available on Windows 10 or newer
echo.
echo Program Files (Grey Creeper)
echo Known as MinecraftInstaller.msi, it uses a grey creeper icon
echo This version requires administrator rights to install
echo.
echo Classic (Grass Block)
echo Known as Minecraft.exe, it uses a grass block icon
echo.
echo Press ENTER to return to the main menu
set /p help=
goto menu

:exit
exit
