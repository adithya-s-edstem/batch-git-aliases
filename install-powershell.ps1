# PowerShell Git Aliases Installer
# This script helps you install git aliases for PowerShell

Write-Host "Git Aliases PowerShell Installer" -ForegroundColor Green
Write-Host "=================================" -ForegroundColor Green
Write-Host ""

# Get the current script directory
$scriptDir = $PSScriptRoot
$modulePath = Join-Path $scriptDir "GitAliases.psm1"

# Check if the module file exists
if (-not (Test-Path $modulePath)) {
    Write-Host "Error: GitAliases.psm1 not found in $scriptDir" -ForegroundColor Red
    return
}

Write-Host "Found GitAliases.psm1 module" -ForegroundColor Green
Write-Host ""

# Determine PowerShell profile path
$profilePath = $PROFILE
Write-Host "Your PowerShell profile is at: $profilePath" -ForegroundColor Cyan
Write-Host ""

# Check if profile exists
if (-not (Test-Path $profilePath)) {
    Write-Host "PowerShell profile doesn't exist. Creating it..." -ForegroundColor Yellow
    $profileDir = Split-Path $profilePath
    if (-not (Test-Path $profileDir)) {
        New-Item -ItemType Directory -Path $profileDir -Force | Out-Null
    }
    New-Item -ItemType File -Path $profilePath -Force | Out-Null
    Write-Host "Created profile at $profilePath" -ForegroundColor Green
    Write-Host ""
}

# Check if module is already imported in profile
# Handle both empty and non-existent profile files
$profileContent = ""
if (Test-Path $profilePath) {
    $profileContent = Get-Content $profilePath -Raw -ErrorAction SilentlyContinue
    if ($null -eq $profileContent) {
        $profileContent = ""
    }
}

# Use flexible regex to match any Import-Module line referencing GitAliases
# Pattern avoids matching commented lines by requiring non-comment at start
if ($profileContent -match '(?m)^\s*[^#]*Import-Module.*GitAliases') {
    Write-Host "Git Aliases module is already configured in your profile!" -ForegroundColor Yellow
    Write-Host ""
} else {
    # Add import statement to profile
    $importLine = "Import-Module '$modulePath'"
    Write-Host "Adding Git Aliases module to your PowerShell profile..." -ForegroundColor Cyan
    Add-Content -Path $profilePath -Value "`n# Git Aliases Module"
    Add-Content -Path $profilePath -Value $importLine
    Write-Host "Successfully added to profile!" -ForegroundColor Green
    Write-Host ""
}

Write-Host "Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "To start using the aliases:" -ForegroundColor Cyan
Write-Host "1. Close and reopen PowerShell, OR" -ForegroundColor White
Write-Host "2. Run: . `$PROFILE" -ForegroundColor White
Write-Host ""
Write-Host "Available aliases:" -ForegroundColor Cyan
Write-Host "  st      - git status" -ForegroundColor White
Write-Host "  a       - git add ." -ForegroundColor White
Write-Host "  c       - git commit -m" -ForegroundColor White
Write-Host "  pl      - git pull" -ForegroundColor White
Write-Host "  gps     - git push" -ForegroundColor White
Write-Host "  f       - git fetch" -ForegroundColor White
Write-Host "  br      - git branch -a" -ForegroundColor White
Write-Host "  co      - git checkout" -ForegroundColor White
Write-Host "  cb      - git checkout -b" -ForegroundColor White
Write-Host "  m       - git merge" -ForegroundColor White
Write-Host "  l       - git log --oneline --graph --decorate" -ForegroundColor White
Write-Host "  gls     - git log --oneline -10" -ForegroundColor White
Write-Host "  d       - git diff" -ForegroundColor White
Write-Host "  df      - git diff --staged" -ForegroundColor White
Write-Host "  sh      - git stash" -ForegroundColor White
Write-Host "  pop     - git stash pop" -ForegroundColor White
Write-Host "  rb      - git rebase" -ForegroundColor White
Write-Host "  gcp     - git cherry-pick" -ForegroundColor White
Write-Host "  amend   - git commit --amend" -ForegroundColor White
Write-Host "  undo    - git reset --soft HEAD~1" -ForegroundColor White
Write-Host "  ...and more!" -ForegroundColor White
Write-Host ""
Write-Host "For full list, see README.md" -ForegroundColor Gray
Write-Host ""