
# saitodisse dotfiles

```
./install.sh
```

----

## Arch Linux

Install with Manjaro

## XFCE


```sh
# Display Managers
sudo pacman -S lxdm
sudo systemctl enable lxdm.service -f

# lxde
sudo pacman -S lxde
sudo pacman -S lxde-common lxsession openbox
```

## Audio

```sh
sudo pacman -S gstreamer0.10-good-plugins
sudo pacman -S pavucontrol
pavucontrol
```

## Tips

```sh
# remove all
sudo pacman -Rcns plasma

# update all
sudo pacman -Syu && yaourt -Syua

# numpad
sudo setxkbmap -option numpad:microsoft
```

































ubuntu 14.04 LTS
================

#### ubuntu bloatware removal
```bash
sudo apt-get purge -yfm \
  account-plugin-aim \
  account-plugin-facebook \
  account-plugin-flickr \
  account-plugin-jabber \
  account-plugin-salut \
  account-plugin-twitter \
  account-plugin-windows-live \
  account-plugin-yahoo \
  aisleriot \
  brltty \
  colord \
  deja-dup \
  deja-dup-backend-gvfs \
  duplicity \
  empathy \
  empathy-common \
  evolution-data-server-online-accounts \
  example-content \
  friends \
  friends-dispatcher \
  friends-facebook \
  friends-twitter \
  gnome-accessibility-themes \
  gnome-contacts \
  gnome-mahjongg \
  gnome-mines \
  gnome-orca \
  gnome-screensaver \
  gnome-sudoku \
  gnome-video-effects \
  gnomine \
  landscape-common \
  libfriends0 \
  libfriends0:amd64 \
  libreoffice-avmedia-backend-gstreamer \
  libreoffice-base-core \
  libreoffice-calc \
  libreoffice-common \
  libreoffice-core \
  libreoffice-draw \
  libreoffice-gnome \
  libreoffice-gtk \
  libreoffice-impress \
  libreoffice-math \
  libreoffice-ogltrans \
  libreoffice-pdfimport \
  libreoffice-presentation-minimizer \
  libreoffice-style-galaxy \
  libreoffice-style-human \
  libreoffice-writer \
  libsane \
  libsane-common \
  mcp-account-manager-uoa \
  nautilus-sendto-empathy \
  python3-uno \
  rhythmbox \
  rhythmbox-plugins \
  rhythmbox-plugin-zeitgeist \
  sane-utils \
  shotwell \
  shotwell-common \
  telepathy-gabble \
  telepathy-haze \
  telepathy-idle \
  telepathy-indicator \
  telepathy-logger \
  telepathy-mission-control-5 \
  telepathy-salut \
  thunderbird \
  thunderbird-gnome-support \
  totem \
  totem-common \
  totem-mozilla \
  totem-plugins \
  unity-scope-audacious \
  unity-scope-chromiumbookmarks \
  unity-scope-clementine \
  unity-scope-colourlovers \
  unity-scope-devhelp \
  unity-scope-firefoxbookmarks \
  unity-scope-gdrive \
  unity-scope-gmusicbrowser \
  unity-scope-gourmet \
  unity-scope-guayadeque \
  unity-scope-manpages \
  unity-scope-musicstores \
  unity-scope-musique \
  unity-scope-openclipart \
  unity-scope-texdoc \
  unity-scope-tomboy \
  unity-scope-video-remote \
  unity-scope-virtualbox \
  unity-scope-yelp \
  unity-scope-zotero
```

####NVIDIA

 - just enable:


If you are running ubuntu unity desktop, simply launch the dash and search for "driver". Then click the application named "Additional Drivers". It will launch the same dialog box as shown above.


- OR download the latest:

http://www.nvidia.com/download/driverResults.aspx/77525/en-us

------------------------------

#### ubuntu After Install

http://www.thefanclub.co.za/how-to/ubuntu-after-install

```sh
sudo add-apt-repository ppa:thefanclub/ubuntu-after-install
sudo apt-get update

sudo apt-get install -y ubuntu-after-install
```

------------------------------

#### git

```sh
sudo apt-get install -y git gitk xclip

git config --global --add color.ui true
git config --global user.name 'Julio Makdisse Saito'
git config --global user.email 'saitodisse@gmail.com'
git config --global push.default simple
ssh-keygen -t rsa -C "saitodisse@gmail.com"

ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
```

go to:

 - https://github.com/settings/ssh and paste
 - https://bitbucket.org/account/user/saitodisse/ssh-keys/

------------------------------

#### zsh & oh-my-zsh

```sh
# Install
sudo apt-get install -y zsh

# Setup oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# make ZSH default
chsh -s /bin/zsh
```

------------------------------

#### nvm (node.js or io.js)

- https://github.com/creationix/nvm

```sh
# install nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.1/install.sh | bash

# go to a new tab
nvm install 0.10.36
```

------------------------------

#### source-code-pro font

```sh
cd /tmp
wget https://github.com/adobe-fonts/source-code-pro/archive/1.017R.zip
unzip 1.017R.zip
mkdir -p ~/.fonts
cp source-code-pro-1.017R/OTF/*.otf ~/.fonts/
fc-cache -f -v
```

------------------------------

#### atom

Download and install:

- https://atom.io/download/deb

```sh
apm stars --install
```

------------------------------

#### azk

```sh
curl -Ls http://azk.io/install.sh | bash
```

------------------------------

#### pulse-audio default config

```sh
# find your best card and sink
pacmd list

# edit pulse config file
sudo atom /etc/pulse/default.pa
```

```sh
#..
#..
set-card-profile 2 output:analog-stereo
set-default-sink 6
```

------------------------------

## Extras

#### Notify OSD

1. Firstly, add Leolik's PPA and upgrade to his patched NotifyOSD:

```
sudo add-apt-repository ppa:leolik/leolik
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install libnotify-bin
pkill notify-osd
```

2. Install NotifyOSDConfig, the GUI used to configure the patched NotifyOSD

```
sudo add-apt-repository ppa:amandeepgrewal/notifyosdconfig
sudo apt-get update
sudo apt-get install notifyosdconfig
```

#### boot-repair (only if needed)

http://askubuntu.com/questions/226061/how-to-install-the-boot-repair-tool-in-an-ubuntu-live-disc

```
sudo add-apt-repository -y ppa:yannubuntu/boot-repair
sudo sed 's/trusty/saucy/g' -i /etc/apt/sources.list.d/yannubuntu-boot-repair-trusty.list
sudo apt-get update
sudo apt-get install -y boot-repair
sudo boot-repair
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

#### Oracle JAVA JDK 8

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

### Tools

```
sudo yum install vlc -y

sudo curl https://yt-dl.org/downloads/2015.04.17/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl
```

#### alttab

- https://ask.fedoraproject.org/en/question/28819/is-there-a-way-to-make-alttab-only-see-the-current-workspace/

```
sudo yum install gnome-shell-extension-alternate-tab
firefox https://extensions.gnome.org/local/
```
