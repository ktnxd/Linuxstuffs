#Enable Multilib
sudo sed -i "/\[Multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
#Moving configs
cp Linuxstuffs/.bashrc ~/.bashrc ;
sudo cp Linuxstuffs/.bashrcArtixROOT /root/.bashrc ;
cp Linuxstuffs/wallhaven.jpg ~/Pictures ;
cp -r Linuxstuffs/.config/xfce4 ~/.config/ ;
cp -r Linuxstuffs/.config/neofetch ~/.config/ ;
#Update & Standard packages
sudo pacman -Syyyu base-devel cmake multilib-devel libsystemd qt5-base zlib libdbusmenu-qt5 quazip libpulse qt5-tools libxcb xcb-util-wm qt5-x11extras git ;
#Wine
sudo pacman -S wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader vkd3d lib32-vkd3d ;
#Other shit
sudo pacman -S discord firefox steam steam-native-runtime lutris exa android-tools android-udev papirus-icon-theme tar vlc lightdm-gtk-greeter-settings grub-customizer ;
#Drivers
sudo pacman -S nvidia nvidia-utils nvidia-dkms nvidia-cg-toolkit nvidia-prime nvidia-settings lib32-nvidia-utils amd-ucode piper ;
#BFS
git clone https://github.com/ckb-next/ckb-next.git ;
cd ckb-next/ ; 
./quickinstall ;
cd ;
git clone https://aur.archlinux.org/paru.git ;
cd paru/ ;
makepkg -si ;
cd ;
#AUR
paru -S protontricks gamemode matcha-gtk-theme etcher ;
#Zen kernel
sudo pacman -S linux-zen linux-zen-headers && sudo grub-mkconfig -o /boot/grub/grub.cfg
#Proton
mkdir GE ; cd GE/ ; wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/6.10-GE-1/Proton-6.10-GE-1.tar.gz ; mkdir -p ~/.steam/root/compatibilitytools.d ; tar -xf Proton-6.10-GE-1.tar.gz -C ~/.steam/root/compatibilitytools.d/ ; cd ;
mkdir proton ;
git config --global user.email ktnxbaii@gmail.com ; git config --global user.name ktnxd ;
echo fin ;
sleep 3 ;
clear ;
echo reboot now boi
