#!/bin/bash

cat /etc/passwd | grep "/home" | cut -d":" -f1 > user-list.txt

for user in `more user-list.txt`
do
    cat user-list.txt
    sudo chage -m 7 -M 90 -W 14 $user #password aging
    echo $user:CyberPatriot1! | sudo chpasswd #reset password
    sudo passwd -u $user >> /dev/null #unlock account

    echo $user
done

echo ""
echo "NOTE: Your password is now \"CyberPatriot1!\""
