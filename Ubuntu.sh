echo Enable 32bit Architecture &&
sudo dpkg --add-architecture i386 &&
echo Moving Personal Configs &&
sleep 2
cp Linuxstuffs/.bashrcUbuntu ~/.bashrc &&
cp Linuxstuffs/wallhaven-4l5jkp.jpg ~/Pictures && 
cp -r Linuxstuffs/.Xresources ~/.Xresources && 
cp -r Linuxstuffs/.config/bspwm ~/.config/ &&
cp -r Linuxstuffs/.config/dunst ~/.config/ &&
cp -r Linuxstuffs/.config/mpd ~/.config/ &&
cp -r Linuxstuffs/.config/polybar ~/.config/ &&
cp -r Linuxstuffs/.config/sxhkd ~/.config/ &&
cp -r Linuxstuffs/.config/termite ~/.config/ &&
cp -r Linuxstuffs/.config/xfce4 ~/.config/ &&
echo Now Installing Shit &&
sleep 2
wget -nc https://dl.winehq.org/wine-builds/winehq.key &&
sudo apt-key add winehq.key &&
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' &&
sudo apt-get update &&
sudo apt-get install --install-recommends winehq-staging &&
sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 &&
sudo add-apt-repository ppa:graphics-drivers/ppa &&
sudo apt update &&
sudo apt install nvidia-driver-440 libnvidia-gl-440 libnvidia-gl-440:i386 &&
sudo apt install libvulkan1 libvulkan1:i386 &&
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig &&
echo Installing programs &&
sleep 2
sudo add-apt-repository ppa:lutris-team/lutris &&
sudo apt update &&
sudo apt install lutris bspwm nitrogen dunst mpd sxhkd steam vim discord gimp htop vlc qbittorrent lxappearance ckb-next cowsay &&
echo Building From Source &&
sleep 2
git clone https://github.com/vinceliuice/Matcha-gtk-theme.git && cd Matcha-gtk-theme/ && ./install.sh && cd &&
git clone https://github.com/vinceliuice/Qogir-icon-theme.git && cd Qogir-gtk-theme/ && ./install.sh && cd && 
echo Polybar &&
sleep 2
git clone https://github.com/polybar/polybar.git && cd polybar/ && ./build.sh && cd &&
echo Termite &&
sleep 2
git clone --recursive https://github.com/thestinger/termite.git &&
cd termite && make && cd &&
clear &&
cowsay -f tux all done nibba
sleep 2
clear
cowsay -f tux Rebooting in 5...
sleep 1
clear
cowsay -f tux Rebooting in 4
sleep 1
clear
cowsay -f tux rebooting in 3
sleep 1
clear
cowsay -f tux rebooting in 2
sleep 1
clear
cowsay -f tux sudo rm -rf / --no-preserve-root 
sudo reboot
