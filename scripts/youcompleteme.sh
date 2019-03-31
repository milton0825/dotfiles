#!/usr/bin/env bash

# Instructions in: https://github.com/Valloric/YouCompleteMe#mac-os-x

brew install vim macvim cmake
ln -s /usr/local/bin/mvim vim

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --go-completer

rm -f vim
