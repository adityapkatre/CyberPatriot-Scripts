#!/bin/bash

#sudo apt-get purge avahi-daemon -y
sudo apt-get purge telnet -y
sudo apt-get purge pure-ftpd
sudo apt-get purge bind9 
sudo apt-get purge apache2 
sudo apt-get purge medusa -y
sudo apt-get purge fcrackzip -y 
sudo apt-get purge hydra -y
sudo apt-get purge john -y
sudo apt-get purge knocker -y
sudo apt-get purge arp-scan -y
sudo apt-get purge braa -y
sudo apt-get purge nbtscan -y
sudo apt-get remove telnetd
sudo apt-get purge nmap -y
sudo apt-get purge python-nmap -y
sudo apt-get purge freeciv-server -y
sudo apt-get purge aisleriot -y
sudo apt-get purge gnome-mahjongg -y
sudo apt-get purge gnome-mines -y
sudo apt-get purge gnome-sudoku -y
sudo apt-get purge kmines -y
sudo apt-get purge libkf5kdegames7 -y
sudo apt-get purge tightvncserver -y
sudo apt-get purge vino -y
sudo apt-get purge zenmap -y 
sudo apt-get purge nikto -y
sudo apt-get purge aircrack-ng -y
sudo apt-get purge dnswalk -y
sudo apt-get purge kismet -y
sudo apt-get purge netcat -y
sudo apt-get purge tcpdump -y
sudo apt-get purge bleachbit -y
sudo apt-get purge freedoom -y
sudo apt-get purge seahorse -y
sudo apt-get purge doona -y
sudo apt-get purge nessus -y
sudo apt-get purge nmap -y
sudo apt-get purge nikto -y
sudo apt-get purge openvas -y
sudo apt-get purge nexpose -y
sudo apt-get purge deluge -y
sudo apt-get purge pumpa -y
sudo apt-get purge nbtscan -y
sudo apt-get purge nikto -y
sudo apt-get purge t50 -y
sudo apt-get purge neverball -y
sudo apt-get purge bluez -y
sudo apt-get purge pixiewps -y
sudo apt-get purge reaver -y
sudo apt-get purge wifite -y
sudo apt-get purge mdk4 -y
sudo apt-get purge minetest -y
sudo apt-get purge moon-buggy -y
sudo apt-get purge wfuzz -y
sudo apt-get purge dirb -y
sudo apt-get purge doomsday -y
sudo apt-get purge atom4 -y
apt-get purge tetrinet-server -y
apt-get purge xye -y
apt-get purge trackballs -y
# apt-get purge php
apt-get purge vsftpd
apt-get purge four-in-a-row -y
apt-get purge greed -y
apt-get purge hitori -y
apt-get purge iagno -y
apt-get purge gnome-chess -y
apt-get purge gnome-klotski -y
apt-get purge gnome-nibbles -y
apt-get purge gnome-taquin -y
apt-get purge lightsoff -y
apt-get purge quadrapassel -y
apt-get purge swell-foop -y
apt-get purge slapd
apt-get purge darkstat -y
apt-get purge enigma -y
apt-get purge samba
apt-get purge goldeneye -y
apt-get purge recon-ng -y
apt-get purge remmina -y
apt-get purge thc-ipv6 -y
apt-get purge rfdump -y
apt-get purge postgresql
apt-get purge cowsay -y
apt-get purge openssh-server 
apt-get purge fenix
sudo apt-get purge pixfrogger -y
sudo apt-get purge featherpad -y
apt-get purge xrdp -y
apt-get purge dropbear
apt-get purge postfix

rm -rf /bin/nc.traditional

echo "Configuring APT..."
cp files/50unattendedupgrades /etc/apt/apt.conf.d/50unattended-upgrades

#echo "Configuring APT Sources"
#cp ./files/sources.list /etc/apt/sources.list
echo ""
echo "##########################################################"
echo "#  - Remove unneeded services with service --status-all  #"
echo "#  - Remove services using dpkg -l                       #"
echo "##########################################################"
