#!/bin/sh 

apt install -y stow vim tmux zsh ranger
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

if [ -e .tmux.conf ]
then
	mv .tmux.conf .tmux.conf.old
fi

cd ~/.dotfiles
stow vim bash zsh tmux
cd ~/
vim -c PlugInstall .vimrc 
