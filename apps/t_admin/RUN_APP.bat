@echo off
REM Complete Flutter Setup and Run Script
setlocal enabledelayedexpansion

cd /d "C:\Users\sadar\Music\Single-Vendor-Travel-main\apps\t_admin"

echo.
echo ========================================
echo Flutter Admin App - Complete Setup
echo ========================================
echo.

echo [Step 1/4] Cleaning project...
call flutter clean
if errorlevel 1 (
    echo ERROR: Flutter clean failed
    pause
    exit /b 1
)

echo.
echo [Step 2/4] Getting dependencies...
call flutter pub get
if errorlevel 1 (
    echo ERROR: Flutter pub get failed
    pause
    exit /b 1
)

echo.
echo [Step 3/4] Generating code files...
call flutter pub run build_runner build --delete-conflicting-outputs
if errorlevel 1 (
    echo WARNING: Build runner had issues (continuing anyway)
)

echo.
echo [Step 4/4] Running app in Chrome...
echo.
echo Starting Flutter development server...
call flutter run -d chrome

endlocal
pause
