@echo off

set PROJECT_ROOT=%cd%
set DOSBOX_PATH=%PROJECT_ROOT%\bin\DOSBOX-0.74-3\DOSBox.exe
set CONFIG_FILE=%PROJECT_ROOT%\bin\DOSBOX-0.74-3\dosbox.conf
cd /d %PROJECT_ROOT%

%DOSBOX_PATH%	-conf %CONFIG_FILE% ^
				-c "mount c %PROJECT_ROOT%" ^
				-c "c:"
