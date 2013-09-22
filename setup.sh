#!/bin/sh

cd ${HOME}

# create symbolic links
ln -s ${HOME}/dotfiles/_vim ${HOME}/.vim
ln -s ${HOME}/dotfiles/_tmuxinator ${HOME}/.tmuxinator

ln -s ${HOME}/dotfiles/_zshrc ${HOME}/.zshrc
ln -s ${HOME}/dotfiles/_zshrc.Darwin ${HOME}/.zshrc.Darwin
ln -s ${HOME}/dotfiles/_vimrc ${HOME}/.vimrc
ln -s ${HOME}/dotfiles/_tmux.conf ${HOME}/.tmux.conf
ln -s ${HOME}/dotfiles/_tmux-powerlinerc ${HOME}/.tmux-powerlinerc

# set up git submodules
cd ${HOME}/dotfiles

git submodule init
git submodule update

# create file for zsh history
mkdir ${HOME}/zsh/
echo -n >> history
