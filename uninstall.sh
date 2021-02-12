#!/bin/bash

echo "Uninstalling dotfiles..."

lst=( ".gitmodules" ".zsh" ".zshrc" ".vim" ".vimrc" ".tmux" ".tmux.conf" ".tmux_code.sh" ".dotfiles" )

for i in ${lst[@]}; do
    rm -rf "$HOME/$i"
done

for i in ${lst[@]}; do
    if [[ -e "$HOME/.dot_backup/$i" ]]; then
        cp -R "$HOME/.dot_backup/$i" "$HOME/$i"
        rm -rf "$HOME/.dot_backup/$i"
    elif [[ -L "$HOME/.dot_backup/$i" ]]; then
        cp -R "$HOME/.dot_backup/$i" "$HOME/$i"
        rm -rf "$HOME/.dot_backup/$i"
    fi
done

rm -rf "$HOME/.dot_backup/"

echo "Files have been uninstalled succesfully."

