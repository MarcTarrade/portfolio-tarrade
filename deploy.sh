#!/usr/bin/env sh

# abandonner en cas d'erreur
set -e

# construire
npm run build-only

# Naviguez dans le répertoire de sortie de la compilation
cd dist

# Placez .nojekyll pour contourner le traitement Jekyll
echo > .nojekyll

git init
git checkout -B main
git add -A
git commit -m 'deploy'

git push -f git@github.com:MarcTarrade/portfolio-tarrade.git main:gh-pages

cd -
