
# saitodisse dotfiles and Fedora 21

dotfiles
=========

```
./install.sh
```

Fedora 21
=========

#### update system

```
sudo yum -y update
```

#### Skype

http://www.if-not-true-then-false.com/2012/install-skype-on-fedora-centos-red-hat-rhel-scientific-linux-sl/

#### Google chrome

http://www.if-not-true-then-false.com/2010/install-google-chrome-with-yum-on-fedora-red-hat-rhel/

#### Oracle JAVA 8

http://www.if-not-true-then-false.com/2014/install-oracle-java-8-on-fedora-centos-rhel/

#### ATOM

https://atom.io/download/rpm

#### git

```
sudo yum -y install git gitk xclip

ssh-keygen -t rsa -C "saitodisse@gmail.com"

ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
```

- https://github.com/settings/ssh
- https://bitbucket.org/account/user/saitodisse/ssh-keys/

test:
```
ssh -T git@github.com
```

##### clone repos
```
git clone git@github.com:saitodisse/azk.git
```

#### nvm

https://github.com/creationix/nvm#install-script

#### azk

http://docs.azk.io/pt-BR/installation/linux.html

#### brtfs

```
sudo su
...
yum install -y btrfs-progs
lvcreate -L 50GB -n docker fedora
mkfs.btrfs /dev/fedora/docker
echo '/dev/mapper/fedora-docker /var/lib/docker                   btrfs    defaults        1 2' >> /etc/fstab
```

#### source-code-pro font

```
cd /tmp
wget https://github.com/adobe-fonts/source-code-pro/archive/1.017R.zip
unzip 1.017R.zip
mkdir -p ~/.fonts
cp source-code-pro-1.017R/OTF/*.otf ~/.fonts/
fc-cache -f -v
```

## [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh) sheet cheats

### ZSH
 - http://www.bash2zsh.com/zsh_refcard/refcard.pdf

### aliases

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


### git aliases
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
