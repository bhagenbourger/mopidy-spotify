#!/bin/bash

##################################################
# Config ZSH
##################################################
# powerline fonts for zsh theme
current_path=$(pwd)
cd /tmp
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd .. && rm -rf fonts
cd $current_path

# oh-my-zsh plugins
zsh -c 'git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k'
cp .devcontainer/dotfiles/.zshrc ~
cp .devcontainer/dotfiles/.p10k.zsh ~


##################################################
# Python setup
##################################################
uv venv --python 3.13 --system-site-packages --clear 
uv sync --dev
