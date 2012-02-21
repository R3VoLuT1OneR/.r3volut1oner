#!/bin/bash

# Installing bashrc
echo "# Load .r3volut1oner modules
if [ -f ~/.r3volut1oner/bashrc.sh ]; then
	. ~/.r3volut1oner/bashrc.sh
fi" >> ~/.bashrc;

# Installing VIMrc
if [ -f ~/.vimrc.old ]; then
	echo "Can't make backup for old ~/.vimrc
Move/remove ~/.vimrc.old before install"
else
	if [ -f ~/.vimrc ]; then
		mv ~/.vimrc ~/.vimrc.old
	fi
	ln -s ~/.r3volut1oner/vimrc.vim ~/.vimrc
fi

# Instalation VIM modules
if [ -d ~/.vim.old ]; then
	echo "Can't make backup for old ~/vim.
Move/remove ~/.vim.old"
else
	if [ -d ~/.vim ]; then
		mv ~/.vim ~/.vim.old
	fi
	ln -s ~/.r3volut1oner/vim ~/.vim
fi
