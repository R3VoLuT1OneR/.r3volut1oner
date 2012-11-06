#!/bin/bash
INSTALL_BASE_DIR=`dirname $0`

__main () {

    __install_bashrc &&
    __install_vimrc &&
    __install_git

}

__install_bashrc () {

    # Installing bashrc
    echo "# Load .r3volut1oner modules
    if [ -f ./bashrc.sh ]; then
        . ./bashrc.sh
    fi" >> ~/.bashrc;

}

__install_vimrc () {

    VIM_DIR="~/.vim"
    VIMRC="~/.vimrc"

    BACKUP_VIM_DIR="${VIM_DIR}.old"
    BACKUP_VIMRC="${VIMRC}.old"

    NEW_VIM_DIR="$INSTALL_BASE_DIR/vim"
    NEW_VIMRC="$NEW_VIM_DIR/vimrc.vim"

    # Fall if can't make backup
    if [[ -d $BACKUP_VIM_DIR || -e $BACKUP_VIMRC ]]; then return 0; fi

    # Backup old vim dir
    if [ -d $VIM_DIR ]; then mv $VIM_DIR ${VIM_DIR}.old; fi

    # Backup old vimrc file
    if [ -e $VIMRC ]; then mv $VIMRC ${VIMRC}.old; fi

    # Install new dir and rc file
    ln -s $NEW_VIM_DIR $VIM_DIR &&
    ln -s $NEW_VIMRC $VIMRC

}

__install_git () {

    GIT_CONFIG="~/.gitconfig"

    NEW_GIT_CONFIG="$INSTALL_BASE_DIR/git/gitconfig"

    # Backup gitconfig
    if [ -e $GIT_CONFIG ]; then mv $GIT_CONFIG ${GIT_CONFIG}.old; fi

    # Add symlink to new gitconfig
    ln -s $GIT_CONFIG $NEW_GIT_CONFIG

}

__main
