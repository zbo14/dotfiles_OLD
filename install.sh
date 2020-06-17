#!/bin/bash

cd "$(dirname "$0")"
cp -r dotfiles/. ~

curl -s https://sks-keyservers.net/sks-keyservers.netCA.pem > ~/.gnupg/sks-keyservers.netCA.pem &

rm -rf ~/.tmux
mkdir ~/.tmux ~/.tmux/plugins
git clone --quiet https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &

read -er -p "Please enter your name: " name
read -er -p "Please enter your email: " email
read -er -p "Please enter your git username: " username

signingkey="$(gpg -K | grep sec | grep -oE '0x[0-9A-F]+' | cut -c3-)"
[[ "$signingkey" =~ [0-9A-F]+ ]] || read -er -p "Please enter your signing key: " signingkey

git config --global user.email "$email"
git config --global user.name "$name"
git config --global user.username "$username"
git config --global user.signingkey "$signingkey"
