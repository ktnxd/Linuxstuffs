# Uncomment the multilib repo, incase it was commented out
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
echo Moving Personal Configs ;
sleep 1;
cp Linuxstuffs/.bashrctp ~/.bashrc ;
sudo cp Linuxstuffs/.bashrctproot /root/.bashrc ;
cp Linuxstuffs/wallhaven.jpg ~/Pictures ; 
#cp -r Linuxstuffs/.config-thinkpad/xfce4 ~/.config/ ;
echo Stuffs ;
sleep 3 ;
sudo pacman -Syu --noconfirm discord firefox xorg xorg-xinit cowsay exa noto-fonts noto-fonts-emoji qbittorrent gamemode vlc repo libappindicator-gtk2 libappindicator-gtk3 libappletdecoration lib32-libappindicator-gtk3 lib32-libappindicator-gtk2 gnome-shell-extension-appindicator ;
echo Wine ;
sudo pacman -S --noconfirm wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader &&
echo Drivers ;
sudo pacman -S --noconfirm mesa lib32-mesa vulkan-intel xf86-video-intel intel-media-driver intel-ucode lib32-vulkan-intel &&
echo Games and shit ;
sleep 3
sudo pacman -S --noconfirm steam-native-runtime lutris ;
# AOSP stuff
echo AOSP stuff &&
sleep 3 &&
sudo pacman -S --noconfirm base-devel git wget multilib-devel cmake svn clang lzip patchelf inetutils python2-distlib
# Install ncurses5-compat-libs, lib32-ncurses5-compat-libs, aosp-devel, xml2, and lineageos-devel
for package in ncurses5-compat-libs lib32-ncurses5-compat-libs aosp-devel xml2 lineageos-devel; do
    git clone https://aur.archlinux.org/"${package}"
    cd "${package}" || continue
    makepkg -si --skippgpcheck
    cd - || break
    rm -rf "${package}"
done
echo -e "Installing platform tools & udev rules for adb!"
sudo pacman -S --noconfirm android-tools android-udev &&
cd &&
echo Paru &&
sleep 3 &&
git clone https://aur.archlinux.org/paru.git &&
cd paru/ &&
makepkg -si &&
cd &&
echo AUR packages
paru -S gradle maven protontricks matcha-gtk-theme qogir-icon-theme papirus-maia-icon-theme-git &&
echo 
git config --global user.email ktnxbaii@gmail.com ; git config --global user.name ktnxd ;
mkdir proton ;
paru -Sc ;
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
#sudo reboot
