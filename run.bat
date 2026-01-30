@echo off
title YADI77 WhatsApp Spammer v3.0
echo ========================================
echo    YADI77 WHATSAPP SPAMMER v3.0
echo    EXCLUSIVE FOR M.YADI ONLY
echo ========================================

REM Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo Python not found! Please install Python 3.7+
    echo Download from: https://python.org
    pause
    exit /b 1
)

REM Check pyautogui
echo Checking dependencies...
python -c "import pyautogui" >nul 2>&1
if errorlevel 1 (
    echo Installing pyautogui...
    pip install pyautogui
)

REM Run main script
echo Starting spammer...
python main.py

pause
