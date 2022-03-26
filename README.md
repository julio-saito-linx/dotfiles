# saitodisse dotfiles

```
./install.sh
```

---

## Arch Linux

Install with Manjaro with Gnome

```sh
# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo pacman-mirrors --geoip && sudo pacman -Syyu
sudo pacman -S yay

yay -S --noconfirm   base-devel
yay -S --noconfirm   nodejs-lts-fermium npm
yay -S --noconfirm   visual-studio-code-bin
yay -S --noconfirm   slack-desktop
yay -S --noconfirm   docker
yay -S --noconfirm   obs-studio
yay -S --noconfirm   zoom
yay -S --noconfirm   github-cli
yay -S --noconfirm   google-chrome
yay -S --noconfirm   telegram-desktop-bin
yay -S --noconfirm   nodejs-lts-gallium

# fonts
yay -S --noconfirm   ttf-joypixels ttf-liberation ttf-droid

# update all
yay -Syyuu --noconfirm

# yarn
sudo npm install --global yarn

# docker
sudo systemctl start docker.service
sudo systemctl start containerd.service
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo gpasswd -a julio docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker info

# restart session
```

### gnome config

- https://unix.stackexchange.com/posts/505851/revisions

To export settings:

`dconf dump / > dconf-settings.ini`

To import settings:

`dconf load / < dconf-settings.ini`

```sh
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-1 "['<Primary>F5']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-2 "['<Primary>F6']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-3 "['<Primary>F7']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-4 "['<Primary>F8']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-5 "['<Primary>F9']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-6 "['<Primary>F10']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-7 "['<Primary>F11']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-8 "['<Primary>F12']"
gsettings set org.gnome.shell.app-switcher current-workspace-only true

gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab','<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt><Tab>','<Super><Alt><Tab>']"
```

### git config

```sh
sudo apt-get install -y git gitk xclip

git config --global --add color.ui true
git config --global user.name 'Julio Saito'
git config --global user.email 'saitodisse@gmail.com'
git config --global push.default simple
ssh-keygen -t rsa -C "saitodisse@gmail.com"

ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
```

go to:

- https://github.com/settings/ssh and paste
- https://bitbucket.org/account/user/saitodisse/ssh-keys/

---
