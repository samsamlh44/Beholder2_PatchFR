Write-Host "📦 Installation de la traduction française pour Beholder 2 (GOG Galaxy)" -ForegroundColor Cyan

# Chemin GOG par défaut
$gogPath = "$Env:ProgramFiles(x86)\GOG Galaxy\Games\Beholder 2"
$langPath = Join-Path $gogPath "Beholder 2_Data\StreamingAssets\Languages"

# Vérification du dossier du jeu
if (!(Test-Path $gogPath)) {
    Write-Host "❌ Impossible de trouver Beholder 2 dans l'installation GOG Galaxy." -ForegroundColor Red
    Write-Host "Veuillez vérifier que le jeu est installé." -ForegroundColor Yellow
    exit
}

# Création du dossier Languages si nécessaire
if (!(Test-Path $langPath)) {
    New-Item -ItemType Directory -Path $langPath | Out-Null
}

Write-Host "📁 Copie des fichiers..." -ForegroundColor Yellow
Copy-Item -Path "./French" -Destination $langPath -Recurse -Force

Write-Host "✅ Installation terminée !" -ForegroundColor Green
Write-Host "Vous pouvez maintenant lancer le jeu et sélectionner Français dans les options."
