#!/bin/bash

# general configurations

rm -rf "$HOME/.xinitrc"
ln -s "$PWD/.xinitrc" "$HOME/.xinitrc"

rm -rf "$HOME/.gitignore"
ln -s "$PWD/gitignore" "$HOME/.gitignore"

rm -rf "$HOME/.npmignore"
ln -s "$PWD/.npmignore" "$HOME/.npmignore"

rm -rf "$HOME/.gitconfig"
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"

rm -rf "$HOME/.yaourtrc"
ln -s "$PWD/.yaourtrc" "$HOME/.yaourtrc"

rm -rf "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"
ln -s "$PWD/xfce-perchannel-xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"

rm -rf "$HOME/.config/autostart"
ln -s "$PWD/xfce4/autostart" "$HOME/.config/autostart"
