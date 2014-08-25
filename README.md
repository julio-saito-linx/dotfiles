
# saitodisse's "Ryan Bates Dot Files" fork #

## Instalation
```shell
git clone git@github.com:saitodisse/dotfiles.git ~/_git/dotfiles
cd ~/_git/dotfiles
rake install
```

# [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh) sheet cheats

## ZSH
 - http://www.bash2zsh.com/zsh_refcard/refcard.pdf

## aliases

| Alias          | Command                         |
| -------------- | ------------------------------- |
| -              |  'cd -'                         |
| ..             |  'cd ..'                        |
| ...            |  'cd ../..'                     |
| 1              |  'cd -'                         |
| 2              |  'cd -2'                        |
| 3              |  'cd -3'                        |
| 4              |  'cd -4'                        |
| 5              |  'cd -5'                        |
| 6              |  'cd -6'                        |
| 7              |  'cd -7'                        |
| 8              |  'cd -8'                        |
| 9              |  'cd -9'                        |
| _              |  sudo                           |
| afind          |  'ack-grep -il'                 |
| cd..           |  'cd ..'                        |
| cd...          |  'cd ../..'                     |
| cd....         |  'cd ../../..'                  |
| cd.....        |  'cd ../../../..'               |
| cd/            |  'cd /'                         |
| d              |  'dirs -v | head -10'           |
| history        |  'fc -l 1'                      |
| l              |  'ls -lah'                      |
| la             |  'ls -lAh'                      |
| ll             |  'ls -lh'                       |
| ls             |  'ls --color     | =tty'        |
| lsa            |  'ls -lah'                      |
| md             |  'mkdir -p'                     |
| please         |  sudo                           |
| po             |  popd                           |
| pu             |  pushd                          |
| rd             |  rmdir                          |
| rvm-restart    |  'rvm_reload_flag  ...          |
| sl             |  ls                             |
| tlog           |  'tail -f log/development.log'  |
| which-command  |  whence                         |


## git aliases
 - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git

| Alias         | Command                                                    |
| ------------- | ---------------------------------------------------------- |
| g             | git                                                        |
| gst           | git status                                                 |
| gs            | git_aliases.zsh: git status -sb                            |
| gd            | git diff                                                   |
| gdc           | git diff --cached                                          |
| gl            | git pull                                                   |
| gup           | git pull --rebase                                          |
| gp            | git push                                                   |
| gd            | git diff                                                   |
| gdv           | git diff -w "$@" | view -                                  |
| gc            | git_aliases.zsh: gitAddCommitPushOriginMasterFunction      |
| gc!           | git commit -v --amend                                      |
| gca           | git commit -v -a                                           |
| gca!          | git commit -v -a --amend                                   |
| gcmsg         | git commit -m                                              |
| gco           | git checkout                                               |
| gcm           | git checkout master                                        |
| gr            | git remote                                                 |
| grv           | git remote -v                                              |
| grmv          | git remote rename                                          |
| grrm          | git remote remove                                          |
| grset         | git remote set-url                                         |
| grup          | git remote update                                          |
| grbi          | git rebase -i                                              |
| grbc          | git rebase --continue                                      |
| grba          | git rebase --abort                                         |
| gb            | git branch                                                 |
| gba           | git branch -a                                              |
| gcount        | git shortlog -sn                                           |
| gcl           | git config --list                                          |
| gcp           | git cherry-pick                                            |
| glg           | git log --stat --max-count=10                              |
| glgg          | git log --graph --max-count=10                             |
| glgga         | git log --graph --decorate --all                           |
| glo           | git log --oneline --decorate --color                       |
| glog          | git log --oneline --decorate --color --graph               |
| gss           | git status -s                                              |
| ga            | git add                                                    |
| gm            | git merge                                                  |
| grh           | git reset HEAD                                             |
| grhh          | git reset HEAD --hard                                      |
| gclean        | git reset --hard && git clean -dfx                         |
| gwc           | git whatchanged -p --abbrev-commit --pretty=medium         |
| gpoat         | git push origin --all && git push origin --tags            |
| gmt           | git mergetool --no-prompt                                  |
| gg            | git gui citool                                             |
| gga           | git gui citool --amend                                     |
| gk            | gitk --all --branches                                      |
| gsts          | git stash show --text                                      |
| gsta          | git stash                                                  |
| gstp          | git stash pop                                              |
| gstd          | git stash drop                                             |
| grt           | cd $(git rev-parse --show-toplevel || echo ".")            |
| gsr           | git svn rebase                                             |
| gsd           | git svn dcommit                                            |



# original: Ryan Bates Dot Files

These are config files to set up a system the way I like it. It now uses [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh). If you would like to see my old, custom Bash and ZSH config, check out [this branch](https://github.com/ryanb/dotfiles/tree/custom-bash-zsh)

I am running on Mac OS X, but it will likely work on Linux as well.


## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive. Check out the [Rakefile](https://github.com/ryanb/dotfiles/blob/custom-bash-zsh/Rakefile) to see exactly what it does.

```terminal
git clone git://github.com/ryanb/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
```

After installing, open a new terminal window to see the effects.

Feel free to customize the .zshrc file to match your preference.


## Features

Many of the following features are added through the "rbates" Oh My ZSH plugin.

I normally place all of my coding projects in ~/code, so this directory can easily be accessed (and tab completed) with the "c" command.

```terminal
c railsca<tab>
```

There is also an "h" command which behaves similar, but acts on the home path.

```terminal
h doc<tab>
```

Tab completion is also added to rake and cap commands:

```
rake db:mi<tab>
cap de<tab>
```

To speed things up, the results are cached in local .rake_tasks~ and .cap_tasks~. It is smart enough to expire the cache automatically in most cases, but you can simply remove the files to flush the cache.

If you're using git, you'll notice the current branch name shows up in the prompt while in a git repository.

There are several features enabled in Ruby's irb including history and completion. Many convenience methods are added as well such as "ri" which can be used to get inline documentation in IRB. See irbrc file for details.


## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.bin
unlink ~/.gitignore
unlink ~/.gemrc
unlink ~/.gvimrc
unlink ~/.irbrc
unlink ~/.vim
unlink ~/.vimrc
rm ~/.zshrc # careful here
rm ~/.gitconfig
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
chsh -s /bin/bash # change back to Bash if you want
```

Then open a new terminal window to see the effects.
