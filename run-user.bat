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
:: options:
::   -wm, --webdriver_manager   是否使用webdriver_manager
::   --headless                 是否使用无头模式
::   --update_anyway            是否强制更新题库
::   --cnmooc                   是否使用cnmooc登录
set COMMANDLINE_ARGS=--webdriver_manager --headless --cnmooc

call run.bat