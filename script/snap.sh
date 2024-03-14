#! /bin/bash

echo "This is snap script..."
sudo snap list

read -ep "How many snaps would you like to remove? " numofsnaps

while [ $numofsnaps -gt 0 ]
do
    read -ep "Snap name: " package
    sudo snap remove $package --purge
    numofsnaps=$(($numofsnaps-1))
done

echo "Done."