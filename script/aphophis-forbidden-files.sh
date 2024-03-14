#!/bin/bash
echo "-------------------------------"
echo "creating files"
echo "-------------------------------"
sleep .2
read -p "Enter username: " user

# user=$SUDO_USER
while true; do
    read -p "Do you wish to create a list of all media files on your Desktop? (y/n)" yn
    case $yn in
	[Yy]* ) sudo find /bin -type f -iname "*.webm" -o -iname "*.mkv" -o -iname "*.flv" -o -iname "*.vob" -o -iname "*.ogv" -o -iname "*.ogg" -o -iname "*.drc" -o -iname "*.gif" -o -iname "*.avi" -o -iname "*.mov" -o -iname "*.qt" -o -iname "*.wmv" -o -iname "*.yuv" -o -iname "*.rm" -o -iname "*.rmvb" -o -iname "*.asf" -o -iname "*.amv" -o -iname "*.mp4" -o -iname "*.m4p" -o -iname "*.m4v" -o -iname "*.mpg" -o -iname "*.mp2" -o -iname "*.mpeg" -o -iname "*.mpe" -o -iname "*.mpv" -o -iname "*.svi" -o -iname "*.3gp" -o -iname "*.3g2" -o -iname "*.mxf" -o -iname "*.roq" -o -iname "*.nsf" -o -iname "*.flv" -o -iname "*.f4v" -o -iname "*.f4p" -o -iname "*.f4a" -o -iname "*.f4b" -o -iname "*.aa" -o -iname "*.aac" -o -iname "*.aax" -o -iname "*.act" -o -iname "*.aiff" -o -iname "*.amr" -o -iname "*.ape" -o -iname "*.au" -o -iname "*.awb" -o -iname "*.dct" -o -iname "*.dss" -o -iname "*.dvf" -o -iname "*.flac" -o -iname "*.gsm" -o -iname "*.iklax," -o -iname "*.ivs" -o -iname "*.m4a" -o -iname "*.m4b" -o -iname "*.mmf" -o -iname "*.mpc" -o -iname "*.msv" -o -iname "*.oga" -o -iname "*.opus" -o -iname "*.ra" -o -iname "*.raw" -o -iname "*.sln" -o -iname "*.tta" -o -iname "*.vox" -o -iname "*.wav" -o -iname "*.wma" -o -iname "*.wv" -o -iname "*.jpeg" -o -iname "*.jpg" -o -iname "*.tif" -o -iname "*.tiff" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.png" -o -iname "*.pbm" -o -iname "*.pgm" -o -iname "*.ppm" -o -iname "*.pnm" -o -iname "*.webp" -o -iname "*.hdr" -o -iname "*.bpg" -o -iname "*.ico" -o -iname "*.img" -o -iname "*.aup" -o -iname "*.dmg" >> /home/$user/Desktop/mediafiles;sudo find /home -type f -iname "*.webm" -o -iname "*.mkv" -o -iname "*.flv" -o -iname "*.vob" -o -iname "*.ogv" -o -iname "*.ogg" -o -iname "*.drc" -o -iname "*.gif" -o -iname "*.avi" -o -iname "*.mov" -o -iname "*.qt" -o -iname "*.wmv" -o -iname "*.yuv" -o -iname "*.rm" -o -iname "*.rmvb" -o -iname "*.asf" -o -iname "*.amv" -o -iname "*.mp4" -o -iname "*.m4p" -o -iname "*.m4v" -o -iname "*.mpg" -o -iname "*.mp2" -o -iname "*.mpeg" -o -iname "*.mpe" -o -iname "*.mpv" -o -iname "*.svi" -o -iname "*.3gp" -o -iname "*.3g2" -o -iname "*.mxf" -o -iname "*.roq" -o -iname "*.nsf" -o -iname "*.flv" -o -iname "*.f4v" -o -iname "*.f4p" -o -iname "*.f4a" -o -iname "*.f4b" -o -iname "*.aa" -o -iname "*.aac" -o -iname "*.aax" -o -iname "*.act" -o -iname "*.aiff" -o -iname "*.amr" -o -iname "*.ape" -o -iname "*.au" -o -iname "*.awb" -o -iname "*.dct" -o -iname "*.dss" -o -iname "*.dvf" -o -iname "*.flac" -o -iname "*.gsm" -o -iname "*.iklax," -o -iname "*.ivs" -o -iname "*.m4a" -o -iname "*.m4b" -o -iname "*.mmf" -o -iname "*.mpc" -o -iname "*.msv" -o -iname "*.oga" -o -iname "*.opus" -o -iname "*.ra" -o -iname "*.raw" -o -iname "*.sln" -o -iname "*.tta" -o -iname "*.vox" -o -iname "*.wav" -o -iname "*.wma" -o -iname "*.wv" -o -iname "*.jpeg" -o -iname "*.jpg" -o -iname "*.tif" -o -iname "*.tiff" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.png" -o -iname "*.pbm" -o -iname "*.pgm" -o -iname "*.ppm" -o -iname "*.pnm" -o -iname "*.webp" -o -iname "*.hdr" -o -iname "*.bpg" -o -iname "*.ico" -o -iname "*.img" -o -iname "*.aup" -o -iname "*.dmg" >> /home/$user/Desktop/mediafiles;sudo find /etc -type f -iname "*.webm" -o -iname "*.mkv" -o -iname "*.flv" -o -iname "*.vob" -o -iname "*.ogv" -o -iname "*.ogg" -o -iname "*.drc" -o -iname "*.gif" -o -iname "*.avi" -o -iname "*.mov" -o -iname "*.qt" -o -iname "*.wmv" -o -iname "*.yuv" -o -iname "*.rm" -o -iname "*.rmvb" -o -iname "*.asf" -o -iname "*.amv" -o -iname "*.mp4" -o -iname "*.m4p" -o -iname "*.m4v" -o -iname "*.mpg" -o -iname "*.mp2" -o -iname "*.mpeg" -o -iname "*.mpe" -o -iname "*.mpv" -o -iname "*.svi" -o -iname "*.3gp" -o -iname "*.3g2" -o -iname "*.mxf" -o -iname "*.roq" -o -iname "*.nsf" -o -iname "*.flv" -o -iname "*.f4v" -o -iname "*.f4p" -o -iname "*.f4a" -o -iname "*.f4b" -o -iname "*.aa" -o -iname "*.aac" -o -iname "*.aax" -o -iname "*.act" -o -iname "*.aiff" -o -iname "*.amr" -o -iname "*.ape" -o -iname "*.au" -o -iname "*.awb" -o -iname "*.dct" -o -iname "*.dss" -o -iname "*.dvf" -o -iname "*.flac" -o -iname "*.gsm" -o -iname "*.iklax," -o -iname "*.ivs" -o -iname "*.m4a" -o -iname "*.m4b" -o -iname "*.mmf" -o -iname "*.mpc" -o -iname "*.msv" -o -iname "*.oga" -o -iname "*.opus" -o -iname "*.ra" -o -iname "*.raw" -o -iname "*.sln" -o -iname "*.tta" -o -iname "*.vox" -o -iname "*.wav" -o -iname "*.wma" -o -iname "*.wv" -o -iname "*.jpeg" -o -iname "*.jpg" -o -iname "*.tif" -o -iname "*.tiff" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.png" -o -iname "*.pbm" -o -iname "*.pgm" -o -iname "*.ppm" -o -iname "*.pnm" -o -iname "*.webp" -o -iname "*.hdr" -o -iname "*.bpg" -o -iname "*.ico" -o -iname "*.img" -o -iname "*.aup" -o -iname "*.dmg" >> /home/$user/Desktop/mediafiles;sudo find /var -type f -iname "*.webm" -o -iname "*.mkv" -o -iname "*.flv" -o -iname "*.vob" -o -iname "*.ogv" -o -iname "*.ogg" -o -iname "*.drc" -o -iname "*.gif" -o -iname "*.avi" -o -iname "*.mov" -o -iname "*.qt" -o -iname "*.wmv" -o -iname "*.yuv" -o -iname "*.rm" -o -iname "*.rmvb" -o -iname "*.asf" -o -iname "*.amv" -o -iname "*.mp4" -o -iname "*.m4p" -o -iname "*.m4v" -o -iname "*.mpg" -o -iname "*.mp2" -o -iname "*.mpeg" -o -iname "*.mpe" -o -iname "*.mpv" -o -iname "*.svi" -o -iname "*.3gp" -o -iname "*.3g2" -o -iname "*.mxf" -o -iname "*.roq" -o -iname "*.nsf" -o -iname "*.flv" -o -iname "*.f4v" -o -iname "*.f4p" -o -iname "*.f4a" -o -iname "*.f4b" -o -iname "*.aa" -o -iname "*.aac" -o -iname "*.aax" -o -iname "*.act" -o -iname "*.aiff" -o -iname "*.amr" -o -iname "*.ape" -o -iname "*.au" -o -iname "*.awb" -o -iname "*.dct" -o -iname "*.dss" -o -iname "*.dvf" -o -iname "*.flac" -o -iname "*.gsm" -o -iname "*.iklax," -o -iname "*.ivs" -o -iname "*.m4a" -o -iname "*.m4b" -o -iname "*.mmf" -o -iname "*.mpc" -o -iname "*.msv" -o -iname "*.oga" -o -iname "*.opus" -o -iname "*.ra" -o -iname "*.raw" -o -iname "*.sln" -o -iname "*.tta" -o -iname "*.vox" -o -iname "*.wav" -o -iname "*.wma" -o -iname "*.wv" -o -iname "*.jpeg" -o -iname "*.jpg" -o -iname "*.tif" -o -iname "*.tiff" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.png" -o -iname "*.pbm" -o -iname "*.pgm" -o -iname "*.ppm" -o -iname "*.pnm" -o -iname "*.webp" -o -iname "*.hdr" -o -iname "*.bpg" -o -iname "*.ico" -o -iname "*.img" -o -iname "*.aup" -o -iname "*.dmg" >> /home/$user/Desktop/mediafiles;echo "File created on Desktop";break;; 
	[Nn]* ) echo "No media file list created";break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to create a list of all txt files on your Desktop? (y/n)" yn
    case $yn in
        [Yy]* ) sudo find /bin -iname '*.txt' >> /home/$user/Desktop/txtfiles;sudo find /home -iname '*.txt' >> /home/$user/Desktop/txtfiles;sudo find /etc -iname '*.txt' >> /home/$user/Desktop/txtfiles;sudo find /var -iname '*.txt' >> /home/$user/Desktop/txtfiles;echo "File created on Desktop";break;;
        [Nn]* ) echo "No txt file list created";break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to create a list of all zip files on your Desktop? (y/n)" yn
    case $yn in
        [Yy]* ) sudo find /bin -iname '*.zip' >> /home/$user/Desktop/zipfiles;sudo find /home -iname '*.zip' >> /home/$user/Desktop/zipfiles;sudo find /etc -iname '*.zip' >> /home/$user/Desktop/zipfiles;sudo find /var -iname '*.zip' >> /home/$user/Desktop/zipfiles;echo "File created on Desktop";break;;
        [Nn]* ) echo "No zip file list created";break;;
        * ) echo "Please answer yes or no.";;
    esac
