# Power control
alias sd 'sudo shutdown'
alias sdn 'sudo shutdown now'
alias rbn 'sudo reboot now'

# Replace ls with eza
if type -q eza
    alias ls 'eza --icons --color=auto --group-directories-first'
    alias ll 'eza -l --color=auto --group-directories-first'
    alias la 'eza -a --icons --color=auto --group-directories-first'
    alias lla 'eza -la --color=auto --group-directories-first'
else
    alias ls 'ls --color=auto --group-directories-first'
    alias ll 'ls -l --color=auto --group-directories-first'
    alias la 'ls -a --color=auto --group-directories-first'
    alias lla 'ls -la --color=auto --group-directories-first'
end

# Replace cd with zoxide
if type -q zoxide
    function cd
        z $argv && la
    end

    alias cdi 'zi'
end

# git
alias gfs 'git fetch; git status'
alias ga 'git add'
alias gc 'git commit -m'
alias gp 'git push'

####################
# youtube download #
####################
alias yt 'yt-dlp --add-metadata -ic -o "%(title)s.%(ext)s"'
alias yta 'yt-dlp --add-metadata -xic --audio-format mp3 -o "%(title)s.%(ext)s"'

alias nv 'nvim'
alias r 'ranger'
alias mkd 'mkdir'
alias tmux 'tmux -u'
alias cl 'clear'
alias zt 'zathura'

################
# paru aliases #
################
alias ins 'paru -S'
alias upall "paru -Syu --noconfirm"

#get fastest mirrors in your neighborhood
alias mirror "sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord "sudo reflector --latest 30 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors "sudo reflector --latest 30 --number 10 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora "sudo reflector --latest 30 --number 10 --sort age --save /etc/pacman.d/mirrorlist"

# alias nz="nvim ~/.zshrc"
alias nf="nvim ~/.config/fish/config.fish"

# RPG-CLI
alias rpg 'rpg-cli'
alias rcd 'rpg-cli cd'
alias rls 'rpg-cli ls'

alias icat "kitty +kitten icat"

alias chwall '~/.config/hypr/scripts/change_wall.sh'
alias rdwall '~/.config/hypr/scripts/swww_random_wall.sh'
