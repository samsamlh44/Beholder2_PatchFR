Write-Host "📦 Installation de la traduction française pour Beholder 2" -ForegroundColor Cyan

# Chemins possibles Steam et GOG
$steamPath = "$Env:ProgramFiles(x86)\Steam\steamapps\common\Beholder 2"
$gogPath   = "$Env:ProgramFiles(x86)\GOG Galaxy\Games\Beholder 2"

# Détection de la version installée
if (Test-Path $steamPath) {
    $gamePath = $steamPath
    Write-Host "🔍 Version détectée : Steam" -ForegroundColor Yellow
}
elseif (Test-Path $gogPath) {
    $gamePath = $gogPath
    Write-Host "🔍 Version détectée : GOG Galaxy" -ForegroundColor Yellow
}
else {
    Write-Host "❌ Impossible de trouver Beholder 2 sur Steam ou GOG." -ForegroundColor Red
    Write-Host "Veuillez vérifier l'installation du jeu." -ForegroundColor Yellow
    exit
}

# Dossier de langues
$langPath = Join-Path $gamePath "Beholder 2_Data\StreamingAssets\Languages"

# Création du dossier Languages si nécessaire
if (!(Test-Path $langPath)) {
    New-Item -ItemType Directory -Path $langPath | Out-Null
}

Write-Host "📁 Copie des fichiers..." -ForegroundColor Yellow
Copy-Item -Path "./French" -Destination $langPath -Recurse -Force

Write-Host "✅ Installation terminée !" -ForegroundColor Green
Write-Host "Vous pouvez maintenant lancer le jeu et sélectionner Français dans les options."
