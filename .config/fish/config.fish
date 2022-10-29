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

abbr sfc "source ~/.config/fish/config.fish"
abbr bat "batcat"
abbr ls "exa --icons"
abbr la "exa -a --icons"
abbr ll "exa --icons -l"
abbr lla "exa --icons -l -a"
abbr rt "exa --icons --tree"
abbr .. "z .."
abbr df "df -h"
abbr free "free -h"
abbr gs "git status"
abbr g "git"
abbr gd "git diff"
abbr goto "z (fd --type d | fzf)"
abbr hr "eval (history | fzf)"
abbr hs "echo (history | fzf)"
abbr vim "nvim"
abbr ov "nvim (fzf)"
abbr hv "nvim (fd . -H | fzf)"

alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
abbr cv "nvim (fd . ~/.config/ -H | fzf)"
abbr cf "fd . ~/.config/ -H | fzf"
abbr dots "nvim (config ls-files | fzf)"
abbr cs "config status"

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
fish_add_path ~/.emacs.d/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

zoxide init fish | source
starship init fish | source
