@echo off

if not defined PYTHON (set PYTHON=python)
if not defined GIT_PATH (set GIT=git)
if not defined VENV_DIR (set VENV_DIR=%~dp0%venv)
if defined USERNAME (set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% --username %USERNAME%)
if defined PASSWORD (set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% --password %PASSWORD%)

:: check if python is installed, if not, install python using winget
where.exe /Q %PYTHON% || winget install Python.Python.3.11

:: check if git is installed, if not, install git using winget
where.exe /Q %GIT% || winget install Git.GIT

:: keep git up to date
git pull

:: check if venv exists, if not, create venv
if not exist venv (
    %PYTHON% -m venv "%VENV_DIR%"
    echo Creating venv in directory %VENV_DIR%
)

:: activate venv
set PYTHON="%VENV_DIR%\Scripts\Python.exe"
echo venv %PYTHON%

:: install requirements
%PYTHON% -m pip install -q -r requirements.txt
echo Installed requirements

:: run python script
%PYTHON% run.py %COMMANDLINE_ARGS%