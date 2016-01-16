export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source ~/.profile
export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
#ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
#
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source $ZSH/oh-my-zsh.sh
export LANG="en_US.UTF-8"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

source ~/.fzf.zsh

[[ ${TERM} != 'screen' ]] && exec tmux
