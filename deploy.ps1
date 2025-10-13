# Ensure the script stops on errors
$ErrorActionPreference = "Stop"

# Run the build process
Write-Host "Running build process..."
npm run build
if ($LASTEXITCODE -ne 0) {
    Write-Host "Build process failed. Exiting."
    exit 1
}

# Change to the dist directory
if (-Not (Test-Path -Path "dist")) {
    Write-Host "dist directory does not exist. Exiting."
    exit 1
}
Set-Location -Path "dist"

# Create .nojekyll file
Write-Host "Creating .nojekyll file..."
New-Item -ItemType File -Name ".nojekyll" | Out-Null

# Initialize a new Git repository
Write-Host "Initializing Git repository..."
git init
if ($LASTEXITCODE -ne 0) {
    Write-Host "Git initialization failed. Exiting."
    exit 1
}

# Create and switch to the main branch
Write-Host "Creating and switching to main branch..."
git checkout -B main
if ($LASTEXITCODE -ne 0) {
    Write-Host "Git branch creation failed. Exiting."
    exit 1
}

# Add all files to Git
Write-Host "Adding files to Git..."
git add -A
if ($LASTEXITCODE -ne 0) {
    Write-Host "Git add failed. Exiting."
    exit 1
}

# Commit the changes
Write-Host "Committing changes..."
git commit -m "deploy"
if ($LASTEXITCODE -ne 0) {
    Write-Host "Git commit failed. Exiting."
    exit 1
}

# Force push to the GitHub repository
Write-Host "Pushing to GitHub..."
git push -f https://github.com/MarcTarrade/portfolio-tarrade.git main:gh-pages
if ($LASTEXITCODE -ne 0) {
    Write-Host "Git push failed. Exiting."
    exit 1
}

# Return to the original directory
Write-Host "Returning to the original directory..."
Set-Location -Path ".."