@echo off
chcp 65001 >nul
title Installation traduction FR - Beholder 2 (GOG)

echo ================================================
echo   Installation traduction FR - GOG
echo ================================================
echo.

echo Une fenetre va s'ouvrir pour selectionner le dossier du jeu.
echo.

:: Chemin absolu du dossier fr (dans le dossier du script)
set SOURCE=%~dp0fr

if not exist "%SOURCE%" (
    echo ❌ Le dossier "fr" est introuvable.
    echo Il doit se trouver dans le meme dossier que ce script.
    echo Chemin recherche : %SOURCE%
    pause
    exit /b
)

:: Script PowerShell temporaire pour la fenetre de selection
set PSFILE=%temp%\selectfolder.ps1

echo Add-Type -AssemblyName System.Windows.Forms; > "%PSFILE%"
echo $f = New-Object System.Windows.Forms.FolderBrowserDialog; >> "%PSFILE%"
echo $f.Description = 'Selectionnez le dossier du jeu Beholder 2'; >> "%PSFILE%"
echo $f.ShowNewFolderButton = $false; >> "%PSFILE%"
echo if ($f.ShowDialog() -eq 'OK') { $f.SelectedPath } >> "%PSFILE%"

:: Execution STA
for /f "usebackq delims=" %%i in (`powershell -sta -noprofile -ExecutionPolicy Bypass -File "%PSFILE%"`) do (
    set GAMEPATH=%%i
)

del "%PSFILE%"

echo Chemin selectionne : [%GAMEPATH%]
echo.

:: Detection automatique du dossier Data
set DATAPATH=

if exist "%GAMEPATH%\Beholder2_Data" (
    set DATAPATH=%GAMEPATH%\Beholder2_Data
)

if exist "%GAMEPATH%\Beholder 2_Data" (
    set DATAPATH=%GAMEPATH%\Beholder 2_Data
)

if "%DATAPATH%"=="" (
    echo ❌ Aucun dossier Data trouve dans :
    echo %GAMEPATH%
    echo Dossier attendu : Beholder2_Data ou Beholder 2_Data
    pause
    exit /b
)

echo Dossier Data detecte : [%DATAPATH%]
echo.

set LANGPATH="%DATAPATH%\StreamingAssets\Localization\fr"

if not exist %LANGPATH% (
    mkdir %LANGPATH%
)

echo Copie des fichiers depuis : %SOURCE%
echo Vers : %LANGPATH%
echo.

xcopy /E /I /Y "%SOURCE%" %LANGPATH%

echo.
echo ================================================
echo ✔ Installation reussie !
echo La fenetre va se fermer dans 3 secondes...
echo ================================================
timeout /t 3 >nul
exit