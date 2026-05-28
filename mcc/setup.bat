@echo off
title Khoi Dong Phan Mem Cham Cong

:: 1. Tự động xin quyền Administrator để đăng ký DLL hệ thống
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

:: 2. Đăng ký thư viện ZKTeco vào Windows (SysWOW64) ngầm
C:\Windows\SysWOW64\regsvr32.exe /s "%~dp0_internal\zkemkeeper.dll"

:: 3. Khởi chạy ứng dụng chính
start "" "%~dp0mcc.exe"