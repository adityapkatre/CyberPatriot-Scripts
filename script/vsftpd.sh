#!/bin/bash

echo "Securing vsftpd..."
echo "This will remove and install to reset, don't panic"

apt-get purge vsftpd -y
apt-get install vsftpd -y


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
sudo systemctl status vsftpd

sudo chmod 0644 /etc/vsftpd.conf
sudo chmod 0644 /etc/

echo "Done."
