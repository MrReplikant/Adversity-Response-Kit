#!/bin/bash

# combined solutions for apt mirror from: https://github.com/apt-mirror/apt-mirror/issues/49,https://github.com/apt-mirror/apt-mirror/issues/102
# I had to create this file, in order to solve the issue of not downloading DEP-11 @2 files
# so all what I'm doing is running apt mirror manually, then downloading the other icon files every time
# Grep will grep the line starting with "set base_path"
# then we trim all extra white spaces
# then we cut the string by delimiter white space and take third value

dataFolder=$(grep -F "set base_path" /etc/apt/mirror.list | tr -s " " | cut -d' ' -f3)
echo "Base Folder path set in /etc/apt/mirror.list is: $dataFolder"
apt-mirror
echo 
echo -n "Do you want to Check MD5 Sum and Download Failed (auto Y in 5 seconds)? [Y/n]"
echo
read -t 5 answer
exit_status=$?
if [ $exit_status -ne 0 ] || [ "$answer" != "${answer#[Yy]}" ];then
    FAILEDPACKAGES=""
    echo "Reading and Checking MD5 checksum using file: $dataFolder/var/MD5"
    #cd $dataFolder/mirror
    rm -f FAILED_MD5.txt
    echo "Failed File will be stored in: $(pwd)/FAILED_MD5.txt"
    while IFS='' read -r line || [[ -n "$line" ]]; do
        #echo "Checking: $line"
        sum=$(echo $line | cut -d' ' -f1)
        filename=$(echo $line | cut -d' ' -f2)
        echo "$sum $dataFolder/mirror/$filename" | md5sum -c -
        RESULT=$?
        if [ $RESULT -ne 0 ];then
            echo "$dataFolder/mirror/$filename" >> FAILED_MD5.txt
            wget -O $dataFolder/mirror/$filename $filename
            echo "$sum $dataFolder/mirror/$filename" | md5sum -c -
            SUBRESULT=$?
            if [ $SUBRESULT -ne 0 ];then
                echo "Sorry failed checksum again for file: $dataFolder/mirror/$filename"
                $FAILEDPACKAGES+="$dataFolder/mirror/$filename      Failed again, sorry cannot help"
            fi
        fi
    done < "$dataFolder/var/MD5"
    #md5sum -c $dataFolder/var/MD5 | grep --line-buffered -i "FAILED" | tee FAILED_MD5.txt
    echo $FAILEDPACKAGES
    break
else
    echo "ok I will not check MD5"
fi
echo -n "Do you want to run Clean Script (auto Y in 5 seconds)? [Y/n]"
echo
read -t 5 answer
exit_status=$?
if [ "$answer" != "${answer#[Yy]}" ] || [ $exit_status -ne 0 ] ;then
    $dataFolder/var/clean.sh
fi
