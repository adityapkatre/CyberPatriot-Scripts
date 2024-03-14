#!/bin/bash

echo "Securing SSH..."

sudo apt-get install openssh-server -y

sudo apt-get install ssh -y

sudo systemctl enable sshd.service

sudo systemctl enable ssh.service

sudo systemctl start sshd.service

sudo cp ./files/sshd_config /etc/ssh/sshd_config

sudo systemctl restart sshd

#ssh-keygen -b 4096

#cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys

sudo chmod 644 /etc/ssh/sshd_config

sudo systemctl reload sshd.service

sudo systemctl restart sshd

sudo systemctl enable sshd

sudo systemctl status sshd

echo "Done."
