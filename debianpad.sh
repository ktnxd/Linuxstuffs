sudo dpkg --add-architecture i386 ;
echo AOSP stuffs ;
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig ;
echo configs ;
cp Linuxstuffs/.bashrcUbuntu ~/.bashrc &&
cp Linuxstuffs/wallhaven-4l5jkp.jpg ~/Pictures && 
cp -r Linuxstuffs/.Xresources ~/.Xresources && 
cp -r Linuxstuffs/.config/bspwm ~/.config/ &&
cp -r Linuxstuffs/.config/dunst ~/.config/ &&
cp -r Linuxstuffs/.config/mpd ~/.config/ &&
cp -r Linuxstuffs/.config/polybar ~/.config/ &&
cp -r Linuxstuffs/.config/sxhkd ~/.config/ &&
cp -r Linuxstuffs/.config/termite ~/.config/ &&
#cp -r Linuxstuffs/.config/xfce4 ~/.config/ &&
echo games ;
echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_10/Release.key -O- | sudo apt-key add -
sudo apt update ;
sudo apt install lutris ;
wget -nc https://dl.winehq.org/wine-builds/winehq.key ;
sudo apt-key add winehq.key ;
deb https://dl.winehq.org/wine-builds/debian/ bullseye main ;
sudo apt update ;
sudo apt install --install-recommends winehq-staging ;
sudo apt install steam vim gimp htop vlc qbittorrent cowsay cargo ;
sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386 &&
sudo apt install libgl1-mesa-dri:i386 &&
git clone https://github.com/vinceliuice/Matcha-gtk-theme.git && cd Matcha-gtk-theme/ && ./install.sh && cd &&
git clone https://github.com/vinceliuice/Qogir-icon-theme.git && cd Qogir-icon-theme/ && ./install.sh && cd && 
sudo cargo install exa --root /bin && sudo mv /bin/bin/exa /bin/ &&
echo All done

