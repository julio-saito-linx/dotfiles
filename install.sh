#!/bin/bash


# general configurations

rm -rf "$HOME/.zshrc"
ln -s "$PWD/.zshrc" "$HOME/.zshrc"

rm -rf "$HOME/.gitignore"
ln -s "$PWD/gitignore" "$HOME/.gitignore"

rm -rf "$HOME/.npmignore"
ln -s "$PWD/.npmignore" "$HOME/.npmignore"

rm -rf "$HOME/.gitconfig"
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"

rm -rf "$HOME/.config/terminator/config"
ln -s "$PWD/.terminator_config" "$HOME/.config/terminator/config"


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

rm -rf "$HOME/.oh-my-zsh/custom/plugins/azk"
ln -s "$PWD/.oh-my-zsh/custom/plugins/azk" "$HOME/.oh-my-zsh/custom/plugins/azk"
