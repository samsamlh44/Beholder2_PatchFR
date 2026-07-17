@echo off
title Installation traduction FR - Beholder 2 (GOG)

echo ================================================
echo   Installation de la traduction FR - GOG
echo ================================================
echo.

echo Entrez le chemin du dossier du jeu Beholder 2
echo Exemple : E:\Beholder2
set /p GAMEPATH="Chemin du jeu : "

echo.
echo Verification du dossier...

if not exist "%GAMEPATH%" (
    echo ❌ Le dossier "%GAMEPATH%" n'existe pas.
    echo Vérifiez le chemin et réessayez.
    pause
    exit /b
)

if not exist "%GAMEPATH%\Beholder 2_Data" (
    echo ❌ Le dossier "Beholder 2_Data" est introuvable dans :
    echo "%GAMEPATH%"
    echo Assurez-vous d'avoir indiqué le dossier racine du jeu.
    pause
    exit /b
)

echo.
echo 📁 Copie des fichiers...

set LANGPATH="%GAMEPATH%\Beholder 2_Data\StreamingAssets\Localization"

if not exist %LANGPATH% (
    mkdir %LANGPATH%
)

xcopy /E /Y ".\fr" %LANGPATH%

echo.
echo ✅ Installation terminée !
echo Lancez le jeu et sélectionnez Français dans les options.
echo.

pause
