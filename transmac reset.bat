@echo off

REM TransMac Reset Trial by Sopor

REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved" /f

timeout /t 2 /nobreak >nul

if EXIST "C:\Program Files (x86)\TransMac\TransMac.exe" (
    start "" "C:\Program Files (x86)\TransMac\TransMac.exe"
    goto END
)

if EXIST "%~dp0TransMac.exe" start "" "%~dp0TransMac.exe"

:END
