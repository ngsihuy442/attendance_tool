@echo off
title Khoi Dong Phan Mem Cham Cong
cd /d "%~dp0"

:: 1. Xin quyen Admin de dang ky DLL ngam
powershell -Command "Start-Process 'regsvr32.exe' -ArgumentList '/s', '_internal\zkemkeeper.dll' -Verb RunAs -WindowStyle Hidden"

:: 2. Khoi chay ung dung
start "" "mcc.exe"