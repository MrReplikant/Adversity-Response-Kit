#!/bin/bash

ARCHES=$(cat /var/lib/dpkg/arch)


setup_chroots(){
for var in $ARCHES
do
  debootstrap --arch $var --merged-usr $(lsb_release --codename --short | awk '{print $1}') /ark/chroots/$var $(grep -m 1 -i -e "file:/" -e "http://" /etc/apt/sources.list | awk '{print $2}')
  cp /etc/apt/sources.list /ark/chroots/$var/etc/apt/sources.list
done 
}


import_stratums(){
for var in $ARCHES
do
  brl import $var /ark/chroots/$var
  strat -r $var ./install_apt_tar.sh 
done
}

clean_up_dpkg(){
for var in $ARCHES
do
  dpkg --remove-architecture $var 
  apt update
done
}

main(){
setup_chroots
import_stratums
clean_up_dpkg
}

main 

echo "If you can read this, it worked! (hopefully!)"
