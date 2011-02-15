@echo off

rem Parameters & File locations
set INFORM_BUILD_DIR="C:\Documents and Settings\ankirjav\My Documents\Inform\Projects\IF7-First-Scrum\First Scrum.inform\Build"
set SOURCE_FILE=output.z8
set DEST_FILE=firstscrum.z8.js
set CONVERT_DIR=%INFORM_BUILD_DIR%
set PARCHMENT_LOC=C:\user\parchment\parchment
set PUTTY_LOC="c:\program files\putty"

rem set DEPLOY_SERVER=atlas.sendanor.fi
rem set DEPLOY_USER=veljet
set DEPLOY_DIR=C:\user\parchment\parchment\stories\

rem Convert the file to base64 js
call python %PARCHMENT_LOC%\tools\zcode2js.py %INFORM_BUILD_DIR%\%SOURCE_FILE% > %CONVERT_DIR%\%DEST_FILE%
rem deploy to local dir
call xcopy.exe /Y %CONVERT_DIR%\%DEST_FILE% %DEPLOY_DIR%
rem Done