#!/bin/sh

sudo apt install -yq zsh git wget
#cp .zshrc ~/.zshrc
touch ~/.zshrc
chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

