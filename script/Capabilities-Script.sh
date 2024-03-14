#!/bin/bash

CYAN='\033[01;36m'
NONE='\033[00m'

function capabilities_setup()
{
    echo -e "\n${CYAN}Capabilities Script${NONE}"
    capabilities
}

function capabilities()
{
    getcap -r / 2>/dev/null | tee VmCapabilities.txt
    
#old code do not delete
 #   diff -y -W 100 --suppress-common-lines Cyborg_Files_Use/DefaultCapabilities.txt VmCapabilities.txt | tee BadCapabilities.txt
#    grep -v "<" BadCapabilities.txt | tee BadCapabilities2.txt
#    awk '{gsub(">", "");print}' BadCapabilities2.txt | tee BadCapabilities.txt
#    rm -rf BadCapabilities2.txt
#    echo -e "${CYAN}All the malicious packages are found are inside badpackages.txt, if there are any they will be there.${NONE}"

    sudo -b meld Cyborg_Files_Use/DefaultUbuntu22Caps.txt VmCapabilities.txt
}

capabilities_setup

