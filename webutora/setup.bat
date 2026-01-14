@echo off
echo === Webutora setup ===

echo Checking Python 3.10...
py -3.10 --version >nul 2>&1
if errorlevel 1 (
  echo Python 3.10 is not installed.
  echo Please install Python 3.10.x (64bit).
  pause
  exit /b
)

echo Checking Poetry...
poetry --version >nul 2>&1
if errorlevel 1 (
  echo Poetry is not installed.
  echo Install Poetry first.
  pause
  exit /b
)

echo Installing dependencies...
poetry install

echo Setup complete.
pause
