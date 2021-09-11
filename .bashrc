#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
#PS1="\[\033[32m\]  \[\033[37m\]\[\033[34m\]\w \[\033[0m\]"
#PS1="\[\033[32m\]  > \[\033[0m\]"

# bash start scripts/cmds
export PATH="$PATH:~/.local/share/flutter/bin"
export _JAVA_AWT_WM_NONREPARENTING=1
