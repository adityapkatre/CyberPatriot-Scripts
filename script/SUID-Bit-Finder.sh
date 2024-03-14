#!/bin/bash

CYAN='\033[01;36m'
NONE='\033[00m'

function suid-bit_setup()
{
    echo -e "\n${CYAN}Packages Script${NONE}"
    suid-bit
}

function suid-bit()
{
    find / -perm -u=s 2>/dev/null | tee VmSUIDBits.txt
    diff -y -W 100 --suppress-common-lines Cyborg_Files_Use/DefaultSUIDBits.txt VmCapabilities.txt | tee BadSUIDBits.txt
    grep -v "<" BadSUIDBits.txt | tee BadSUIDBits2.txt
    awk '{gsub(">", "");print}' BadSUIDBits2.txt | tee BadSUIDBits.txt
    rm -rf BadSUIDBits2.txt
    echo -e "${CYAN}All the malicious packages are found are inside badpackages.txt, if there are any they will be there.${NONE}"
}

suid-bit_setup
