#!/bin/bash

sudo apt-get install proftpd -y

apt-get --purge autoremove vsftpd -y
apt-get --purge autoremove pure-ftpd -y
apt-get --purge autoremove ftp -y

service proftpd start

cp ./files/proftpd.conf /etc/proftpd/proftpd.conf

service proftpd restart

proftpd -td1
service proftpd status
chmod 0644 /etc/proftpd/proftpd.conf
chmod 0644 /etc/proftpd/