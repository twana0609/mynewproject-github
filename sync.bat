@echo off
echo Auto-sync is running. Keep this window open.
echo Press Ctrl+C to stop.

:loop
git add .
git commit -m "Auto sync" --quiet
git push origin main --quiet
ping 127.0.0.1 -n 6 > nul
goto loop 