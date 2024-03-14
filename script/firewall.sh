#!/bin/bash

sudo apt-get install ufw -y
sudo apt-get install iptables -y

sudo ufw enable
sudo ufw logging high

sudo apt-get install iptables-persistent -y
sudo netfilter-persistent save

#sudo apt-get install gufw -y
#sudo gufw

#sudo iptables -F

sudo ufw status
