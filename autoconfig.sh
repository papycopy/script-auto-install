#!/bin/bash
echo ""
echo "script de configuration automatique"
echo "              by Copy              "
sleep 5
echo " Mise a jour des depots"
sleep 2
apt update -y
clear
echo "Installation de Timeshift"
sleep 2
apt install timeshift -y
clear
echo "Installation de VLC"
sleep 2
apt install vlc -y
clear
echo "Installation de curl"
sleep 2
apt install curl -y
clear
echo "Telechargement et installation de Brave browser"
sleep 2
curl -fsS https://dl.brave.com/install.sh | sh
clear
echo "installation de flatpak"
sleep 2
apt install flatpak -y
apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
clear
echo "Installation de Strawberry"
sleep 2
add-apt-repository ppa:jonaski/strawberry -y
apt install strawberry -y
echo "Desinstallation de hexchat"
sleep 2
apt remove hexchat -y --purge
clear
echo "Desinstallation de Transmission"
sleep 2
apt remove transmission* -y --purge
clear
echo "Desinstallation de pix"
sleep 2
apt remove pix -y --purge
clear
echo "Desinstallation de Hipnotix"
sleep 2
apt remove hypnotix -y --purge
clear
echo "Desinstallation de Celluloid"
sleep 2
apt remove celluloid -y --purge
clear
echo "Activer l'architecture 32 bits"
sleep 2
dpkg --add-architecture i386 -y
apt update && apt upgrade -y 
apt autoremove -y
clear
echo "Mesa kisak"
add-apt-repository ppa:kisak/kisak-mesa -y
apt update
clear
echo "installation de XanMod et les dépendances"
sleep 2
wget -qO - https://dl.xanmod.org/archive.key | sudo gpg --dearmor -vo /etc/apt/keyrings/xanmod-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/xanmod-archive-keyring.gpg] http://deb.xanmod.org $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/xanmod-release.list
apt update && apt install linux-xanmod-x64v3 -y
apt install --no-install-recommends dkms libdw-dev clang lld llvm -y
clear
echo "Installation de Steam"
sleep 2
apt install steam-installer -y
clear
echo "installation de fish"
sleep 2
sudo apt install fish -y
chsh -s $(which fish)
clear
echo "Installation de Heroic games launcher"
sleep 2
wget https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.15.2/heroic_2.15.2_amd64.deb
apt install ./heroic_2.15.2_amd64.deb -y
rm heroic_2.15.2_amd64.deb
clear
echo "Installation de ProtonUp Qt"
sleep 2
flatpak install flathub net.davidotek.pupgui2 -y
clear
echo "Installation de Lutris"
sleep 2
add-apt-repository ppa:lutris-team/lutris -y
apt update
apt install lutris -y
clear
echo "Outils gaming overlay et gamemode"
sleep 2
apt install gamemode mangohud goverlay -y
flatpak install flathub net.davidotek.pupgui2 -y
echo "Mise a jour du Systeme"
sleep 1
echo "Désinstallation de mini jeu Debian"
sleep 2
apt purge aisleriot five-or-more four-in-a-row gnome-chess hitori gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-robots gnome-sudoku gnome-taquin gnome-tetravex iagno lightsoff quadrapassel swell-foop tali 2048 cheese pidgin remmina rythmbox sound-juicer -y
clear
echo "desinstallation du trousseau de clé gnome"
sleep 1
apt remove seahorse --purge
clear
echo "fastfetch"
sleep 1
apt install fastfetch -y
clear
apt update -y
apt full-upgrade -y
apt autoremove -y
apt autoclean -y
apt purge
clear
echo "Sauvegarde du Systeme"
sleep 2
#timeshift --create
clear
echo "Configuration Terminée et reboot de la machine"
sleep 5
echo "                     Bisous"
sleep 5
systemctl reboot
