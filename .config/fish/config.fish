#                  __ _          __ _     _     
#  ___ ___  _ __  / _(_) __ _   / _(_)___| |__  
# / __/ _ \| '_ \| |_| |/ _` | | |_| / __| '_ \ 
#| (_| (_) | | | |  _| | (_| |_|  _| \__ \ | | |
# \___\___/|_| |_|_| |_|\__, (_)_| |_|___/_| |_|
#                       |___/                   
source ~/.profile;clear;

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

alias ls "exa --icons"
alias la "exa -a --icons"
alias ll "exa --icons -l"
alias lla "exa --icons -la"
alias rt "exa --icons --tree"
alias .. "z .."

alias sfc "source ~/.config/fish/config.fish"
alias df "df -h"
alias free "free -h"
alias G "git status"
alias g "git"
alias gd "git diff"
alias goto "z (fd --type d | fzf)"
alias hr "eval (history | fzf)"
alias hs "echo (history | fzf)"
alias vim "nvim"
alias ov "nvim (fzf)"
alias hv "nvim (fd . -H | fzf)"


alias cv "nvim (fd . ~/.config/ -H | fzf)"
alias cf "fd . ~/.config/ -H | fzf"
alias dots "nvim (yadm ls-files | fzf)"
alias ys "yadm status"
alias proxy "set -x http_proxy "127.0.0.1:8000"; set -x https_proxy "127.0.0.1:8000""

#Changing editor to neovim
set EDITOR "nvim"

#Adding Path
fish_add_path ~/.yarn/bin
fish_add_path ~/.bun/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path ~/.local/share/neovim/bin
fish_add_path ~/bin
#fish_add_path ~/Android/Sdk/platform-tools
fish_add_path ~/.nix-profile/bin

zoxide init fish | source
starship init fish | source
