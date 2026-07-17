Write-Host "📦 Installation de la traduction française pour Beholder 2 (Steam)" -ForegroundColor Cyan

# Chemin Steam par défaut
$steamPath = "$Env:ProgramFiles(x86)\Steam\steamapps\common\Beholder 2"
$langPath = Join-Path $steamPath "Beholder 2_Data\StreamingAssets\Localization"

# Vérification du dossier du jeu
if (!(Test-Path $steamPath)) {
    Write-Host "❌ Impossible de trouver Beholder 2 dans l'installation Steam." -ForegroundColor Red
    Write-Host "Veuillez vérifier que le jeu est installé." -ForegroundColor Yellow
    exit
}

# Création du dossier Languages si nécessaire
if (!(Test-Path $langPath)) {
    New-Item -ItemType Directory -Path $langPath | Out-Null
}

Write-Host "📁 Copie des fichiers..." -ForegroundColor Yellow
Copy-Item -Path "./fr" -Destination $langPath -Recurse -Force

Write-Host "✅ Installation terminée !" -ForegroundColor Green
Write-Host "Vous pouvez maintenant lancer le jeu et sélectionner Français dans les options."