done


# while true; do
#     read -p "Do you wish to create a list of all .so files on your Desktop? (y/n)" yn
#     case $yn in
#         [Yy]* ) sudo find / -iname '*.so' >> /home/$user/Desktop/sofiles;echo "File created on Desktop";break;;
#         [Nn]* ) echo "No .so file list created";break;;
#         * ) echo "Please answer yes or no.";;
#     esac
# done


while true; do
    read -p "Do you wish to create a list of all .tar.gz files on your Desktop? (y/n)" yn
    case $yn in
        [Yy]* ) sudo find /bin -iname '*.tar.gz' >> /home/$user/Desktop/targzfiles;sudo find /home -iname '*.tar.gz' >> /home/$user/Desktop/targzfiles;sudo find /etc -iname '*.tar.gz' >> /home/$user/Desktop/targzfiles;sudo find /var -iname '*.tar.gz' >> /home/$user/Desktop/targzfiles;echo "File created on Desktop";break;;
        [Nn]* ) echo "No .tar.gz file list created";break;;
        * ) echo "Please answer yes or no.";;
    esac
done


while true; do
    read -p "Do you wish to create a list of all installed packages on your Desktop? (y/n)" yn
    case $yn in
        [Yy]* ) dpkg -l | less >> /home/$user/Desktop/packages;echo "File created on Desktop";break;;
        [Nn]* ) echo "No package file list created";break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# while true; do
#     read -p "Do you wish to look for host/rhost.equiv files? (y/n)" yn
#     case $yn in
#         [Yy]* ) break;;
#         [Nn]* ) echo "Did not search for .equiv files";
#         echo "#################################FILES CREATED, SCRIPT FINISHED#################################";exit;;
#         * ) echo "Please answer yes or no.";;
#     esac
# done

# function rhost.equiv_and_host.equiv_search () {
#     echo "searching for rhost.equiv and host.equiv files"
#     hosts_equiv_file='/etc/hosts.equiv'
#     rhosts_file=.rhosts
#     if [[ -e ${hosts_equiv_file} ]] ; then
#         rm ${hosts_equiv_file}
#     fi
#     rm ~/${rhosts_file}
# }

# rhost.equiv_and_host.equiv_search

echo "#################################FILES CREATED, SCRIPT FINISHED#################################"
