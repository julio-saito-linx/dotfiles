#!/bin/bash

rm -rf "$HOME/.zshrc"
ln -s "$PWD/.zshrc" "$HOME/.zshrc"

rm -rf "$HOME/.vimrc"
ln -s "$PWD/.vimrc" "$HOME/.vimrc"

rm -rf "$HOME/.vim"
ln -s "$PWD/.vim" "$HOME/.vim"

rm -rf "$HOME/.gitignore"
ln -s "$PWD/gitignore" "$HOME/.gitignore"

rm -rf "$HOME/.gitconfig"
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"

rm -rf "$HOME/.atom"
ln -s "$PWD/.atom" "$HOME/.atom"

rm -rf "$HOME/.oh-my-zsh/plugins/rbates"
ln -s "$PWD/.oh-my-zsh/plugins/rbates" "$HOME/.oh-my-zsh/plugins/rbates"

rm -rf "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"
ln -s "$PWD/.oh-my-zsh/plugins/zsh-syntax-highlighting" "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"
