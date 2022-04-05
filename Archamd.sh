#Arch shit
#Enable Multilib
sudo sed -i "/\[Multilib\]/,/Include/"'s/^#//' /etc/pacman.conf &&
#Base
sudo pacman -Syyyu --needed xarchiver tar amd-ucode base-devel git multilib-devel make cmake git rust exa bash-completion bashtop
#Drivers
sudo pacman -S --needed mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader &&
#Wine
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader &&
#Shit
sudo pacman -S --needed papirus-icon-theme steam steam-native-runtime lutris gamemode lib32-gamemode gvfs-mtp fuse transmission-gtk libreoffice-fresh android-tools android-udev dracula-gtk-theme 
#AUR
git clone https://aur.archlinux.org/paru.git ; cd paru/ ; makepkg -si ; cd ;
#AUR Packages
paru -Syyy --needed betterlockscreen arcolinux-betterlockscreen librewolf papirus-icon-theme protontricks-git openrgb-git qogir-icon-theme-git matcha-gtk-theme-git aritim-dark-gtk-git arcolinux-logout arcolinux-logout 