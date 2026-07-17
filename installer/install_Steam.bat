@echo off
title Installation traduction FR - Beholder 2 (Steam)

echo ================================================
echo   Installation de la traduction FR - Steam
echo ================================================
echo.

set GAMEPATH="%ProgramFiles(x86)%\Steam\steamapps\common\Beholder 2"

echo Vérification du dossier Steam...

if not exist %GAMEPATH% (
    echo ❌ Impossible de trouver Beholder 2 dans l'installation Steam.
    echo Vérifiez que le jeu est installé.
    pause
    exit /b
)

set LANGPATH=%GAMEPATH%\Beholder 2_Data\StreamingAssets\Localization

if not exist %LANGPATH% (
    mkdir %LANGPATH%
)

echo 📁 Copie des fichiers...
xcopy /E /Y ".\fr" %LANGPATH%

echo.
echo ✅ Installation terminée !
echo Lancez le jeu et sélectionnez Français dans les options.
echo.

pause
