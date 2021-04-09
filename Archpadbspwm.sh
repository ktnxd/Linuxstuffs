# Uncomment the multilib repo, incase it was commented out
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
sudo pacman -Syyyu ;
echo Moving Personal Configs ;
sleep 3 ;
cp Linuxstuffs/.bashrctp ~/.bashrc ;
sudo cp Linuxstuffs/.bashrctproot /root/.bashrc ;
cp Linuxstuffs/wallhaven.jpg ~/Pictures ;
cp -r Linuxstuffs/.config-thinkpad/.Xresources ~/.Xresources ; 
cp -r Linuxstuffs/.config-thinkpad/bspwm ~/.config/ ;
cp -r Linuxstuffs/.config-thinkpad/dunst ~/.config/ ;
cp -r Linuxstuffs/.config-thinkpad/mpd ~/.config/ ;
cp -r Linuxstuffs/.config-thinkpad/polybar ~/.config/ ;
cp -r Linuxstuffs/.config-thinkpad/sxhkd ~/.config/ ; 
cp -r Linuxstuffs/.config-thinkpad/termite ~/.config/ ;
echo Installing Useful Shit ;
sleep 3 ;
echo Tools ;
sudo pacman -S --noconfirm xorg xorg-xinit wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader lib32-mesa vulkan-intel intel-ucode lib32-vulkan-intel xf86-video-intel intel-media-driver vulkan-icd-loader lib32-vulkan-icd-loader steam-native-runtime discord firefox multilib-devel exa repo git lutris cowsay noto-fonts noto-fonts-emoji termite qbittorrent gamemode vlc ;
echo bspwm ;
sudo pacman -S --noconfirm bspwm dunst mpd polybar sxhkd termite pulseaudio pavucontrol ;
echo AOSP ;
sleep 3 ;
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
sudo pacman -S --noconfirm android-tools android-udev ;
cd ;
echo Paru ;
sleep 3 ;
git clone https://aur.archlinux.org/paru.git ;
cd paru/ ;
makepkg -si ;
cd ;
paru -S gradle maven protontricks matcha-gtk-theme qogir-icon-theme ;
git config --global user.email ktnxbaii@gmail.com ; git config --global user.name ktnxd ;
cowsay -f tux rebooting in 60..59..58.. ;
sleep 3 ;
clear ;
cowsay -f tux joke kbai ;
sleep 2 ;
sudo reboot ;