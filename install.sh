#!/usr/bin/env bash

setup_vim() {
    mkdir -p ~/.config/nvim
    ln -vf "${PWD}/init.vim" ~/.config/nvim/init.vim
    pushd ~/.config/nvim || exit
    curl -fLo autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    mkdir plugins && cd plugins || exit
    git clone --recursive https://github.com/ycm-core/YouCompleteMe.git
    cd YouCompleteMe/ || exit
    /usr/bin/python3 install.py --clang-completer --rust-completer
    popd || exit
}

pushd ~ || exit
mkdir -p repos
cd repos || exit
#sudo add-apt-repository -y ppa:kubuntu-ppa/backports
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y htop neovim build-essential git tmux gimp python3-dev python3-pip python3-virtualenv curl sqlite3 sqlite3-doc python3-tk
python3 -m pip install pynvim
git clone https://github.com/InCogNiTo124/dotfiles.git
pushd dotfiles || exit
#ln -vf $(pwd)/.bash_aliases ~/.bash_aliases
#ln -vf $(pwd)/.bash_functions ~/.bash_functions
#ln -vf $(pwd)/.inputrc ~/.inputrc
#ln -vf $(pwd)/.tmux.conf ~/.tmux.conf
ln -vf "${PWD}/.bashrc" ~/.bashrc
setup_vim
popd || exit
source ~/.bashrc
popd || exit

# checked with shellcheck.net
