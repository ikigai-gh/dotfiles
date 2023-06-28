# Enable vim mode by default
set -o vi

# Environment variables.
HISTFILE=$XDG_STATE_HOME/bash/history
HISTSIZE=10000
SAVEHIST=10000
export PATH=$PATH:$HOME/.local/bin:/usr/local/go/bin
export PS1="\[$(tput setaf 7)\]生き甲斐\[$(tput sgr0)\]-> "
export EDITOR="vim"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
export PYTHONUSERBASE=$XDG_DATA_HOME/python

# ssh
BSD_SSH_HOST="bsd-navi"
VPS_SSH_HOST="es-navi"

# Aliases. Useful for commands that invoked
# with the same arguments every time
alias e="$EDITOR"
alias g="git"
alias z="zathura"
alias ss="ss -tlnp"
alias news="newsboat"
alias sc="hunspell -d en_US"
alias vps="ssh $VPS_SSH_HOST"
alias bsd="ssh $BSD_SSH_HOST"
alias todo="calcurse"
alias excel="sc-im"
alias uwu="uwufetch"
alias copy="xclip -sel clip"
alias img="magick"
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"

# pacman
alias pqs="pacman -Qs"
alias pql="pacman -Ql"
alias pcs="sudo pacman -S"
alias pss="pacman -Ss"
alias psyu="sudo pacman -Syu"

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
