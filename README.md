# saitodisse fork

## Instalation
```shell
git clone git@github.com:saitodisse/dotfiles.git ~/_git/dotfiles
cd ~/_git/dotfiles
rake install
```

# [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh) sheet cheats

## ZSH
 - http://www.bash2zsh.com/zsh_refcard/refcard.pdf

## git
 - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
    <table>
    <tr><th>Alias</th><th>Command</th></tr>
    <tr><td><pre>g</pre></td><td><pre>git</pre></td></tr>
    <tr><td><pre>gst</pre></td><td><pre>git status</pre></td></tr>
    <tr><td><pre>gd</pre></td><td><pre>git diff</pre></td></tr>
    <tr><td><pre>gdc</pre></td><td><pre>git diff --cached</pre></td></tr>
    <tr><td><pre>gl</pre></td><td><pre>git pull</pre></td></tr>
    <tr><td><pre>gup</pre></td><td><pre>git pull --rebase</pre></td></tr>
    <tr><td><pre>gp</pre></td><td><pre>git push</pre></td></tr>
    <tr><td><pre>gd</pre></td><td><pre>git diff</pre></td></tr>
    <tr><td><pre>gdv</pre></td><td><pre>git diff -w "$@" | view -</pre></td></tr>
    <tr><td><pre>gc</pre></td><td><pre>git commit -v</pre></td></tr>
    <tr><td><pre>gc!</pre></td><td><pre>git commit -v --amend</pre></td></tr>
    <tr><td><pre>gca</pre></td><td><pre>git commit -v -a</pre></td></tr>
    <tr><td><pre>gca!</pre></td><td><pre>git commit -v -a --amend</pre></td></tr>
    <tr><td><pre>gcmsg</pre></td><td><pre>git commit -m</pre></td></tr>
    <tr><td><pre>gco</pre></td><td><pre>git checkout</pre></td></tr>
    <tr><td><pre>gcm</pre></td><td><pre>git checkout master</pre></td></tr>
    <tr><td><pre>gr</pre></td><td><pre>git remote</pre></td></tr>
    <tr><td><pre>grv</pre></td><td><pre>git remote -v</pre></td></tr>
    <tr><td><pre>grmv</pre></td><td><pre>git remote rename</pre></td></tr>
    <tr><td><pre>grrm</pre></td><td><pre>git remote remove</pre></td></tr>
    <tr><td><pre>grset</pre></td><td><pre>git remote set-url</pre></td></tr>
    <tr><td><pre>grup</pre></td><td><pre>git remote update</pre></td></tr>
    <tr><td><pre>grbi</pre></td><td><pre>git rebase -i</pre></td></tr>
    <tr><td><pre>grbc</pre></td><td><pre>git rebase --continue</pre></td></tr>
    <tr><td><pre>grba</pre></td><td><pre>git rebase --abort</pre></td></tr>
    <tr><td><pre>gb</pre></td><td><pre>git branch</pre></td></tr>
    <tr><td><pre>gba</pre></td><td><pre>git branch -a</pre></td></tr>
    <tr><td><pre>gcount</pre></td><td><pre>git shortlog -sn</pre></td></tr>
    <tr><td><pre>gcl</pre></td><td><pre>git config --list</pre></td></tr>
    <tr><td><pre>gcp</pre></td><td><pre>git cherry-pick</pre></td></tr>
    <tr><td><pre>glg</pre></td><td><pre>git log --stat --max-count=10</pre></td></tr>
    <tr><td><pre>glgg</pre></td><td><pre>git log --graph --max-count=10</pre></td></tr>
    <tr><td><pre>glgga</pre></td><td><pre>git log --graph --decorate --all</pre></td></tr>
    <tr><td><pre>glo</pre></td><td><pre>git log --oneline --decorate --color</pre></td></tr>
    <tr><td><pre>glog</pre></td><td><pre>git log --oneline --decorate --color --graph</pre></td></tr>
    <tr><td><pre>gss</pre></td><td><pre>git status -s</pre></td></tr>
    <tr><td><pre>ga</pre></td><td><pre>git add</pre></td></tr>
    <tr><td><pre>gm</pre></td><td><pre>git merge</pre></td></tr>
    <tr><td><pre>grh</pre></td><td><pre>git reset HEAD</pre></td></tr>
    <tr><td><pre>grhh</pre></td><td><pre>git reset HEAD --hard</pre></td></tr>
    <tr><td><pre>gclean</pre></td><td><pre>git reset --hard && git clean -dfx</pre></td></tr>
    <tr><td><pre>gwc</pre></td><td><pre>git whatchanged -p --abbrev-commit --pretty=medium</pre></td></tr>
    <tr><td><pre>gpoat</pre></td><td><pre>git push origin --all && git push origin --tags</pre></td></tr>
    <tr><td><pre>gmt</pre></td><td><pre>git mergetool --no-prompt</pre></td></tr>
    <tr><td><pre>gg</pre></td><td><pre>git gui citool</pre></td></tr>
    <tr><td><pre>gga</pre></td><td><pre>git gui citool --amend</pre></td></tr>
    <tr><td><pre>gk</pre></td><td><pre>gitk --all --branches</pre></td></tr>
    <tr><td><pre>gsts</pre></td><td><pre>git stash show --text</pre></td></tr>
    <tr><td><pre>gsta</pre></td><td><pre>git stash</pre></td></tr>
    <tr><td><pre>gstp</pre></td><td><pre>git stash pop</pre></td></tr>
    <tr><td><pre>gstd</pre></td><td><pre>git stash drop</pre></td></tr>
    <tr><td><pre>grt</pre></td><td><pre>cd $(git rev-parse --show-toplevel || echo ".")</pre></td></tr>
    <tr><td><pre>git-svn-dcommit-push</pre></td><td><pre>git svn dcommit && git push github master:svntrunk</pre></td></tr>
    <tr><td><pre>gsr</pre></td><td><pre>git svn rebase</pre></td></tr>
    <tr><td><pre>gsd</pre></td><td><pre>git svn dcommit</pre></td></tr>
    </table>





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
