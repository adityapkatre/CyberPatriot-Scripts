#!/bin/bash

user=$(whoami)

function firefox_setup()
{
    firefox
}

function firefox()
{   
    touch /usr/lib/firefox/defaults/user.js
    touch /etc/firefox/syspref.js
    
    cp /usr/lib/firefox/defaults/user.js /home/$user/Cyborg_Backups/user.js.bak
    cp /etc/firefox/syspref.js /home/$user/Cyborg_Backups/syspref.js.bak
    
    cp /home/$user/Cyborg_Files_Use/user.js /usr/lib/firefox/defaults/user.js
    cp /home/$user/Cyborg_Files_Use/syspref.js /etc/firefox/syspref.js
}

firefox_setup
