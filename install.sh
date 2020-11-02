#!/bin/bash

cd "$(dirname "$0")"
cp -r dotfiles/. ~

source .env

git config --global user.email "$email"
git config --global user.name "$name"
git config --global user.username "$username"
[ -z "$signingkey" ] || git config --global user.signingkey "$signingkey"
