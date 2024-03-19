@echo off
echo exportando todo perfil do chrome

reg export HKEY_CURRENT_USER\SOFTWARE\Google\Chrome\PreferenceMACs backup_perfil_chrome.reg /y
pause