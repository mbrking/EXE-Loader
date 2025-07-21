@echo off
rem ----------------------------------------------------------------
rem Reads exefiles.cfg and starts each executable listed there
rem ----------------------------------------------------------------

setlocal enabledelayedexpansion

rem Path to your config file (adjust if needed)
set CFG_FILE=exefiles.cfg

if not exist "%CFG_FILE%" (
  echo ERROR: Could not find configuration file "%CFG_FILE%".
  goto :eof
)

echo Launching all executables listed in %CFG_FILE%...
for /f "usebackq tokens=* delims=" %%A in ("%CFG_FILE%") do (
  rem Skip empty lines or lines that start with a semicolon
  set "LINE=%%A"
  if defined LINE (
    if NOT "!LINE:~0,1!"==";" (
      echo Starting "!LINE!"...
      start "" "!LINE!"
    )
  )
)

echo All done.
pause
