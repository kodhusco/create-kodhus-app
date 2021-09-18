#!/bin/bash
git clone https://github.com/kodhusco/kodhus-ui.git "$1"
cd "$1"
rm -rf .git*
git init &> /dev/null
cat <<EOT >> greetings.txt
node_modules/
dist/
.DS_Store
public/
id_rsa_kodhus
id_rsa_kodhus.pub
.vscode
.vscode/
EOT

git add . &> /dev/null
git commit -m "Initial Commit" &> /dev/null
yarn install