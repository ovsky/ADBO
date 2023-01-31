@echo off
setlocal
chcp 65001 2>nul >nul

FOR /F "tokens=* delims=" %%x in (%~dp0\%0.path) DO set target=%%x

"%target%" %*