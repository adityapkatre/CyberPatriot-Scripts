#! /bin/bash

version=$(lsb_release -r | awk '{print $2}')


while read line; do
        $line
done < "./files/vidarholensiteperms.txt"

# if [ $version = "22.04" ];
# then
#     while read line; do
#         $line
#     done < "./files/vidarholensiteperms.txt"
# fi