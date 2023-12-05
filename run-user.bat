@echo off
setlocal enabledelayedexpansion

:: Username and password
set USERNAME=
set PASSWORD=

:: Python path
set PYTHON=
:: Git path
set GIT=
:: Virtual environment path
set VENV_DIR=
:: Command line arguments
set COMMANDLINE_ARGS=--webdriver_manager --headless

call run.bat