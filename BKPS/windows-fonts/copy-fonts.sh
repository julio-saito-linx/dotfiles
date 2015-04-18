su -c 'yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'

sudo mkdir -p /usr/share/fonts/msfonts
sudo cp *.TTF /usr/share/fonts/msfonts

sudo yum install gnome-tweak-tool -y
