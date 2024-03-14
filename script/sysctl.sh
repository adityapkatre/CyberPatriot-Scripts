#!/bin/bash

echo "Copying Secure Sysctl..."

sudo cp ./files/sysctl.conf /etc/sysctl.conf

sysctl -p

service procps restart
