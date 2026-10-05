source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    # smth smth
end
# Enable vim key bindings
fish_vi_key_bindings

set -g fish_cursor_default block
set -g fish_cursor_insert line
set -g fish_cursor_replace_one underscore

bind \cr history-search-backward

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Initialize zoxide
zoxide init fish | source

# Replace cd with z
alias cd="z"

alias cat="bat"
fish_add_path $HOME/.cargo/bin

# Install package
abbr --add i "sudo pacman -S"

# Full system update
abbr --add u "sudo pacman -Syu"

abbr --add ps "pacman -Ss"
abbr --add qi "pacman -Qi"
abbr --add r "sudo pacman -Rns"

abbr --add pi "pip install --user"

# Git abbrs
abbr --add gs "git status"
abbr --add ga "git add"
abbr --add gc "git commit"
abbr --add gp "git push"
abbr --add gl "git pull"
abbr --add gcl "git clone"

alias nv="nvim"
alias vi="vim"
alias zd="zeditor"
alias codm="codium"
alias py="python"
alias mkdir="mkdir -p"
alias zat="zathura"
alias ff="find ~ -type f | fzf"
### TMUX
#alias t="tmux"
#abbr --add ta "tmux attach"
#abbr --add tl "tmux ls"
#abbr --add tk "tmux kill-session"

# Zellij
alias ze="zellij"
abbr --add za "zellij attach"
abbr --add zl "zellij list-sessions"

#functions
function cc
    gcc -Werror -Wextra -Wall -o out $argv && ./out && sleep 10 && clear
end

function pyrun
    python3 $argv && sleep 10
end
