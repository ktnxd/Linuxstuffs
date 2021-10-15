#Enable Multilib
sudo sed -i "/\[Multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
#Moving configs
echo Dots
cp Linuxstuffs/.bashrc ~/.bashrc ;
sudo cp Linuxstuffs/.bashrcroot /root/.bashrc
cp Linuxstuffs/wallhaven.jpg ~/Pictures ;
cp -r Linuxstuffs/.config/xfce4 ~/.config/ ;
cp -r Linuxstuffs/.config/neofetch ~/.config/ ;
#Update & Standard packages
echo Sum Stuffs ;
sudo pacman -Syyyu base-devel cmake multilib-devel libsystemd qt5-base zlib libdbusmenu-qt5 quazip libpulse qt5-tools libxcb xcb-util-wm qt5-x11extras git ;
#Wine
sudo pacman -S wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader vkd3d lib32-vkd3d ;
#Other shit
echo Stuffs ;
sleep 1
sudo pacman -S discord firefox steam steam-native-runtime lutris exa android-tools android-udev papirus-icon-theme tar vlc lightdm-gtk-greeter-settings grub-customizer ;
#Drivers
echo Drivers ; 
sleep 1
sudo pacman -S amd-ucode amdvlk lib32-amdvlk mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader piper ;
#paru
echo Paru ;
sleep 1
git clone https://aur.archlinux.org/paru.git ;
cd paru/ ;
makepkg -si ;
cd ;
#AUR packages
echo AUR packages ;
sleep 1
paru -S protontricks gamemode matcha-gtk-theme etcher ;
#Zen kernel
echo zen kernel ;
sleep 1
sudo pacman -S linux-zen linux-zen-headers && sudo grub-mkconfig -o /boot/grub/grub.cfg
mkdir proton ;
git config --global user.email ktnxbaii@gmail.com ; git config --global user.name ktnxd ;
echo fin ;
sleep 3 ;
clear ;
echo reboot now boi
