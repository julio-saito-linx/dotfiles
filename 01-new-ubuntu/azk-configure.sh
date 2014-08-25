#!/usr/bin/env bash

# https://github.com/azukiapp/azk

cd ~/_git/azk
git remote add azk git@github.com:azukiapp/azk.git
git pull azk master

git checkout linux_support
git pull azk linux_support

#Add ~/.azk/bin to your $PATH for access to the azk command-line utility.
echo -en '\nexport PATH="$HOME/_git/azk/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

#Add ~/.azk/bin to your $PATH for access to the azk command-line utility.
azk check-install