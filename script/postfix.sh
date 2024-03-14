#!/bin/bash

echo "Securing SMTP..."

sudo apt-get --purge autoremove postfix -y

sudo apt-get install postfix -y

sudo systemctl enable postfix.service

sudo cp ./files/postfix-main.cf /etc/postfix/main.cf

#read -ep "Enter your hostname (if you don't know enter \"idk\") : " hostname
#
#if [ "$hostname" = "idk" ]; then
#    echo "hostname = domain.name.here" | sudo tee -a /etc/postfix/main.cf >/dev/null
#else
#    echo "\033[0;31m too bad, set hostname on ur own"
#fi

sudo chmod 0644 /etc/postfix/*
sudo chmod 0644 /etc/postfix/

sudo systemctl reload postfix >/dev/null

sudo systemctl restart postfix >/dev/null

sudo systemctl enable postfix >/dev/null

sudo systemctl status postfix

echo "Done."
