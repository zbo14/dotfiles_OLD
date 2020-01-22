#!/bin/bash -e

cd "$(dirname "$0")"
cp -r dotfiles/. ~

curl -s https://sks-keyservers.net/sks-keyservers.netCA.pem > ~/.gnupg/sks-keyservers.netCA.pem &

rm -rf ~/.tmux
mkdir ~/.tmux ~/.tmux/plugins
git clone --quiet https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &

read -r -p "Please enter name: " name
read -r -p "Please enter email: " email
read -r -p "Please enter git username: " username

echo '
[user]
    name = '"$name"'
    email = '"$email"'
    username = '"$username" >> ~/.gitconfig
