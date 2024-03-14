#!/bin/bash

CYAN='\033[01;36m'
RED='\033[01;31m'
WHITE='\033[01;37m'
NONE='\033[00m'

function services_setup()
{
    echo -e "${CYAN}Configuring Services...${NONE}"
    services 
}

function services()
{
    echo -e "${CYAN}Options: Openssh ${NONE}"
    echo -ne "${CYAN}Service:${WHITE} "
    read service
    case $service in
    "openssh" | "ssh" | "Openssh" | "sshd")
        echo -e "${CYAN}Running Configurations on OpenSSH${NONE}"
        apt install openssh-server
        cp Cyborg_Files_Use/SecureOpenSSH /etc/ssh/sshd_config
        systemctl restart sshd.service
    ;;
    *)
        echo -e "${RED}INVALID: Wrong Input"
    ;;
    esac
}

services_setup
