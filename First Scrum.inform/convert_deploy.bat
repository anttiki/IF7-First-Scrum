@echo off

rem Parameters & File locations
set INFORM_BUILD_DIR="C:\Documents and Settings\ankirjav\My Documents\Inform\Projects\IF7-First-Scrum\First Scrum.inform\Build"
set SOURCE_FILE=output.z8
set DEST_FILE=firstscrum.z8.js
set CONVERT_DIR=%INFORM_BUILD_DIR%
set PARCHMENT_LOC=C:\user\parchment\parchment
set PUTTY_LOC="c:\program files\putty"

set DEPLOY_SERVER=atlas.sendanor.fi
set DEPLOY_USER=admgames
set DEPLOY_DIR=/home/veljet/admgames/sites/www.altgames.org/www/firstscrum/stories/

rem Convert the file to base64 js
call python %PARCHMENT_LOC%\tools\zcode2js.py %INFORM_BUILD_DIR%\%SOURCE_FILE% > %CONVERT_DIR%\%DEST_FILE%
rem deploy to webserver
call %PUTTY_LOC%\pscp.exe -pw %1 %CONVERT_DIR%\%DEST_FILE% %DEPLOY_USER%@%DEPLOY_SERVER%:%DEPLOY_DIR%
rem Done