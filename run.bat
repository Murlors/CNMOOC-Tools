@echo off

if not defined GIT (
    :: check if git is installed, if not, install git using winget
    where.exe /Q git || winget install Git.Git
    set GIT=git
)

if not defined VENV_DIR (set VENV_DIR=%~dp0%venv)
if not defined PYTHON (
    :: check if python is installed, if not, install python using winget
    where.exe /Q python || winget install Python.Python.3.11
    set PYTHON=python
)

if defined USERNAME (set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% --username %USERNAME%)
if defined PASSWORD (set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% --password %PASSWORD%)

:: keep git up to date
%GIT% pull || (
    echo Failed to update git repository
    exit /b 1
)

:: check if venv exists, if not, create venv
if not exist %VENV_DIR% (
    %PYTHON% -m venv "%VENV_DIR%"
    echo Creating venv in directory %VENV_DIR%
)

:: activate venv
if exist "%VENV_DIR%\Scripts\activate.bat" (
    call "%VENV_DIR%\Scripts\activate.bat"
) else (
    echo Failed to activate venv
    exit /b 1
)

:: install requirements
set PACKAGES_FILE=requirements.txt
set INSTALLED_PACKAGES_FILE=installed_packages.txt

if not exist %INSTALLED_PACKAGES_FILE% (
    pip freeze > %INSTALLED_PACKAGES_FILE%
    echo Created file %INSTALLED_PACKAGES_FILE%
)

:: check if requirements.txt exists
if not exist %PACKAGES_FILE% (
    echo %PACKAGES_FILE% not found
    exit /b 1
)

:: install packages from requirements.txt
for /f "usebackq delims=" %%i in ("%PACKAGES_FILE%") do (
    findstr /i /c:"%%i" %INSTALLED_PACKAGES_FILE% > nul || (
        :: install package, if it fails, exit with error code 1
        pip install -q "%%i" || (
            echo Failed to install package %%i
            exit /b 1
        )
        echo Installed package %%i
        pip freeze >> %INSTALLED_PACKAGES_FILE%
        echo Added package %%i to %INSTALLED_PACKAGES_FILE%
    )
)

echo You have all the required packages installed

:: check if run.py exists
if not exist run.py (
    echo run.py not found
    exit /b 1
)

:: run python script
python run.py %COMMANDLINE_ARGS%