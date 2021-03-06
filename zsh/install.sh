_install zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

# Change shell for my user
sudo chsh -s "$(command -v zsh)" "${USER}"

git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/agkozak/zsh-z $HOME/.oh-my-zsh/custom/plugins/zsh-z

# Make backup
FILE=$HOME/.zshrc
[ -f "$FILE" ] && cp "$FILE" $HOME/.zshrc.bak

ln -s $HOME/.dotfiles/zsh/themes/lambda-gitster-custom.zsh-theme.symlink $HOME/.oh-my-zsh/custom/themes/lambda-gitster.zsh-theme
ln -s $HOME/.dotfiles/zsh/zshrc.symlink $HOME/.zshrc

exec zsh
