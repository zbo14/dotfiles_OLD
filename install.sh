#!/bin/bash -e

cd "$(dirname "$0")"
cp -r dotfiles/. ~

curl -s https://sks-keyservers.net/sks-keyservers.netCA.pem > ~/.gnupg/sks-keyservers.netCA.pem &

rm -rf ~/.tmux
mkdir ~/.tmux ~/.tmux/plugins
git clone --quiet https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &

read -r -p "Please enter your name: " name
read -r -p "Please enter your email: " email
read -r -p "Please enter your git username: " username

git config --global user.email "$email"
git config --global user.name "$name"
git config --global user.username "$username"
