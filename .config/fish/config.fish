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
alias lla "ll -a"
alias tree "ls --tree"
alias lsblk "lsblk -e7"
alias bat "batcat"
alias .. "z .."
alias df "df -h"
alias free "free -h"
alias gs "git status"
alias g git
alias gd "git diff"
alias goto "z (fdfind --type d | fzf)"
alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias apt-update "sudo apt update && sudo apt upgrade -y"
alias apt-ver "aptitude versions"
alias update-all "apt-update; flatpak update -y"
alias clean "sudo apt autoremove -y && sudo apt clean && flatpak remove --unused -y"
alias cs "config status"
alias hr "eval (history | fzf)"
alias hs "echo (history | fzf)"
alias vim "nvim"
alias hv "nvim (fdfind . -H | fzf)"
alias ov "nvim (fzf)"
alias dots "nvim (config ls-files | fzf)"
alias rng "kitty --title "Ranger" -e /bin/bash ranger"

#Adding nvm support
set -x NVM_DIR ~/.nvm
nvm use lts --silent 1>/dev/null 2>/dev/null
set EDITOR "nvim"
export EDITOR=nvim;

#Adding Path
fish_add_path ~/.yarn/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/share/umake/games
fish_add_path ~/.local/share/umake/ide
fish_add_path ~/Android/Sdk/platform-tools
fish_add_path /nix/var/nix/profiles/default/bin
fish_add_path ~/.nix-profile/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

zoxide init fish | source
starship init fish | source
