@echo off
title Mapeamento - Compras
color 0A

cmdkey /delete:RNSERVER01 >nul 2>&1
cmdkey /add:RNSERVER /user:RNSERVER\Compras /pass:abc.123

net use S: /delete /y >nul 2>&1
net use T: /delete /y >nul 2>&1
net use S: "\\RNSERVER01\FILE SERVER\Compras" /persistent:yes
net use T: "\\RNSERVER01\FILE SERVER\Geral" /persistent:yes

echo.
echo Mapeamento de Compras concluido.
echo Unidade: S:
echo.

echo Iniciando copia dos arquivos...
robocopy C:\Temp S:\ /E /COPY:DAT /R:2 /W:2

echo.
echo Copia concluida.
echo.

pause