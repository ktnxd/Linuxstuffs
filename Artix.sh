# Uncomment the multilib repo, incase it was commented out
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
echo Moving Personal Configs ;
sleep 1 ;
cd ;
cp Linuxstuffs/.bashrc ~/.bashrc ;
cp Linuxstuffs/wallhaven-4l5jkp.jpg ~/Pictures ; 
cp -r Linuxstuffs/.Xresources ~/.Xresources ; 
cp -r Linuxstuffs/.config/bspwm ~/.config/ ;
cp -r Linuxstuffs/.config/dunst ~/.config/ ;
cp -r Linuxstuffs/.config/mpd ~/.config/ ;
cp -r Linuxstuffs/.config/polybar ~/.config/ ;
cp -r Linuxstuffs/.config/sxhkd ~/.config/ ; 
cp -r Linuxstuffs/.config/termite ~/.config/ ;
cp -r Linuxstuffs/.config/xfce4 ~/.config/ ;
echo Installing Useful Shit
sleep 1 ;	
sudo pacman -Syu lib32-gcc-libs cmake libsystemd qt5-base zlib libappindicator-gtk2 quazip libpulse qt5-tools libxcb xcb-util-wm qt5-x11extras git filelight nvidia nvidia-cg-toolkit nvidia-dkms nvidia-prime nvidia-settings nvidia-utils nvidia-utils-openrc wine-staging winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader nvidia-utils lib32-nvidia-utils firefox discord steam-native-runtime exa multilib-devel vkd3d lib32-vkd3d repo lutris cowsay piper noto-fonts noto-fonts-emoji ;
# ckb-next
echo Keyboard Drivers ;
sleep 1 ;
git clone https://github.com/ckb-next/ckb-next.git ;
cd ckb-next/ ;
./quickinstall ;
cd ;
# Install pacaur
echo AUR
sudo pacman -S base-devel git wget multilib-devel cmake svn clang lzip patchelf inetutils python2-distlib
# Install ncurses5-compat-libs, lib32-ncurses5-compat-libs, aosp-devel, xml2, and lineageos-devel
for package in ncurses5-compat-libs lib32-ncurses5-compat-libs aosp-devel xml2 lineageos-devel; do
    git clone https://aur.archlinux.org/"${package}"
    cd "${package}" || continue
    makepkg -si --skippgpcheck
    cd - || break
    rm -rf "${package}"
done

echo -e "Installing platform tools & udev rules for adb!"
sudo pacman -S android-tools android-udev ;
echo -e "Installing more useful shit" ; 
yay -S gradle maven protontricks gamemode matcha-gtk-theme qogir-icon-theme 
git config --global user.email ktnxbaii@gmail.com ; git config --global user.name ktnxd ;
rm -rf ckb-next yay ;
mkdir proton ;
cowsay -f tux all done nigga ;
sleep 2
clear
cowsay -f tux Rebooting in 5
sleep 1
clear
cowsay -f tux Rebooting in 4
sleep 1
clear
cowsay -f tux Rebooting in 3
sleep 1
clear
cowsay -f tux Rebooting in 2
sleep 1
clear
cowsay -f tux Rebooting in 1
sleep 1
clear
cowsay -f sudo rm -rf / --no-preserve-root
sudo reboot
