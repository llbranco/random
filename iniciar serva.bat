@echo off

::set serva=%cd%
::set serva=c:\pxe\
set serva=%~dp0

echo %serva%
pause

Cd %systemroot%\system32
net sess>nul 2>&1||(start mshta vbscript:code(close(Execute("CreateObject(""Shell.Application"").ShellExecute""%~0"",,,""RunAs"",1"^)^)^)&exit)

echo deletando os compartilhamentos anteriores
Net Share WIA_WDS_SHARE /delete /yes
Net Share WIA_RIS_SHARE /delete /yes

echo recriando compartilhamentos
Net Share WIA_WDS_SHARE=%serva%WIA_WDS /REMARK:"InfoBR PXE"
Net Share WIA_RIS_SHARE=%serva%WIA_RIS /REMARK:"InfoBR PXE"
pause