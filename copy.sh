#!/bin/bash -e

cd "$(dirname $0)"

cp -R dotfiles/. ~

chmod -R u+x ~/.local/bin
