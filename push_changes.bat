@echo off
echo Checking for changes...
git diff --quiet
if %errorlevel% equ 0 (
    echo No changes detected. Nothing to push.
) else (
    echo Changes detected. Adding, committing, and pushing...
    git add .
    git commit -m "Auto update"
    git push
    echo Done!
)
pause