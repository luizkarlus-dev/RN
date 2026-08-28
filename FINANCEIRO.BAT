@echo off
title Mapeamento - Financeiro
color 0A

cmdkey /delete:RNSERVER01 >nul 2>&1
cmdkey /add:RNSERVER01 /user:RNSERVER01\Financeiro /pass:abc.123

net use S: /delete /y >nul 2>&1
net use T: /delete /y >nul 2>&1
net use S: "\\RNSERVER01\FILE SERVER\Financeiro" /persistent:yes
net use T: "\\RNSERVER01\FILE SERVER\Geral" /persistent:yes

echo.
echo Mapeamento de Financeiro concluido.
echo Unidade: S:
echo.
pause