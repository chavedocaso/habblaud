@echo off
set HABBLAUD_ALLOW_IFRAME=1
set HABBLAUD_PORT=4747
echo Iniciando Habblaud em http://localhost:4747...
node dist\server\index.js
