#!/bin/bash

sudo apt-get remove rsh-server -y

sudo apt-get remove nis -y

sudo apt-get remove -*tftpd* -y

sudo apt-get install libpam-pkcs11 -y

sudo systemctl mask ctrl-alt-del.target

rm -f /etc/profile.d/99-terminal_tmout.sh
sudo touch /etc/profile.d/99-terminal_tmout.sh
echo "TMOUT=600" >> /etc/profile.d/99-terminal_tmout.sh

sudo apt-get remove telnetd -y
sudo apt-get purge telnet -y


#gsettings

sudo gsettings set org.gnome.desktop.lock-enabled true
sudo gsettings set org.gnome.desktop.screensaver lock-enabled true
sudo gsettings set org.gnome.desktop.file-sharing require-password always

dconf update
sudo systemctl daemon-reload

echo ""
echo ""

echo "sudo chown syslog /var/log/syslog:"
sudo chown syslog /var/log/syslog

sudo sed -i -E 's/^([^!#]+)/!\1/' /etc/ca-certificates.conf
sudo update-ca-certificates

sudo sysctl --system

sudo find /lib /usr/lib /lib64 ! -group root -type d -exec chgrp root '{}' \;

sudo su -c "echo install usb-storage /bin/true >> /etc/modprobe.d/DISASTIG.conf"
sudo su -c "echo blacklist usb-storage >> /etc/modprobe.d/DISASTIG.conf"

sudo chgrp adm /var/log/syslog

sudo chmod 0750 /var/log

sudo apt-get install libpam-pwquality -y

sudo find /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin ! -user root -type d -exec chown root '{}' \;

sudo find /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin -perm /022 -type d -exec chmod -R 0755 '{}' \;

sudo find /lib /lib64 /usr/lib -perm /022 -type f -exec chmod 0755 '{}' \;

sudo find /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin ! -group root -type d -exec chgrp root '{}' \;

cd /tmp; apt download aide-common

dpkg-deb --fsys-tarfile /tmp/aide-common_*.deb | sudo tar -x ./usr/share/aide/config/cron.daily/aide -C /

sudo cp -f /usr/share/aide/config/cron.daily/aide /etc/cron.daily/aide

