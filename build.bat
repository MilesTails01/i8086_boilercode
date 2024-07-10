@echo off

set PROJECT_ROOT=%cd%
set DOSBOX_PATH=%PROJECT_ROOT%\bin\DOSBOX-0.74-3\DOSBox.exe
set CONFIG_FILE=%PROJECT_ROOT%\bin\DOSBOX-0.74-3\dosbox.conf
cd /d %PROJECT_ROOT%

for %%f in (%PROJECT_ROOT%\dist\*) do del %%f

%DOSBOX_PATH%	-conf %CONFIG_FILE% ^
				-c "mount c %PROJECT_ROOT%" ^
				-c "c:" ^
				-c "bin\MASM /a src\main.asm, dist\main.obj, NUL.LST, NUL.CRF" ^
				-c "bin\LINK dist\main.obj, dist\main.exe, NUL.MAP,,," ^
				-c "dist\MAIN.EXE"
