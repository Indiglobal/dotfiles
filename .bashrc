# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# MAP COLOURS
BLUE="$(tput setaf 4)"
RESET="$(tput sgr 0)"

# LOCAL VARIABLES
#export $PS1="$BLUE\u@\h: \W > $RESET"
export PS1="\e[0;34m\u@\h: \w $>\e[m "

## This makes no print anything to non-interactive shells
[[ $- != *i* ]] && return

#test -s ~/.alias && . ~/.alias || true
#[ -t 0 ] && return
#echo ".bashrc loaded"

# Attach to existing session or create one if it does not exist
if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
    tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux 
fi
