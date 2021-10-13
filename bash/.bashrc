#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt design
PS1='\[\e[0m\][\[\e[0m\]\W\[\e[0m\]]\n\[\e[0m\]\u\[\e[0;1;7m\]@\[\e[0m\]\H \[\e[0;1;5m\]> \[\e[0m\]'
# PS1='[\u@\h \W]\$ '

wal -Rq

shopt -s autocd # Just type the name of a directory to cd

# Alias
alias sd='sudo shutdown'
alias sdn='sudo shutdown now'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -l --color=auto --group-directories-first'
alias la='ls -la --color=auto --group-directories-first'
alias p='sudo pacman'
alias nv='nvim'
alias r='ranger'
alias g='git'
alias mkd='mkdir'
alias yt='youtube-dl --add-metadata -ic -o "%(title)s.%(ext)s"'
alias yta='youtube-dl --add-metadata -xic --audio-format mp3 -o "%(title)s.%(ext)s"'

keys(){
xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
}

neofetch

set -o vi
