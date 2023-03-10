#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
isRoot() {
        if [ "$EUID" -ne 0 ]; then
                echo "Must be run as root/with sudo"
                exit 1
        fi
}


install_program(){
mkdir /ark/apt-tar
mkdir /ark/apt-tar/backup
mkdir /ark/apt-tar/aptscripts
mkdir /ark/apt-tar/packages
cp apt-tar /usr/bin/apt-tar
cp $SCRIPT_DIR/installdebs.sh /ark/apt-tar/aptscripts/installdebs.sh
}


main(){
isRoot
install_program
}

main

echo "INSTALLATION SUCCESSFUL!"
