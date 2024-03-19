@echo off
echo liberando a execucao de scripts powershell
powershell -Command "& {Set-ExecutionPolicy unrestricted; Set-ExecutionPolicy -ExecutionPolicy unrestricted; Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser;}"
pause
::Set-ExecutionPolicy unrestricted
::Set-ExecutionPolicy -ExecutionPolicy unrestricted
::Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser