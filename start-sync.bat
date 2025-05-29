@echo off
echo Starting GitHub Auto-Sync...
echo This window will stay open while the sync is running.
echo To stop the sync, close this window.
echo.
powershell -ExecutionPolicy Bypass -File "%~dp0auto-sync.ps1"
pause 