#!/usr/bin/env bash

DOTHOME="$( cd `dirname "$0"`  && pwd)"
VUNDLE_URI="https://github.com/gmarik/vundle.git"
FONT_DIR="$HOME/.powerline"

require_cmd() {
    if [ -z `which $1` ]; then
        echo "Please install $1 and retry."
        exit 1
    fi
}

link_vim() {
    local source_path="$DOTHOME"
    mkdir -p "$source_path/.vim/"

    ln -sf "$source_path/.vimrc"         "$HOME/.vimrc"
    ln -sf "$source_path/.vim"           "$HOME/.vim"
}

sync_repo() {
    local repo_path="$1"
    local repo_uri="$2"
    local repo_branch="$3"
    local repo_name="$4"

    echo "Trying to update $repo_name"

    if [ ! -e "$repo_path" ]; then
        mkdir -p "$repo_path"
        git clone -b "$repo_branch" "$repo_uri" "$repo_path"
        echo "Successfully cloned $repo_name."
    else
        cd "$repo_path" && git pull origin "$repo_branch"
        ret="$?"
        echo "Successfully updated $repo_name."
    fi
}

install_powerline() {
    sync_repo "$FONT_DIR/fonts" \
            https://github.com/powerline/fonts.git \
            master \
            fonts
    $FONT_DIR/fonts/install.sh
}

install_plug() {
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

plug_init() {
    local system_shell="$SHELL"
    export SHELL="/bin/sh"

    echo "Installing plugins via Plug..."
    vim "+set nomore" "+PlugInstall" "+PlugClean!" "+qall"

    export SHELL="$system_shell"
}

require_cmd "git"
require_cmd "vim"

link_vim

#install_powerline
install_plug
plug_init
