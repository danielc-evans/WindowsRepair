@echo off
ECHO The script will repair Windows to fix file corruption issues. 
ECHO You will not lose files or data.
timeout 10
dism.exe /online /cleanup-image /scanhealth
dism.exe /online /cleanup-image /restorehealth
dism.exe /online /cleanup-image /startcomponentcleanup
sfc /scannow
ECHO Providing there were no errors, the repair is now complete.
ECHO Please restart your machine after the window closes.
ECHO Closing window after timeout...
timeout 10
exit 0