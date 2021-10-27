#Enable Multilib
sudo sed -i "/\[Multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
#Moving configs
cp Linuxstuffs/.bashrc ~/.bashrc ;
sudo cp Linuxstuffs/.bashrcroot /root/.bashrc
cp Linuxstuffs/wallhaven.jpg ~/Pictures/wallhaven.jpg ;
cp -r Linuxstuffs/.config/neofetch ~/.config/ ;
#Base
sudo pacman -Syyyu base-devel multilib-devel make cmake
#Drivers
sudo pacman -S --needed amd-ucode mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader ;
#Wine
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader ;
#Other shit
sudo pacman -S steam steam-native-runtime lutris piper firefox papirus-icon-theme transmission-gtk mpv discord gamemode exa android-tools android-udev gvfs-mtp ;
#Paru
git clone https://aur.archlinux.org/paru.git ;
cd paru/ ;
makepkg -si ;
cd ;
paru -Syyy matcha-gtk-theme-git protontricks-git ; 
echo fin
