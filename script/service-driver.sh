#! /bin/bash

#clear
#https://patorjk.com/software/taag/#p=display&h=2&v=2&f=Ogre&t=3

echo -e "\e[91m
     _______. _______ .______     ____    ____  __    ______  _______ 
    /       ||   ____||   _  \    \   \  /   / |  |  /      ||   ____|
   |   (----'|  |__   |  |_)  |    \   \/   /  |  | |  ,----'|  |__   
    \   \    |   __|  |      /      \      /   |  | |  |     |   __|  
.----)   |   |  |____ |  |\  \----.  \    /    |  | |  '----.|  |____ 
|_______/    |_______|| _| '._____|   \__/     |__|  \______||_______|
                                                                      

"

echo ""

echo "Services"
echo "1: ssh"
echo "2: vsftpd"
echo "3: proftpd"
echo "4: pure_ftpd (cheetah-needs work)"
echo "5: samba-aphophis-needs-work"
echo "6: php (need to create script from scratch)"
echo "7: mysql-aphophis-needs-work"
echo "8: "
echo "9: "
echo "10: "
echo "11: "
echo "12: Return to driver.sh"
echo -n "Run> "
read option

#apt-get install meld -y > /dev/null

echo -e "\e[39m"
echo ""

case $option in
  1)
   source sshd.sh
   ;;
  2)
   source vsftpd.sh
   ;;
  3)
   source proftpd.sh
   ;;
  4)
   source pure_ftpd-cheetah-needs-work.sh
   ;;
  5)
   source aphophis-samba-needs-work.sh
   ;;
  6)
   
   ;;
  7)
   source mysql-aphophis-needs-work.sh
   ;;
  8)
   
   ;;
  9)
    
   ;;
  10)
    
   ;;
  11)
    
   ;;
  12)
  source driver.sh
   ;;
esac
