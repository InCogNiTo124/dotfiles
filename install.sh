#!/usr/bin/env bash
set -e

setup_vim(){
    mkdir -p ~/.config/nvim
    ln ~/.config/nvim/init.vim $(pwd)/init.vim
    pushd ~/.config/nvim
    curl -fLo autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    mkdir plugins && cd plugins
    git clone --recursive https://github.com/ycm-core/YouCompleteMe.git
    cd YouCompleteMe/
    python3 install.py --clang-completer --rust-completer
    popd
}

pushd ~
mkdir repos
cd repos
sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt-get update && yes | sudo apt-get upgrade
sudo apt-get install -y htop neovim build-essential git tmux gimp python3-dev python3-pip python3-virtualenv curl
git clone https://github.com/InCogNiTo124/dotfiles.git
pushd dotfiles
ln $(pwd)/.bash_aliases ~/.bash_aliases
ln $(pwd)/.bash_functions ~/.bash_functions
ln $(pwd)/.inputrc ~/.inputrc
ln $(pwd)/.tmux.conf ~/.tmux.conf
setup_vim()
cat >> ~/.bashrc << EOF

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
EOF
popd
source ~/.bashrc
popd

