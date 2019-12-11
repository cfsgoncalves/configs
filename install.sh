#Enviromnent configuration of i3wm on fedora

#Install i3-gaps
sudo dnf install i3-gaps

#Install i3-blocks
git clone https://github.com/vivien/i3blocks
cd i3blocks
./autogen.sh
./configure
make
make install

#Install compton
sudo dnf install compton

#Install Spotify
sudo dnf install snapd
sudo snap install spotify

#Install feh
sudo dnf install feh

#Install dunst - notification manager
sudo dnf install dunst

#Install Scrot
sudo dnf install scrot

#Install Google Chrome
sudo dnf install google-chrome

#Install amixer and sound configuration
sudo snap install alsa-utils

#Configure regarding moving from this space to .config
