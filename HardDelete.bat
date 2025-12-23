@echo off
setlocal enabledelayedexpansion

set "TARGET=%~1"

if "%TARGET%"=="" (
    echo [ERROR] Drag and drop a file or folder onto this BAT.
    pause
    exit /b
)

echo ======================================================
echo TARGET: %TARGET%
echo ======================================================
echo.

for /l %%i in (1,1,2) do (
    set /a "RND=!random! %% 900 + 100"
    
    echo [Step %%i/3] Please type the security code to proceed.
    set /p "INPUT=Enter [ !RND! ]: "

    if not "!INPUT!"=="!RND!" (
        echo.
        echo [FAILED] Incorrect code. Deletion canceled.
        pause
        exit /b
    )
    echo [OK] Code accepted.
    echo.
)

echo Processing...

:: Take ownership and Grant permissions
takeown /f "%TARGET%" /r /d y >nul 2>&1
icacls "%TARGET%" /grant administrators:F /t /c >nul 2>&1

:: Delete Folder or File
if exist "%TARGET%\" (
    rd /s /q "%TARGET%"
) else (
    del /f /q "%TARGET%"
)

if %errorlevel% equ 0 (
    echo.
    echo [SUCCESS] Deleted successfully.
) else (
    echo.
    echo [ERROR] Access denied or file in use.
)

pause
exit /b
