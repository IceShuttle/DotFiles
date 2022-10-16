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

alias bat "batcat"
alias ls "exa --icons"
alias la "exa -a --icons"
alias lla "ll -a"
alias rt "ls --tree"
alias .. "z .."
alias df "df -h"
alias free "free -h"
alias gs "git status"
alias g "git"
alias gd "git diff"
alias goto "z (fd --type d | fzf)"
alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias cs "config status"
alias hr "eval (history | fzf)"
alias hs "echo (history | fzf)"
alias vim "nvim"
alias hv "nvim (fd . -H | fzf)"
alias cv "nvim (fd . ~/.config/ -H | fzf)"
alias cf "fd . ~/.config/ -H | fzf"
alias ov "nvim (fzf)"
alias dots "nvim (config ls-files | fzf)"

#Changing editor to neovim
set EDITOR "nvim"

#Adding Path
fish_add_path ~/.yarn/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path ~/bin
#fish_add_path ~/Android/Sdk/platform-tools
fish_add_path /nix/var/nix/profiles/default/bin
fish_add_path ~/.nix-profile/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

zoxide init fish | source
starship init fish | source
