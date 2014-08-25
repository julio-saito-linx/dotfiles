Ubuntu 14.04
======

####boot-repair
http://askubuntu.com/questions/226061/how-to-install-the-boot-repair-tool-in-an-ubuntu-live-disc
```
sudo add-apt-repository -y ppa:yannubuntu/boot-repair
sudo sed 's/trusty/saucy/g' -i /etc/apt/sources.list.d/yannubuntu-boot-repair-trusty.list
sudo apt-get update
sudo apt-get install -y boot-repair
sudo boot-repair
```


####ZSH
```shell
# Install
sudo apt-get install -y zsh

# Setup oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

#Make ZSH default
chsh -s /bin/zsh

#restart
#sudo reboot
```

####NVIDIA

 - just enable:


If you are running Ubuntu unity desktop, simply launch the dash and search for "driver". Then click the application named "Additional Drivers". It will launch the same dialog box as shown above.


 - OR download the latest:


http://www.nvidia.com/download/driverResults.aspx/77525/en-us

------------------------------
####Ubuntu After Install
http://www.thefanclub.co.za/how-to/ubuntu-after-install
```
sudo add-apt-repository ppa:thefanclub/ubuntu-after-install
sudo apt-get update

sudo apt-get install -y ubuntu-after-install
```

 - Ubuntu Restricted Extras
 - ~~libdvdcss~~
 - Unity Tweak Tool
 - ~~Variety~~
 - Google Chrome
 - ~~LibreOffice~~
 - Skype
 - Grive Tools
 - DropBox
 - VLC
 - ~~XBMC~~
 - ~~Radio Tray~~
 - ~~GIMP~~
 - ~~Darktable~~
 - ~~Inkscape~~
 - ~~Scribus~~
 - ~~Samba~~
 - ~~PDF Tools~~
 - ~~OpenShot~~
 - ~~Kdenlive~~
 - Handbrake
 - Audacity
 - ~~Steam~~
 - ~~KeePass~~
 - ~~Shutter~~
 - FileZilla
 - p7zip decompression


------------------------------
####rvm + ruby
from: http://rvm.io/rvm/install
```
sudo apt-get install -y curl
\curl -sSL https://get.rvm.io | bash -s stable --ruby

source /home/julio/.rvm/scripts/rvm

echo 'gem: --no-ri --no-rdoc' > ~/.gemrc

gem install jekyll compass
```

------------------------------
####git
```
sudo apt-get install -y git gitk xclip

git config --global --add color.ui true
git config --global user.name 'Julio Makdisse Saito'
git config --global user.email 'saitodisse@gmail.com'
git config --global push.default simple
ssh-keygen -t rsa -C "saitodisse@gmail.com"

ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
```
goto:
 - https://github.com/settings/ssh and paste
 - https://bitbucket.org/account/user/saitodisse/ssh-keys/


------------------------------
####node.js
```
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
sudo chown -R `whoami` ~/.npm
```

------------------------------
####oracle JAVA 8
from: http://www.enqlu.com/2014/03/how-to-install-oracle-java-78-jdk-and.html
```
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
```

------------------------------
####sublime text
 - Download: http://www.sublimetext.com/3
 - Package manager: https://sublime.wbond.net/installation#st3


------------------------------
####Docker
http://docs.docker.com/installation/ubuntulinux/#ubuntu-trusty-1404-lts-64-bit
```
[ -e /usr/lib/apt/methods/https ] || {
  apt-get update
  apt-get install apt-transport-https
}

sudo -i

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
echo "deb https://get.docker.io/ubuntu docker main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install lxc-docker

exit

```

------------------------------
####elastic search
from: http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/setup-repositories.html
Download and install the Public Signing Key
```
wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
```

Add the following to your **/etc/apt/sources.list** to enable the repository
```
sudo subl /etc/apt/sources.list
```
add this:
```
deb http://packages.elasticsearch.org/elasticsearch/1.1/debian stable main
```

Run apt-get update and the repository is ready for use. You can install it with :
```
sudo apt-get update
sudo apt-get install -y elasticsearch
```

