#                  __ _          __ _     _     
#  ___ ___  _ __  / _(_) __ _   / _(_)___| |__  
# / __/ _ \| '_ \| |_| |/ _` | | |_| / __| '_ \ 
#| (_| (_) | | | |  _| | (_| |_|  _| \__ \ | | |
# \___\___/|_| |_|_| |_|\__, (_)_| |_|___/_| |_|
#                       |___/                   
source ~/.profile;clear;
# Apt powerline
#set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
#source /usr/share/powerline/bindings/fish/powerline-setup.fish
#powerline-setup
# Pip powerline
#function fish_prompt
#    powerline-shell --shell bare $status
#end

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

alias cls clear
alias ls lsd
alias bat batcat
alias .. "cd .."
alias df "df -h"
alias free "free -h"
alias mv "mv -i"
alias cp "cp -i"
alias rm "rm -i"
alias gs "git status"
alias goto "cd (find -type d | fzf)"
alias view "xdg-open (find -type f | fzf)"
alias config "/usr/bin/git --git-dir=/home/mineranger/.cfg/ --work-tree=/home/mineranger"
alias apt-update "sudo apt update && sudo apt upgrade -y && sudo apt clean"
alias update-all "apt-update; flatpak update -y && flatpak remove --unused -y"
alias cs "config status"
#Adding nvm support
set -x NVM_DIR ~/.nvm
nvm use lts --silent 1>/dev/null 2>/dev/null
set EDITOR "/usr/bin/nvim"
starship init fish | source
