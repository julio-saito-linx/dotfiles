#!/bin/bash


# general configurations

rm -rf "$HOME/.zshrc"
ln -s "$PWD/.zshrc" "$HOME/.zshrc"

rm -rf "$HOME/.zprofile"
ln -s "$PWD/.zprofile" "$HOME/.zprofile"

rm -rf "$HOME/.zshenv"
ln -s "$PWD/.zshenv" "$HOME/.zshenv"

rm -rf "$HOME/.xinitrc"
ln -s "$PWD/.xinitrc" "$HOME/.xinitrc"

rm -rf "$HOME/.gitignore"
ln -s "$PWD/gitignore" "$HOME/.gitignore"

rm -rf "$HOME/.npmignore"
ln -s "$PWD/.npmignore" "$HOME/.npmignore"

rm -rf "$HOME/.gitconfig"
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"

rm -rf "$HOME/.config/sublime-text-3/Packages/User"
ln -s "$PWD/sublime3-user" "$HOME/.config/sublime-text-3/Packages/User"

rm -rf "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"
ln -s "$PWD/xfce-perchannel-xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"

# vim configs

rm -rf "$HOME/.vimrc"
ln -s "$PWD/.vimrc" "$HOME/.vimrc"

rm -rf "$HOME/.vim"
ln -s "$PWD/.vim" "$HOME/.vim"


# sublime user folder

rm -rf "$HOME/.config/sublime-text-3/Packages/User"
ln -s "$PWD/sublime3-user" "$HOME/.config/sublime-text-3/Packages/User"

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
