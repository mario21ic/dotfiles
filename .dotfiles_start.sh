#!/bin/bash
set -xe

#git clone --bare https://github.com/mario21ic/dotfiles $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
#dotfiles status
#dotfiles log
dotfiles reset --hard

echo "source ~/.myrc" >> ~/.bashrc
source ~/.bashrc

#echo "source ~/.myrc" >> ~/.zshrc
#source ~/.zshrc
