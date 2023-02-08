#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
ARCHES=$(cat /var/lib/dpkg/arch)
isRoot() {
        if [ "$EUID" -ne 0 ]; then
                echo "Must be run as root/with sudo"
                exit 1
        fi
}


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
  chmod +x install-apt-tar.sh
  strat $var chmod +x install-apt-tar.sh
  strat $var chmod +x installdebs.sh 
  strat $var chmod +x apt-tar
  strat -r $var mkdir /ark
  strat $var ./install-apt-tar.sh 
  ./install-apt-tar.sh
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
isRoot
setup_chroots
import_stratums
clean_up_dpkg
}

main 

echo "If you can read this, it worked! (hopefully!)"
