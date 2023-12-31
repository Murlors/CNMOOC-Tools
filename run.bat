@echo off

:: Check and install Git
if not defined GIT (
    where.exe /Q git || winget install Git.Git
    set GIT=git
)

:: Check and set Python
if not defined PYTHON (
    where.exe /Q python || winget install Python.Python.3.11
    set PYTHON=python
)

:: Set virtual environment directory
if not defined VENV_DIR (set "VENV_DIR=%~dp0venv")

:: Pass command line arguments
if defined USERNAME set COMMANDLINE_ARGS=!COMMANDLINE_ARGS! --username !USERNAME!
if defined PASSWORD set COMMANDLINE_ARGS=!COMMANDLINE_ARGS! --password !PASSWORD!

:: Keep git up to date
!GIT! pull || (
    echo Failed to update git repository
    pause
)

:: Check and create virtual environment
if not exist !VENV_DIR! (
    !PYTHON! -m venv "!VENV_DIR!" || (
        echo Failed to create venv in directory !VENV_DIR!
        pause
    )
    echo Creating venv in directory !VENV_DIR!
)

:: Install requirements
set "PACKAGES_FILE=requirements.txt"
set "INSTALLED_PACKAGES_FILE=installed_packages.txt"

:: Activate virtual environment
set "PYTHON=!VENV_DIR!\Scripts\python.exe"

:: Check if installed packages file exists
if not exist !INSTALLED_PACKAGES_FILE! (
    echo No installed packages found. Installing from !PACKAGES_FILE!.
    !PYTHON! -m pip install -r !PACKAGES_FILE! --disable-pip-version-check || (
        echo Failed to install packages from !PACKAGES_FILE!
        pause
    )
) else (
    echo Installed packages file found. Checking for updates.
    :: Install new packages or update existing ones
    for /f "usebackq delims=" %%i in ("!PACKAGES_FILE!") do (
        findstr /i /c:"%%i" !INSTALLED_PACKAGES_FILE! > nul || (
            !PYTHON! -m pip install -q "%%i" --disable-pip-version-check || (
                echo Failed to install or update package %%i
                pause
            ) && (
                echo Installed or updated package %%i
            )
        )
    )
)

:: Update installed packages file
!PYTHON! -m pip freeze > !INSTALLED_PACKAGES_FILE! || (
    echo Failed to update !INSTALLED_PACKAGES_FILE!
    pause
)
echo Updated !INSTALLED_PACKAGES_FILE!

:: Run python script
!PYTHON! run.py !COMMANDLINE_ARGS! || (
    echo Failed to run run.py
    pause
)
endlocal