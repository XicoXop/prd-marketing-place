@echo off
taskkill /FI "WINDOWTITLE eq Calculadora OPL8 - servidor local" /T /F >nul 2>&1
if errorlevel 1 (
  echo Nao encontrei a janela do servidor da Calculadora OPL8.
) else (
  echo Servidor da Calculadora OPL8 encerrado.
)
pause
