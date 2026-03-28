@echo off

npm run build-only

cd dist


git init
git checkout -B main
git add -A
git commit -m 'deploy'

git push -f https://github.com/MarcTarrade/portfolio-tarrade.git main:gh-pages

cd -
