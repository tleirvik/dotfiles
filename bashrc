#!/bin/bash
##############################################################################
#   Filename: .bashrc
#
# Sections:
#   01. Enviorment Variables 
#   02. Aliases
#   03. Other scripts
##############################################################################

##############################################################################
# 01. Enviorment Variables 
##############################################################################
# Shell prompt
CB="\e[0;34m" # color blue
CS="\e[m" # color stop
export PS1="$CB\w$CS \$ "

export PATH="~/bin:$PATH"
export PATH="/usr/lib/ccache:$PATH"

##############################################################################
# 02. Aliases                                                                #
##############################################################################
# Enable colors in "ls" command output
alias ls="ls --color"
alias default-prompt="export PS1='$PS1'"
alias simple-prompt="export PS1='\$ '"

# git
alias gitlog="git log --decorate --oneline --left-right -n 20"
alias ggrep="git grep -C2 -n --heading --show-function"

##############################################################################
# 03. Other Scripts 
##############################################################################
if [ -f $HOME/.opera ]; then
    source $HOME/.opera
fi
