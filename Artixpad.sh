# Uncomment the multilib repo, incase it was commented out
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
sudo pacman -Syyyu
echo Moving Personal Configs ;
sleep 3 ;
cp Linuxstuffs/.bashrc ~/.bashrcTP ;
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
sleep 3 ;	
sudo pacman -S wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader lib32-mesa vulkan-intel intel-ucode lib32-vulkan-intel xf86-video-intel intel-media-driver  vulkan-icd-loader lib32-vulkan-icd-loader steam-native-runtime discord firefox multilib-devel exa repo git lutris cowsay noto-fonts noto-fonts-emoji termite qbittorrent lolcat vlc ;
sleep 3 ;
# AOSP stuff
echo AOSP stuff ;
sleep 3 ;
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
cd ;
echo AUR packages ;
sleep 3 ;
git clone https://aur.archlinux.org/yay.git ;
cd yay/ ;
makepkg -si ;
cd ;
yay -S gradle maven protontricks gamemode matcha-gtk-theme qogir-icon-theme 
git config --global user.email ktnxbaii@gmail.com ; git config --global user.name ktnxd ;
rm -rf ckb-next yay ;
mkdir proton ;
yay -Sc ;
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
