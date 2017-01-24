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
CLB="\[\e[1;34m\]" # color light blue
CS="\[\e[m\]" # color stop
export PS1="$CLB\w$CS \$ "

export PATH="~/bin:$PATH"
export PATH="/usr/lib/ccache:$PATH"

export VISUAL=vim
export EDITOR="$VISUAL"

if [ -f $HOME/.npm-global ]; then
    export PATH="$HOME/.npm-global/bin:$PATH"
fi
##############################################################################
# 02. Aliases                                                                #
##############################################################################
alias ls="ls --color"
alias ll="ls -l"
alias ff="find . -name"
alias default-prompt="export PS1='$PS1'"
alias simple-prompt="export PS1='\$ '"
alias grep='grep --color'
alias nm='wicd-curses' # network manager
alias refresh-wifi='sudo iwlist wlp4s0 scan'
alias am='alsamixer'
alias pc='pavucontrol' # pulseaudio controll
alias mm='arandr' # monitor manager
alias nosleep='caffeinate time cat'
alias python='python3'
yr () { curl "wttr.in/$@"; }

# git
alias gs="git status"
alias gb="git branch"
alias gl="git log --decorate --oneline --left-right -n 20"
alias gg='git grep -n'
alias ggg="git grep -C2 -n --heading --show-function"

# misc
alias rmorig='for file in $(find . -name "*.orig"); do rm $file; done;'
alias open='xdg-open $@ &> /dev/null'
alias simple='python2 -m SimpleHTTPServer 3000'
alias octave='octave-cli'

alias config-java='sudo update-alternatives --config java'
alias config-javac='sudo update-alternatives --config javac'

##############################################################################
# 03. Other Scripts 
##############################################################################
if [ -f $HOME/.opera ]; then
    source $HOME/.opera
fi
