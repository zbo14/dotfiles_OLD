#!/bin/bash

cd "$(dirname "$0")"

# Copy dotfiles to user directory
cp -r dotfiles/. ~

# Load environment variables
source .env

# Configure git
git config --global user.email "$email"
git config --global user.name "$name"
git config --global user.username "$username"
[ -z "$signingkey" ] || git config --global user.signingkey "$signingkey"

cd

# Configure .muttrc
sed -i 's/set from="name <email>"/set from="'"$email"'"/' .muttrc

# Configure .esmptrc
sed -i 's/<email>/'"$email"'/g' .esmtprc
sed -i 's/<password>/'"$password"'/' .esmtprc
