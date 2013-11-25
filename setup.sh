#!/bin/sh

if [ $# -eq 1 ]; then
    DFDIR=$1
else
    DFDIR="${HOME}/dotfiles"
fi

echo "${DFDIR}"
echo "${HOME}"

cd ${HOME}

# create symbolic links
if [ -e ${HOME}/.vim ]; then
    echo "${HOME}/.vim already exists."
else
    ln -s ${DFDIR}/_vim ${HOME}/.vim
fi

if [ -e ${HOME}/.tmuxinator ]; then
    echo "${HOME}/.tmuxinator already exists."
else
    ln -s ${DFDIR}/_tmuxinator ${HOME}/.tmuxinator
fi

if [ -e ${HOME}/.zshrc ]; then
    echo "${HOMEM}/.zshrc already exists."
else
    ln -s ${DFDIR}/_zshrc ${HOME}/.zshrc
fi

if [ -e ${HOME}/.zshrc.Darwin ]; then
    echo "${HOME}/.zshrc.Darwin already exists."
else
    ln -s ${DFDIR}/_zshrc.Darwin ${HOME}/.zshrc.Darwin
fi
if [ -e ${HOME}/.vimrc ]; then
    echo "${HOME}/.vimrc already exists."
else
    ln -s ${DFDIR}/_vimrc ${HOME}/.vimrc
fi

if [ -e ${HOME}/.tmux.conf ]; then
    echo "${HOME}/.tmux.conf already exists."
else
    ln -s ${DFDIR}/_tmux.conf ${HOME}/.tmux.conf
fi

if [ -e ${HOME}/.tmux-powerlinerc ]; then
    echo "${HOME}/.tmux-powerlinerc already exists."
else
    ln -s ${DFDIR}/_tmux-powerlinerc ${HOME}/.tmux-powerlinerc
fi

# set up git submodules
cd ${DFDIR}

git submodule init
git submodule update

# create file for zsh history
mkdir ${HOME}/.zsh/
echo -n >> ${HOME}/history
