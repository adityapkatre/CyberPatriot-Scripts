#! /bin/bash
#clear
if [ $UID -ne 0 ] ; then
    echo "You must be root to run this script!"
    return 1
fi

#https://patorjk.com/software/taag/#p=display&h=2&v=2&f=Ogre&t=3

# echo -e "\e[91m
#  __    __ _ _   _               
# / / /\ \ (_) |_| |__   ___ _ __ 
# \ \/  \/ / | __| '_ \ / _ \ '__|
#  \  /\  /| | |_| | | |  __/ |   
#   \/  \/ |_|\__|_| |_|\___|_|
# "
# echo ""
echo ""

echo "Menu"
echo "1: Take backups"
echo "2: Users + /home Permissions"
echo "3: login.defs"
echo "4: PAM"
echo "5: Firewall"
echo "6: Some File Permissions"
echo "7: Forbidden Files"
echo "8: Syspref.js & User.js (not working)"
echo "9: Update System"
echo "10: Remove Common APT Packages + Configure APT"
echo "11: Remove snap Packages"
echo "12: Configure services"

echo -n "Run> "
read option

#apt-get install meld -y > /dev/null

echo -e "\e[39m"
echo ""

case $option in
  1)
  source backups.sh
  ;;
  2)
   source users.sh
   chmod 0755 /home
   chmod 0755 /home/*
   ;;
  3)
   source logindefs.sh
   ;;
  4)
   source pam.sh
   ;;
  5)
   source firewall.sh
   ;;
  6)
   source fileperms.sh
   # source vidarholen_fileperms.sh 2> /dev/null # broken
   ;;
  7)
   source aphophis-forbidden-files.sh
   ;;
  8)
   source Browsers-Script.sh
   ;;
  9)
   source updates.sh
   ;;
  10)
   source packages.sh
   ;;
  11)
   source snap.sh
   ;;
  12)
   source service-driver.sh
   ;;
esac
