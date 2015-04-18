#!/bin/bash


# general configurations

rm -rf "$HOME/.zshrc"
ln -s "$PWD/.zshrc" "$HOME/.zshrc"

rm -rf "$HOME/.gitignore"
ln -s "$PWD/gitignore" "$HOME/.gitignore"

rm -rf "$HOME/.gitconfig"
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"


# vim configs

rm -rf "$HOME/.vimrc"
ln -s "$PWD/.vimrc" "$HOME/.vimrc"

rm -rf "$HOME/.vim"
ln -s "$PWD/.vim" "$HOME/.vim"


# atom configs

rm -rf "$HOME/.atom/config.cson"
ln -s "$PWD/.atom/config.cson" "$HOME/.atom/config.cson"

rm -rf "$HOME/.atom/keymap.cson"
ln -s "$PWD/.atom/keymap.cson" "$HOME/.atom/keymap.cson"

rm -rf "$HOME/.atom/snippets.cson"
ln -s "$PWD/.atom/snippets.cson" "$HOME/.atom/snippets.cson"


# oh-my-zsh/plugins

rm -rf "$HOME/.oh-my-zsh/plugins/rbates"
ln -s "$PWD/.oh-my-zsh/plugins/rbates" "$HOME/.oh-my-zsh/plugins/rbates"

rm -rf "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"
ln -s "$PWD/.oh-my-zsh/plugins/zsh-syntax-highlighting" "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"
