#! /bin/bash

echo "Creating symbolic links to config files..."

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim

if [[ "$OSTYPE" == "darwin"* ]]; then
	ln -sf ~/dotfiles/skhdrc ~/.config/skhd/skhdrc
	ln -sf ~/dotfiles/.yabairc ~/.yabairc
fi

# Test whether files are linked correctly using:
# for file in *; do
# 	if [[ -L "$file" ]]; then echo "$file is a symlink"; else echo "$file is not a symlink"; fi
# done
