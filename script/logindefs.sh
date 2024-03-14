#! /bin/bash

cp /etc/login.defs /root/login.defs.bak

echo ""
echo "Copying Secure login.defs..."
cp ./files/login.defs /etc/login.defs
chmod 664 /etc/login.defs
