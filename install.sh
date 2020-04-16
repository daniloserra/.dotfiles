#!/bin/sh 

apt install -y stow vim tmux zsh
cd ~/

if [ -e .vimrc ]
then
	mv .vimrc .vimrc.old
fi

if [ -e .vim ]
then
	mv .vim .vim.old
fi

if [ -e .bashrc ]
then
	mv .bashrc .bashrc.old
fi

if [ -e .zshrc ]
then
	mv .zshrc .zshrc.old
fi

cd ~/.dotfiles
stow vim bash zsh
