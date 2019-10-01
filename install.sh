#!/usr/bin/env bash
set -e
sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt-get update && yes | sudo apt-get upgrade
sudo apt-get install htop neovim build-essential git tmux
ln $(pwd)/.bash_aliases ~/.bash_aliases
ln $(pwd)/.bash_functions ~/.bash_functions
cat >> ~/.bashrc << EOF

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
EOF
source ~/.bashrc
