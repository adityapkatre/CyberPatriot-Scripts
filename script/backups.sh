#!/bin/bash

echo "Taking backups of /var, /home, /etc /lib, /mnt into /root/backups/"

mkdir /root/backups/

cp -r /var /root/backups &
cp -r /home /root/backups &
cp -r /etc /root/backups &
cp -r /lib /root/backups &
cp -r /mnt /root/backups &
chmod 0666 /root
chmod 0666 /root/backups
chmod 0666 /root/backups/*

