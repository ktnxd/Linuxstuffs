# Uncomment the multilib repo, incase it was commented out
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf ;
echo Moving Personal Configs ;
sleep 1 ;
rm -rf .bashrc
cp Linuxstuffs/.bashrcTP ~/.bashrc ;
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
sleep 1 ;	
sudo pacman -S discord firefox multilib-devel exa repo git lutris cowsay noto-fonts noto-fonts-emoji termite qbittorrent lolcat vlc tor torbrowser-launcher ;
git clone https://aur.archlinux.org/yay.git ;
cd yay ;
makepkg -si ;
cd ;
echo installing pacaur ;
sleep 1 ;
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
yay -S gradle maven protontricks gamemode matcha-gtk-theme qogir-icon-theme 
git config --global user.email ktnxbaii@gmail.com ; git config --global user.name ktnxd ;
rm -rf ckb-next yay ;
mkdir proton ;
yay -Sc ;
cowsay -f tux all done nigga ;
sleep 2
clear
cowsay -f tux Rebooting in 5
sleep 1
clear
cowsay -f tux Rebooting in 4
sleep 1
clear
cowsay -f tux Rebooting in 3
sleep 1
clear
cowsay -f tux Rebooting in 2
sleep 1
clear
cowsay -f tux Rebooting in 1
sleep 1
clear
cowsay -f sudo rm -rf / --no-preserve-root
sudo reboot
