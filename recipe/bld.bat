@echo off

del /Q build_env_setup.bat conda_build.bat metadata_conda_debug.yaml 2>nul
del /Q build_env_setup.sh conda_build.sh 2>nul

robocopy . "%LIBRARY_LIB%\mathjax" /E /XD .github /XF .gitignore
if %ERRORLEVEL% GEQ 8 exit /B 1

copy /Y "%RECIPE_DIR%\mathjax-path.bat" "%SCRIPTS%\"
if errorlevel 1 exit /B 1
copy /Y "%RECIPE_DIR%\mathjax-path" "%SCRIPTS%\"
if errorlevel 1 exit /B 1
