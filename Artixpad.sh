#Moving configs
cp Linuxstuffs/.bashrc ~/.bashrc ;
sudo cp Linuxstuffs/.bashrcroot /root/.bashrc
cp Linuxstuffs/wallhaven.jpg ~/Pictures/wallhaven.jpg ;
cp -r Linuxstuffs/.config/neofetch ~/.config/ ;
#Base
sudo pacman -Syyyu base-devel multilib-devel make cmake git rust intel-ucode xf86-video-intel lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader gvfs-mtp fuse transmission-gtk mpv bash-completion openrc-bash-completions &&
cargo install exa &&
sudo mv .cargo/bin/exa /bin &&
#paru
git clone https://aur.archlinux.org/paru.git && cd paru/ && makepkg -si && cd &&
#Other shit
paru -Syyy librewolf-bin qogir-icon-theme-git matcha-gtk-theme-git protontricks-git librewolf-bin lutris papirus-icon-theme-git android-udev-git android-sdk-platform-tools android-bash-completion &&
echo fin
