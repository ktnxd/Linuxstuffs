#Moving configs
cp Linuxstuffs/.bashrc ~/.bashrc ;
sudo cp Linuxstuffs/.bashrcroot /root/.bashrc
cp Linuxstuffs/wallhaven.jpg ~/Pictures/wallhaven.jpg ;
cp -r Linuxstuffs/.config/neofetch ~/.config/ ;
#Base
sudo pacman -Syyyu base-devel multilib-devel make cmake git rust &&
cargo install exa &&
sudo mv .cargo/bin/exa /bin &&
#Drivers
sudo pacman -S --needed intel-ucode xf86-video-intel lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader &&
#shit
sudo pacman -S gamemode lib32-gamemode gvfs-mtp fuse transmission-gtk mpv bash-completion openrc-bash-completions &&
#paru
git clone https://aur.archlinux.org/paru.git && cd paru/ && makepkg -si && cd &&
#Other shit
paru -Syyy brave-bin qogir-icon-theme-git matcha-gtk-theme-git protontricks-git librewolf-bin lutris papirus-icon-theme-git android-udev-git android-sdk-platform-tools android-bash-completion &&
echo fin
