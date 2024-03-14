#!/bin/bash

function user-script_setup()
{
    echo -e "${CYAN}Hi! This is the manual User Script.${NONE}"
    echo -e "${CYAN}Starting User Script...${NONE}"
    users && admins && root
}

function users()
{
    PASSWORD=CyberPatriot1!
    echo -ne "${CYAN}How many users do you want to configure?${NONE}${WHITE} "
    read user_count
    mathcount=$user_count
    while [ $user_count -gt 0 ]
    do 
        echo -ne "${CYAN}Username:${NONE}${WHITE} "
        read add_user
        useradd $add_user
        chage -M 90 $add_user
        chage -m 7 $add_user
        chage -W 14 $add_user
        echo -e "$PASSWORD\n$PASSWORD" | sudo passwd $add_user
        user_count=$(($user_count-1))
    done
    
    awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | tee UserList.txt
    

    echo -ne "\nHow many users do you want to delete?${NONE}${WHITE} "
    echo 
    read userdel_count
    while [ $userdel_count -gt 0 ]
    do 
        echo -ne "${CYAN}Username:${NONE}${WHITE} "
        read del_user
        deluser $del_user
        userdel_count=$(($userdel_count-1))
    done
}

function admins()
{
    echo $(grep "adm" /etc/group)
    echo $(grep "sudo" /etc/group)
    echo -ne "${CYAN}How many admins do you want to add?${NONE}${WHITE} "
    read admin_add_count
    while [ $admin_add_count -gt 0 ]
    do
        echo -ne "${CYAN}Admin Username:${NONE}${WHITE} "
        read admin
        usermod -aG adm $admin
        usermod -aG sudo $admin
        admin_add_count=$(($admin_add_count-1))
    done

    echo -ne "${CYAN}How many admins do you want to delete?${NONE}${WHITE} "
    read admin_delete_count
    while [ $admin_delete_count -gt 0 ]
    do
        echo -ne "${CYAN}Admin Username:${NONE}${WHITE} "
        read admin
        gpasswd -d $admin adm
        gpasswd -d $admin sudo
        admin_delete_count=$(($admin_delete_count-1))
    done
}

function root()
{
    echo ""
    echo ""
    echo -e "${CYAN}If you see any users that are not the root user, remove them in /etc/passwd.${NONE}"
    echo $(grep "x:0" /etc/passwd)
    # echo -ne "${CYAN}How many unauthorized root users do you want to remove?(Type 0 for none)${NONE}${WHITE} "
    # read root_remove_count
    # while [ $root_remove_count -gt 0 ]
    # do
    #     echo -ne "Root-User Username: "
    #     read root_user
    #     gpasswd -d $root_user root
    #     root_remove_count=$(($root_remove_count-1))
    # done
}

user-script_setup

echo ""
echo ""

echo "##############################################
# THE SCRIPT DOES NOT DELETE ROOT IMPOSTORS  #
# Check /etc/group			     #
# Check /etc/passwd			     #
# Delete unauthorized users                  #
# Delete unauthorized root users             #
# Set root user to nologin in /etc/passwd    #
##############################################"
