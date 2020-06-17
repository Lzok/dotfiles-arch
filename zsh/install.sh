_install zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
chsh zsh

git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions

# Make backup
cp $HOME/.zshrc $HOME/.zshrc.bak

ln -sf $HOME/.dotfiles/zsh/themes/lambda-gitster-custom.zsh-theme.symlink $HOME/.oh-my-zsh/custom/themes/lambda-gitster.zsh-theme
ln -sf $HOME/.dotfiles/zsh/zshrc.symlink $HOME/.zshrc

exec zsh
