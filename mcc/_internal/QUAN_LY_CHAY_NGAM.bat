@echo off
chcp 65001 >nul
title Quan Ly Tien Trinh Ngam - ZKTeco

:MENU
cls
echo =========================================
echo    QUAN LY TIEN TRINH NGAM (BACKGROUND)
echo =========================================
echo.
echo 1. Xem trang thai (Status)
echo 2. Khoi dong tien trinh (Start)
echo 3. Dung tien trinh (Stop)
echo 4. Mo file Log
echo 5. Thoat
echo.
set /p chon="Chon chuc nang (1-5): "

if "%chon%"=="1" goto STATUS
if "%chon%"=="2" goto START
if "%chon%"=="3" goto STOP
if "%chon%"=="4" goto LOG
if "%chon%"=="5" exit

:STATUS
tasklist /FI "IMAGENAME eq pythonw.exe" | find /i "pythonw.exe" >nul
set RUNNING1=%errorlevel%
tasklist /FI "IMAGENAME eq mcc.exe" | find /i "mcc.exe" >nul
set RUNNING2=%errorlevel%

if %RUNNING1% neq 0 if %RUNNING2% neq 0 (
    echo.
    echo [TRANG THAI] Tien trinh ngam DANG TAT.
) else (
    echo.
    echo [TRANG THAI] Tien trinh ngam DANG CHAY.
)
pause
goto MENU

:START
echo.
echo Dang khoi dong tien trinh ngam...
if exist "%~dp0..\mcc.exe" (
    start "" "%~dp0..\mcc.exe" --service
) else (
    start "" "%~dp0python32\pythonw.exe" "%~dp0service.py"
)
echo Khoi dong thanh cong!
pause
goto MENU

:STOP
echo.
echo Dang tat tien trinh ngam...
taskkill /F /IM pythonw.exe >nul 2>&1
if exist "%~dp0service.pid" (
    for /f %%i in (%~dp0service.pid) do (
        taskkill /F /PID %%i >nul 2>&1
        del "%~dp0service.pid" >nul 2>&1
    )
)
echo Da tat thanh cong!
pause
goto MENU

:LOG
if exist "%~dp0service.log" (
    start notepad "%~dp0service.log"
) else (
    echo.
    echo Chua co file log! (Tien trinh chua chay bao gio)
    pause
)
goto MENU
