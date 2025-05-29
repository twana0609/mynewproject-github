@echo off
cd /d "%~dp0"
git add .
git commit -m "Quick sync: %date% %time%"
git push origin main
echo Changes synced! Press any key to exit...
pause 