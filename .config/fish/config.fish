#                  __ _          __ _     _     
#  ___ ___  _ __  / _(_) __ _   / _(_)___| |__  
# / __/ _ \| '_ \| |_| |/ _` | | |_| / __| '_ \ 
#| (_| (_) | | | |  _| | (_| |_|  _| \__ \ | | |
# \___\___/|_| |_|_| |_|\__, (_)_| |_|___/_| |_|
#                       |___/                   

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

fundle plugin edc/bass
fundle init

bass source ~/.profile
clear

alias ls lsd
alias la "lsd -a"
alias ll "lsd  -l"
alias lla "lsd  -la"
alias rt "lsd  --tree"
alias .. "z .."

alias sfc "source ~/.config/fish/config.fish"
alias df "df -h"
alias free "free -h"
alias G "git status"
alias g git
alias gd "git diff"
alias gt "z (fd --type d | fzf)"
alias hr "eval (history | fzf)"
alias hs "echo (history | fzf)"
alias ov "nvim (fzf)"
alias hv "nvim (fd . -H | fzf)"

alias cv "nvim (fd . ~/.config/ -H | fzf)"
alias cf "fd . ~/.config/ -H | fzf"
alias dots "nvim (yadm ls-files | fzf)"
alias ys "yadm status"
alias yd "yadm diff"

#Adding Path
fish_add_path ~/.bun/bin
#fish_add_path ~/sources/swww/target/release
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path ~/.nix-profile/bin

#Changing editor to neovim
set EDITOR nvim

zoxide init fish | source
starship init fish | source
