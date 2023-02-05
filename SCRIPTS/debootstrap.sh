#!/bin/bash

ARCHES=$(cat /var/lib/dpkg/arch)

for var in $ARCHES
do
  debootstrap --arch $var $(lsb_release --codename --short | awk '{print $1}') /etc/chroots/$var $(grep -m 1 -i -e "file:/" -e "http://" /etc/apt/sources.list | awk '{print $2}')
  cp apt-tar /ark/chroots/$var
  cp /etc/apt/sources.list /ark/chroots/$var/etc/apt/sources.list
  brl import $var /ark/chroots/$var
  dpkg --remove-architecture $var
  apt update
  strat $var ./install-apt-tar.sh 
done 
