@echo off
SET /P PROJECT_NAME=Enter your project name: 

REM Crear o verificar la existencia del directorio 'projects'
if not exist "%CD%\projects" (
    mkdir "%CD%\projects"
    if errorlevel 1 goto Error
)

REM Crear directorio principal del proyecto dentro de 'projects'
if not exist "%CD%\projects\%PROJECT_NAME%" (
    mkdir "%CD%\projects\%PROJECT_NAME%"
    if errorlevel 1 goto Error
) else (
    echo The directory %CD%\projects\%PROJECT_NAME% it already exists.
    goto End
)

REM Crear subdirectorios dentro del proyecto
mkdir "%CD%\projects\%PROJECT_NAME%\%PROJECT_NAME%"
if errorlevel 1 goto Error

mkdir "%CD%\projects\%PROJECT_NAME%\tests"
if errorlevel 1 goto Error

REM Crear archivos Python
type nul > "%CD%\projects\%PROJECT_NAME%\%PROJECT_NAME%\__init__.py"
type nul > "%CD%\projects\%PROJECT_NAME%\%PROJECT_NAME%\rename.py"
type nul > "%CD%\projects\%PROJECT_NAME%\tests\__init__.py"
type nul > "%CD%\projects\%PROJECT_NAME%\tests\test_rename.py"

REM Crear archivos de documentación y configuración
type nul > "%CD%\projects\%PROJECT_NAME%\README.md"
type nul > "%CD%\projects\%PROJECT_NAME%\setup.py"

echo The Project structure %PROJECT_NAME% successfully created in %CD%\projects\%PROJECT_NAME%
goto End

:Error
echo There was an error creating the project structure.
goto End

:End
