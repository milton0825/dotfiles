#!/usr/bin/env bash

set -e

# Change directory to the directory of the script
cd "$(dirname "$0")"

mv -f .bash_profile ~/.bash_profile

# Later on, we can just modify the scripts in the repo
# and update git.
ln -s ~/.bashrc .bashrc
ln -s ~/.vimrc .vimrc


./scripts/homebrew.sh
./scripts/youcompleteme.sh


# Install all vundle plugins
vim +PluginInstall +qall


