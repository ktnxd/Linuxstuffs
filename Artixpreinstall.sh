echo installing Arch Repos ;
sudo pacman -Syu artix-archlinux-support ;
sudo echo -e "\n[multilib]\nInclude = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf ;
sudo echo -e "\n[extra]\nInclude = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf ;
sudo echo -e "\n[community]\nInclude = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf ;
sudo pacman -Syyy ;

