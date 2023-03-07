autoload -U colors && colors

PROMPT="%F{green}%~%f $ "

HISTFILE="${HOME}/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
export LANG="en_US.UTF-8"

bindkey -v

source "${HOME}/.env"
source "${HOME}/.aliasrc"
