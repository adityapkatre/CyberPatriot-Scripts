#!/bin/bash

echo ""
echo "Copying Secure login.defs..."
cp ./files/login.defs /etc/login.defs
chmod 664 /etc/login.defs
