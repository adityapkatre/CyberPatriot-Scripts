#!/bin/bash


cd /home

test_array=(.mp3 .mp4 .mov .flv .jpg .jpeg .png .gif .ogg .7z .tar .wim .gz .zip .txt .md)

echo "Installing Package \"tree\""
sudo apt-get install tree -y > /dev/null

for a in {1..16}
do
    sudo find -type f -name "*${test_array[$a]}"
done

tree -a

echo ""
cd /root/Bash\ Scripts