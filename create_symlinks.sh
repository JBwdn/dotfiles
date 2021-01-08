#! /bin/bash

echo "Creating symbolic links to config files..."

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim

if [[ "$OSTYPE" == "darwin"* ]]; then
	ln -sf ~/dotfiles/skhdrc ~/.config/skhd/skhdrc
	ln -sf ~/dotfiles/.yabairc ~/.yabairc
fi
