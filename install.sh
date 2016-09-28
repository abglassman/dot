#!/bin/bash

DOT_HOME="$( cd `dirname "$0"` && pwd)"

source ${DOT_HOME}/vim/install.sh

ln -sf ${DOT_HOME}/bin ${HOME}/bin
ln -sf ${DOT_HOME}/tmux/tmux.conf ${HOME}/.tmux.conf
ln -sf ${DOT_HOME}/shell/aliases  ${HOME}/.aliases
ln -sf ${DOT_HOME}/shell/profile  ${HOME}/.profile
ln -sf ${DOT_HOME}/shell/gopath   ${HOME}/.gopath
ln -sf ${DOT_HOME}/shell/zshrc    ${HOME}/.zshrc
