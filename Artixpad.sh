# Uncomment the multilib repo, incase it was commented out
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
echo Moving Personal Configs ;
sleep 1 ;
cp Linuxstuffs/.bashrctp ~/.bashrc ;
sudo cp Linuxstuffs/.bashrctproot /root/.bashrc
cp Linuxstuffs/wallhaven.jpg ~/Pictures ; 
cp -r Linuxstuffs/.config-thinkpad/.Xresources ~/.Xresources ; 
cp -r Linuxstuffs/.config-thinkpad/bspwm ~/.config/ ;
cp -r Linuxstuffs/.config-thinkpad/dunst ~/.config/ ;
cp -r Linuxstuffs/.config-thinkpad/mpd ~/.config/ ;
cp -r Linuxstuffs/.config-thinkpad/polybar ~/.config/ ;
cp -r Linuxstuffs/.config-thinkpad/sxhkd ~/.config/ ; 
cp -r Linuxstuffs/.config-thinkpad/termite ~/.config/ ;
cp -r Linuxstuffs/.config-thinkpad/xfce4 ~/.config/ ;
echo Installing Useful Shit ;
sudo pacman -Syu --noconfirm discord firefox xorg xorg-xinit repo libappindicator-gtk2 libappindicator-gtk3 lib32-libappindicator-gtk3 lib32-libappindicator-gtk2 gnome-shell-extension-appindicator gnome-tweaks xorg xorg-xinit wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs  lib32-mesa vulkan-intel intel-ucode lib32-vulkan-intel xf86-video-intel intel-media-driver vulkan-icd-loader lib32-vulkan-icd-loader multilib-devel exa noto-fonts noto-fonts-emoji qbittorrent gamemode vlc android-tools android-udev ;
echo PARU ;
sleep 1
git clone https://aur.archlinux.org/paru.git ;
cd paru/ ;
makepkg -si ;
cd ;
paru -S gradle maven protontricks matcha-gtk-theme qogir-icon-theme qogir-gtk-theme ; 
git config --global user.email ktnxbaii@gmail.com ; git config --global user.name ktnxd ;
mkdir proton ;
paru -Sc --noconfirm ;
echo rebooting in 5...
sleep 5
echo sudo rm -rf / --no-preserve-root
sudo reboot
