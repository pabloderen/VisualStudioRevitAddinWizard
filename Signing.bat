@echo off
pushd "%~dp0"
if exist cs (goto okcs) else (echo "No cs folder found." && goto exit)
:okcs
SignTool sign /f "path to your PFX file" /p "your PFX file password" /tr http://timestamp.comodoca.com  /td %cd%/bin/Debug/
:exit
