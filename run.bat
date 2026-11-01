
@echo off
set PYTHONIOENCODING=utf-8
title Real-Time Hand Gesture Control System
cd /d "%~dp0\Real-Time-Hand-Gesture-Control-System-for-Racing-Games-main" 2>nul || cd /d "%~dp0"
echo ================================================================
echo   Starting Hand Gesture Control System for Racing Games
echo ================================================================
echo.
echo Make sure your webcam is plugged in and accessible!
echo Controls in camera window:
echo   ESC / Q : Stop and exit
echo   P       : Pause / resume
echo.

call .venv\Scripts\activate.bat
python -X utf8 main.py
if errorlevel 1 (
    echo.
    echo System exited. If camera was not detected, please ensure:
    echo  1. Your webcam is connected and enabled.
    echo  2. Windows Settings ^> Privacy ^& Security ^> Camera access is ON.
    echo  3. No other application (Zoom, Teams, Browser) is using the webcam.
)
pause

