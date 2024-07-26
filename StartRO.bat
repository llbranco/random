@echo off
set title=Seletor de resolucao para Poseidon e Ragnarok v0.1 por llbranco OpenkoreBR
title %title%
set opcao=
set opcao2=
set 320x240=
set 640x480=
set 1024x600=
set 1024x768=
set 1600x1200=
set fullscreen=
cls&ver
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo ..%Title%..
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo Script em MS-DOS Batch para Microsoft Windows 32/64 Bits
echo Projeto de llbranco - Openkore.com.br
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo.
echo Selecione uma Opcao
echo.
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo 1 - Iniciar o poseidon
echo 2 - Iniciar o bRO em janela (outras configuracoes altas)
echo 3 - Iniciar o bRO em fullscreen (outras configuracoes altas)
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo.
Set /P opcao= Tecle a opcao desejada e [ENTER] ou apenas [ENTER] para fechar:
Cls
If %opcao% equ 0 goto fim
If %opcao% equ 1 goto poseidon
If %opcao% equ 2 goto fs0
If %opcao% equ 3 goto fs1
cls
:fs0
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v ISFULLSCREENMODE /t REG_DWORD /f /d 00000000
goto menu2
:fs1
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v ISFULLSCREENMODE /t REG_DWORD /f /d 00000001
goto menu2
:menu2
cls
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo ..%NewTitle%..
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo Script em MS-DOS Batch para Microsoft Windows 32/64 Bits
echo Projeto de llbranco - Openkore.com.br
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo.
echo Selecione uma Opcao
echo.
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo 1 - 640x480
echo 2 - 800x600
echo 3 - 1024x600 (ideal para alguns netbooks q não suportam 1024x768)
echo 4 - 1024x768
echo 5 - 1600x1200
echo 6 - escolher XeY (digite valor personalizado) (maior q 320 menor q 4000)
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo.
Set /P opcao2= Tecle a opcao desejada e [ENTER] ou apenas [ENTER] para fechar:
If %opcao2% equ 0 goto fim
If %opcao2% equ 1 goto 640x480
If %opcao2% equ 2 goto 800x600
If %opcao2% equ 3 goto 1024x600
If %opcao2% equ 4 goto 1024x768
If %opcao2% equ 5 goto 1600x1200
:menu3
cls
Set /P resx= Digite o Valor da resolução X
set /p resy= Digite o Valor da resolução Y
if %resx% leq 319 goto erro
if %resy% leq 319 goto erro
if %resx% GTR 4000 goto erro2
if %resy% GTR 4000 goto erro2
goto custom
:erro
echo tente outra resolucao
echo a resolucao que esta tentando usar e muito baixa use valores acima de 320
pause>nul
goto menu3
:erro2
echo tente outra resolucao
echo a resolucao que esta tentando usar e muito alta use valores abaixo de 4000
pause>nul
goto menu3
:custom
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v WIDTH /t REG_DWORD /f /d %resx%
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v HEIGHT /t REG_DWORD /f /d %resy%
goto full
:640x480
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v WIDTH /t REG_DWORD /f /d 640
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v HEIGHT /t REG_DWORD /f /d 480
goto full
:800x600
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v WIDTH /t REG_DWORD /f /d 800
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v HEIGHT /t REG_DWORD /f /d 600
goto full
:1024x600
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v WIDTH /t REG_DWORD /f /d 1024
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v HEIGHT /t REG_DWORD /f /d 600
goto full
:1024x768
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v WIDTH /t REG_DWORD /f /d 1024
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v HEIGHT /t REG_DWORD /f /d 768
goto full
:1600x1200
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v WIDTH /t REG_DWORD /f /d 1600
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v HEIGHT /t REG_DWORD /f /d 1200
goto full
:full
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v DEVICECNT /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v MODECNT /t REG_DWORD /f /d 00000003
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v ISLIGHTMAP /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v SOUNDMODE /t REG_DWORD /f /d 00000001
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v SPEAKERTYPE /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v DIGITALRATETYPE /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v DIGITALBITSTYPE /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v SPRITEMODE /t REG_DWORD /f /d 00000002
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v TEXTUREMODE /t REG_DWORD /f /d 00000002
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v FOG /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v NUMSAMPLETYPE /t REG_DWORD /f /d 00000002
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v CHECKSAVE /t REG_DWORD /f /d 00000001
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v SHOWTIPSATSTARTUP /t REG_DWORD /f /d 00000000
goto startro
:poseidon
REG DELETE "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v WIDTH /f
REG DELETE "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v HEIGHT /f
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v ISFULLSCREENMODE /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v WIDTH /t REG_DWORD /f /d 320
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v HEIGHT /t REG_DWORD /f /d 320
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v DEVICECNT /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v MODECNT /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v ISLIGHTMAP /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v SOUNDMODE /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v SPEAKERTYPE /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v DIGITALRATETYPE /t REG_DWORD /f /d 00000002
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v DIGITALBITSTYPE /t REG_DWORD /f /d 00000001
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v SPRITEMODE /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v TEXTUREMODE /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v FOG /t REG_DWORD /f /d 00000000
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v NUMSAMPLETYPE /t REG_DWORD /f /d 00000002
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v CHECKSAVE /t REG_DWORD /f /d 00000001
REG ADD "HKLM\SOFTWARE\Gravity Soft\Ragnarok" /v SHOWTIPSATSTARTUP /t REG_DWORD /f /d 00000000
copy PoseidonRO.txt .\data\PoseidonRO.xml
start "" /low Poseidon.exe 1rag1 /account:PoseidonRO.xml
exit
:startro
copy PoseidonRO.txt .\data\PoseidonRO.xml
start "" ragexe.exe 1rag1
::start "" /LOW Poseidon.exe 1rag1 /account:PoseidonRO.xml
:exit
exit
