#!/bin/bash

DOT_HOME="$( cd `dirname "$0"` && pwd)"

source ${DOT_HOME}/vim/setup.sh

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -sf ${DOT_HOME}/bin ${HOME}/bin
ln -sf ${DOT_HOME}/tmux/tmux.conf ${HOME}/.tmux.conf
ln -sf ${DOT_HOME}/shell/aliases  ${HOME}/.aliases
ln -sf ${DOT_HOME}/shell/profile  ${HOME}/.profile
ln -sf ${DOT_HOME}/shell/gopath   ${HOME}/.gopath
ln -sf ${DOT_HOME}/shell/zshrc    ${HOME}/.zshrc



