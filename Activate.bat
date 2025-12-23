@echo off

slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms8.msguides.com
slmgr /ato
echo WindowsActivate Complete

if exist "C:\Program Files\Microsoft Office\root\Office16\ospp.vbs" cd /d "C:\Program Files\Microsoft Office\root\Office16"
if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\ospp.vbs" cd /d "C:\Program Files (x86)\Microsoft Office\root\Office16"
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2021VL_KMS*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x"
cscript ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH
cscript ospp.vbs /sethst:kms.msgang.com
cscript ospp.vbs /act
echo OfficeActivate Complete

reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"
echo RightClick Setup Complete

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device" /v  "DevicePasswordLessBuildVersion" /t "REG_DWORD" /d "0" /f
call C:\Windows\System32\Netplwiz.exe
echo AutoLogin Setup Complete

pause