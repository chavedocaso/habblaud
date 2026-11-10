@echo off
title QG - Cockpit Hermes & Habblaud
cd /d "D:\01_Projetos\04_Labs_Estudos\habblaud"
set HABBLAUD_ALLOW_IFRAME=1
set HABBLAUD_PORT=4747

echo ========================================================
echo   Iniciando Habblaud (Escritorio de Agentes Claude/Codex)
echo ========================================================
start "" /b node dist\server\index.js

timeout /t 2 /nobreak >nul
echo Abrindo Estacao Unificada (Hermes + Habblaud)...
start "" "qg-habblaud-cockpit.html"

echo.
echo Tudo pronto! O Habblaud esta rodando em segundo plano.
echo Para fechar quando terminar o dia, basta fechar esta janela.
pause
taskkill /f /im node.exe >nul 2>&1
