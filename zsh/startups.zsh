ZSH_THEME="lambda-gitster"
plugins=(
    zsh-autosuggestions
    git
    tmux
    z
    systemd
    nvm
    common-aliases
    zsh-syntax-highlighting
    zsh-completions
)

export PATH=$PATH:$HOME/.dotfiles/scripts
export ZSH=$HOME/.oh-my-zsh
export EDITOR="st -e nvim"
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
export LANG="en_US.UTF-8"
export TERM="xterm-256color"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
