#!/bin/bash

# Installing bashrc
echo "# Load .r3volut1oner modules
if [ -f ./bashrc.sh ]; then
	. ./bashrc.sh
fi" >> ~/.bashrc;

# Installing VIMrc
if [ -f ~/.vimrc.old ]; then
	echo "Can't make backup for old ~/.vimrc
Move/remove ~/.vimrc.old before install"
else
	if [ -f ~/.vimrc ]; then
		mv ~/.vimrc ~/.vimrc.old
	fi
	ln -s ./vimrc.vim ~/.vimrc
fi

# Instalation VIM modules
if [ -d ~/.vim.old ]; then
	echo "Can't make backup for old ~/vim.
Move/remove ~/.vim.old"
else
	if [ -d ~/.vim ]; then
		mv ~/.vim ~/.vim.old
	fi
	ln -s ./vim ~/.vim
fi

# Install xbindkeys
if [ -f ~/.xbindkeysrc.old ]
then
    echo "Can't backup old configs. Remove ~/.xbindkeysrc"
else
    if [ ~/.xbindkeysrc ]
    then
        mv ~/.xbindkeysrc ~/.xbindkeys.old
    fi
    ln -s ./xbindkeys/xbindkeysrc ~/.xbindkeysrc
fi

# Install bin dir
if [ -d ~/bin ]
then
    echo "Can't create link to ~/bin, delete it before"
else
    ln -s ./bin ~/bin
fi
