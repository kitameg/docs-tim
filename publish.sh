#!/usr/bin/env sh

# abort on errors
set -e

# build
rm -rf build
yarn run build

cd build/site/

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

git push -f git@github.com:kitameg/docs-tim.git gh-pages

cd -