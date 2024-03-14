#!/bin/bash

sudo apt-get update -y
sudo apt-get --fix-broken install -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get update -y
sudo apt-get autoclean
sudo apt-get autoremove -y
sudo apt-get clean -y
sudo apt-get --fix-broken install -y

sudo apt-get install --only-upgrade firefox

sudo apt install --install-recommends linux-generic-hwe-20.04 -y
sudo apt install --install-recommends linux-image-generic-hwe-22.04 -y

rm -rf /etc/apt/sources.list.d/*
echo "" > /etc/apt/sources.list
sudo apt update
sudo software-properties-gtk