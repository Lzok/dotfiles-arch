if [[ -a ~/.localrc ]]
then
	source ~/.localrc
fi

typeset -U config_files
config_files=($HOME/.dotfiles/**/*.zsh)

# load pyth files
for file in ${(M)config_files:#*/path.zsh}
do
	source $file
done

# load every zsh file, except for python, path, completion and this file (to not have infinite loop)
for file in ${${${${config_files:#*/path.zsh}:#*/completion.zsh}:#*/py.zsh}:#*/sourcing.zsh}
do
	source $file
done

unset config_files
