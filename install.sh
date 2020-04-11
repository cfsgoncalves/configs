#Enviromnent configuration of i3wm on fedora
##Second line if for pacman

#Install zsh
sudo pacman -Sy zsh

#Changing the shell
chsh -s $(/usr/bin/zsh)

#Install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install vim
sudo pacman -Sy vim
cp vimrc ~/.vimrc

#Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Install i3
sudo pacman -Sy i3
sudo pacman -Sy dmenu

#Install i3-gaps
sudo dnf install i3-gaps
sudo pacman -Sy i3-gaps

#Install i3-blocks
git clone https://github.com/vivien/i3blocks
cd i3blocks
./autogen.sh
./configure
make
make install

#Install compton
sudo dnf install compton
sudo pacman -Sy compton
cp compton.conf ~/.config/compton.conf

#Install Spotify
sudo pacman -Sy flatpak
sudo flatpak install spotify

#Install feh
sudo dnf install feh
sudo pacman -Sy feh

#Install dunst - notification manager
sudo dnf install dunst
sudo pacman -Sy dunst

#Install Scrot
sudo dnf install scrot
sudo pacman -Sy scrot
mkdir ~/Pictures/Screenshots 

#Install Google Chrome
sudo dnf install google-chrome

git https://aur.archlinux.org/google-chrome.git
cd Downloads
cd google-chrome
makepkg -s
sudo pacman -U google-chrome*.tar.xz

#Install amixer and sound configuration
sudo snap install alsa-utils

#Install font awesome
sudo pacman -S ttf-font-awesome

#Install urxvt terminal
sudo pacman -Sy rxvt-unicode

#TODO: Define installation of this
#Copy i3blocks
rm -rf ~/.config/i3blocks
cp -r i3-blocks/ ~/.config/i3blocks

#Copy i3config
cp -r config ~/.config/i3/config

#Copy Xresources config
cp Xresources ~/.Xresources

#Install ifconfig
sudo pacman -Sy net-tools

#Atom installation
sudo pacman -Sy atom

# Support double screen
sudo pacman -Sy arandr
