# oh-my-zsh
export ZSH=/home/vagrant/.oh-my-zsh
ZSH_THEME="risto"

# auto completion
CASE_SENSITIVE="true"

# disable auto update
DISABLE_AUTO_UPDATE="true"

# disable command auto correction
DISABLE_CORRECTION="true"

# history command date format
HIST_STAMPS="yyyy-mm-dd"

# oh-my-zsh plugins
plugins=(django git python redis-cli sudo)

# init oh-my-zsh
source $ZSH/oh-my-zsh.sh

# language and term settings
export LC_ALL=en_US.UTF-8
export LANG="$LC_ALL"
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# compilation flags
export ARCHFLAGS="-arch x86_64"

# work directory
export WORK=/opt/work

# named directories
hash -d ENV="$WORK/env/"
hash -d SRC="$WORK/src/"
hash -d WORK="$WORK/"

# aliases
alias activate-default=". $WORK/env/default/bin/activate"

alias elasticsearch-logs="sudo journalctl -f --unit elasticsearch"
alias postgres-logs="sudo journalctl -f --unit postgresql"
alias redis-logs="sudo journalctl -f --unit redis-server"

alias omz-conf="vim ~/.oh-my-zsh"
alias vim-conf="vim ~/.vimrc"
alias zsh-conf="vim ~/.zshrc"
