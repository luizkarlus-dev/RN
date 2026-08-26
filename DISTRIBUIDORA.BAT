@echo off
title Mapeamento - Distribuidora
color 0A

cmdkey /delete:RNSERVER01 >nul 2>&1
cmdkey /add:RNSERVER /user:RNSERVER01\Distribuidora /pass:abc.123

net use S: /delete /y >nul 2>&1
net use T: /delete /y >nul 2>&1
net use S: "\\RNSERVER01\FILE SERVER\Distribuidora" /persistent:yes
net use T: "\\RNSERVER01\FILE SERVER\Geral" /persistent:yes

echo.
echo Mapeamento da Distribuidora concluido.
echo Unidade: S:
echo.
pause