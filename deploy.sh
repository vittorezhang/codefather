#!/usr/bin/env sh
set -e

npm run docs:build
cd dist
git init
git add -A
git commit -m 'deploy'
# xx.xx.xx.xx为云服务器地址
git push -f --set-upstream git@175.178.57.58:/home/git/project.git dev
cd - 