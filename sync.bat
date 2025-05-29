@echo off
echo Starting GitHub Auto-Sync...
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0auto-sync.ps1\"' -Verb RunAs}"
echo If you don't see a PowerShell window, check your taskbar for a minimized window.
pause 