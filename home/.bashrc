
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/smlnj-110.75/bin # SML
PATH=$PATH:~/Programming/git-bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export EDITOR="subl"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/"

WHITE="\[\033[1;37m\]"
LGRAY="\[\033[0;37m\]"
GRAY="\[\033[1;30m\]"
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
LRED="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
LGREEN="\[\033[1;32m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
LBLUE="\[\033[1;34m\]"
PURPLE="\[\033[0;35m\]"
PINK="\[\033[1;35m\]"
CYAN="\[\033[0;36m\]"
NORM="\[\033[0m\]"
LCYAN="\[\033[1;36m\]"
#Background
B_BLACK="\[\033[40m\]"
B_RED="\[\033[41m\]"
B_GREEN="\[\033[42m\]"
B_YELLOW="\[\033[43m\]"
B_BLUE="\[\033[44m\]"
B_CYAN="\[\033[46m\]"
B_LGREY="\[\033[47m\]"

# Enable colors in shell
CLICOLOR=1
# Set dircolor options
# export LSCOLORS=ExFxCxDxBxegedabagacad
# export LSCOLORS=gxgxcxdxbxegedabagacad
LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# less options
LESS="FRX"

# grep options
GREP_OPTIONS="--color"

# Erase duplicates in history
HISTCONTROL=erasedups

# Store 10k history entries
HISTSIZE=10000

# Append the history file when exiting instead of overwriting it
shopt -s histappend

# Ruby Environment Options:

# RI Formatting
RI="--format ansi -T"

# Export all options (in order of appearence)
export CLICOLOR LSCOLORS LESS GREP_OPTIONS
export HISTCONTROL HISTSIZE
export RI

# Aliases
alias ll='ls -la'
alias gpush='git push'
alias gpull='git pull'
alias gpr='git pull --rebase'

# git bash shell script
source ~/.git-completion.bash

[ -z "$PS1" ] || stty -ixon

[ -z "$PS1" ] || PS1="${GREEN}\h${LGRAY}:${LBLUE}\W${RED}\$(__git_ps1 '(%s)') ${GREEN}\u${NORM}\$ "

# Always update brew for install and upgrade
# function brew {
#   brew_cmd=`which brew`
#   if [ -n "$1" ] || [ "$1" == "install" ] || [ "$1" == "upgrade" ]; then
#     $brew_cmd update
#     $brew_cmd "$@"
#   else
#     $brew_cmd "$@"
#   fi
# }

# RVM Autocomplete
[[ -r "$HOME/.rvm/scripts/completion" ]] && . "$HOME/.rvm/scripts/completion"
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib:/usr/include
