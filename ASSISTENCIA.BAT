@echo off
title Mapeamento - Assistencia
color 0A

cmdkey /delete:RNSERVER01 >nul 2>&1
cmdkey /add:RNSERVER /user:RNSERVER01\Assistencia /pass:abc.123

net use S: /delete /y >nul 2>&1
net use T: /delete /y >nul 2>&1
net use S: "\\RNSERVER01\FILE SERVER\Assistencia" /persistent:yes
net use T: "\\RNSERVER01\FILE SERVER\Geral" /persistent:yes

echo.
echo Mapeamento da Assistencia concluido.
echo Unidade: S:
echo.
pause