set fish_greeting ""

if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-interactive && type -q fastfetch
    fastfetch
end

source ~/.config/fish/conf.d/aliases.fish

fzf --fish | source
zoxide init fish | source
starship init fish | source
