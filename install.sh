#!/bin/bash

DOT_BASE=``

source ${DOT_BASE}/vim/install.sh

ln -sf ${DOT_BASE}/bin ${HOME}/bin
ln -sf ${DOT_BASE}/tmux/tmux.conf ${HOME}/.tmux.conf
ln -sf ${DOT_BASE}/shell/aliases  ${HOME}/.aliases
ln -sf ${DOT_BASE}/shell/profile  ${HOME}/.profile
ln -sf ${DOT_BASE}/shell/gopath   ${HOME}/.gopath
ln -sf ${DOT_BASE}/shell/zshrc    ${HOME}/.zshrc
