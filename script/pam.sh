#! /bin/bash

apt-get --reinstall install libpam-runtime libpam-modules -y
pam-auth-update --force

sudo apt-get purge libpam-cracklib -y
sudo apt-get install libpam-pwquality -y

cp -r ./files/common-password /etc/pam.d/common-password
cp -r ./files/common-auth /etc/pam.d/common-auth
#cp -r ./files/common-account /etc/pam.d/common-account
#cp -r ./files/common-session /etc/pam.d/common-session
