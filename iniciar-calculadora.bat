@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>&1
if errorlevel 1 (
  echo Node.js nao encontrado. Instale Node.js 22 ou superior.
  pause
  exit /b 1
)

where npm >nul 2>&1
if errorlevel 1 (
  echo npm nao encontrado. Reinstale o Node.js incluindo npm.
  pause
  exit /b 1
)

if not exist "node_modules" (
  echo Instalando dependencias. Esta etapa pode exigir internet...
  call npm install
  if errorlevel 1 (
    echo Falha ao instalar dependencias.
    pause
    exit /b 1
  )
)

start "Calculadora OPL8 - servidor local" cmd /k "cd /d ""%~dp0"" && title Calculadora OPL8 - servidor local && npm run dev:offline"

echo Aguardando o servidor local iniciar...
for /L %%i in (1,1,30) do (
  curl -fsS http://127.0.0.1:5173/ >nul 2>&1 && goto :ready
  timeout /t 1 /nobreak >nul
)

echo O servidor nao respondeu em 30 segundos. Verifique a janela do servidor.
pause
exit /b 1

:ready
start "" "http://127.0.0.1:5173"
endlocal
