@echo off
DISM /Online /Set-Edition:ServerDatacenter /ProductKey:D764K-2NDRG-47T6Q-P8T8W-YP6DF /AcceptEula /NoRestart

slmgr /ipk D764K-2NDRG-47T6Q-P8T8W-YP6DF
slmgr /skms kms8.msguides.com
slmgr /ato
echo WindowsActivate Complete

echo.
echo The edition change and various settings have been completed. The system will restart.
timeout /t 5 /nobreak >nul
shutdown /r /t 0