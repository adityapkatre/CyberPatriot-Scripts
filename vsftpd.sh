#!/bin/bash

echo "Securing vsftpd..."

read -ep "What type of Authentication: Local (default) or Anonymous [l/a]: " authtype

echo ""
echo "Installing vsftpd..."

if [[ "$authtype" == "l" ]]
then
    file="vsftpd-local.conf"
else
    file="vsftpd-anon.conf"
fi

echo "Copying ./files/$file to /etc/vsftpd.conf"
sudo cp ./files/$file /etc/vsftpd.conf

echo "Restarting Service..."
sudo systemctl restart vsftpd

sudo chmod 644 /etc/vsftpd.conf

echo "Done."
