#!/bin/sh

sudo apt install -yq zsh git wget
touch ~/.zshrc
chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g' ~/.zshrc
echo 'alias gs="git status"' >> ~/.zshrc
echo 'alias gd="git diff"' >> ~/.zshrc
echo 'alias gl="git log --oneline"' >> ~/.zshrc
