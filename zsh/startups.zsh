ZSH_THEME="lambda-gitster"
plugins=(
    zsh-autosuggestions
    git
    tmux
    zsh-z
    systemd
    nvm
    common-aliases
    zsh-syntax-highlighting
    zsh-completions
)

export PATH=$PATH:$HOME/.dotfiles/scripts
export ZSH=$HOME/.oh-my-zsh

# XDG Base Directory https://wiki.archlinux.org/index.php/XDG_Base_Directory
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

export EDITOR="st -e nvim"

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
export LANG="en_US.UTF-8"
export TERM="xterm-256color"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
