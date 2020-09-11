# Uncomment the multilib repo, incase it was commented out
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
echo Moving Personal Configs ;
sleep 1 ;
cp Archstuffs/.bashrc ~/.bashrc ;
cp Archstuffs/wallhaven-4l5jkp.jpg ~/Pictures ; 
cp -r Archstuffs/.Xresources ~/.Xresources ; 
cp -r Archstuffs/.config/bspwm ~/.config/ ;
cp -r Archstuffs/.config/dunst ~/.config/ ;
cp -r Archstuffs/.config/mpd ~/.config/ ;
cp -r Archstuffs/.config/polybar ~/.config/ ;
cp -r Archstuffs/.config/sxhkd ~/.config/ ; 
cp -r Archstuffs/.config/termite ~/.config/ ;
cp -r Archstuffs/.config/xfce4 ~/.config/ ;
echo Istalling Useful Shit
sleep 1 ;	
sudo pacman -Syu cmake libsystemd qt5-base zlib libappindicator-gtk2 quazip libpulse qt5-tools libxcb xcb-util-wm qt5-x11extras git filelight nvidia nvidia-cg-toolkit nvidia-dkms nvidia-prime nvidia-settings nvidia-utils nvidia-utils-openrc wine-staging winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader nvidia-utils lib32-nvidia-utils firefox discord steam-native-runtime multilib-devel vkd3d lib32-vkd3d repo lutris cowsay ;
echo Keyboard Drivers ;
sleep 1 ;
git clone https://github.com/ckb-next/ckb-next.git ;
cd ckb-next/ ;
./quickinstall ;
cd ;
echo YAY ; 
sleep 1 ;
git clone https://aur.archlinux.org/yay.git ;
cd yay/
makepkg -si ;
cd ;
yay -S gradle maven protontricks gamemode matcha-gtk-theme qogir-icon-theme ;
git clone https://github.com/akhilnarang/scripts ; 
cd scripts ;
bash setup/arch-manjaro.sh ;
cd ;
git config --global user.email ktnxbaii@gmail.com ; git config --global user.name ktnxd ;
rm -rf ckb-next yay ;
mkdir proton ;
cowsay -f tux all done nigga ;
echo rebooting in 5
sleep 1
echo		  4
sleep 1
echo		  3
sleep 1
echo		  2
sleep 1
echo		  1
echo sudo rm -rf --no-preserve-root
sudo reboot
