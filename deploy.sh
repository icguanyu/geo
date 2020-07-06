#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'auto deploy to gh-pages'


git push -f https://github.com/icguanyu/geo.git master:gh-pages
# git subtree push -f --prefix dist origin gh-pages

cd -

# (執行腳本)sh ./deploy.sh