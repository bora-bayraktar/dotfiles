#!/bin/bash

echo "Installing dotfiles..."

lst=( ".gitmodules" ".dotfiles" ".zsh" ".zshrc" ".vim" ".vimrc" ".tmux" ".tmux.conf" )

for i in ${lst[@]}; do
    if [[ -d "$HOME/$i" ]]; then
        if [[ ! -d "$HOME/.dot_backup" ]]; then
            mkdir "$HOME/.dot_backup"
        fi
        cp -R "$HOME/$i" "$HOME/.dot_backup/$i"
        rm -rf "$HOME/$i/"
    elif [[ -f "$HOME/$i" ]]; then
        if [[ ! -d "$HOME/.dot_backup" ]]; then
            mkdir "$HOME/.dot_backup"
        fi
        mv "$HOME/$i" "$HOME/.dot_backup/$i" 
    elif [[ -L "$HOME/$i" ]]; then
        if [[ ! -d "$HOME/.dot_backup" ]]; then
            mkdir "$HOME/.dot_backup"
        fi
        mv "$HOME/$i" "$HOME/.dot_backup/$i"
    fi
done

cp -R $(pwd)/ ~/.dotfiles/

ln -s ~/.dotfiles/tmux ~/.tmux
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/zsh ~/.zsh
ln -s ~/.dotfiles/zshrc ~/.zshrc

echo "Files have been installed succesfully."

