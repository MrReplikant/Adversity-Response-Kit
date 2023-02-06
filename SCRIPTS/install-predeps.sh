#!/bin/bash 


isRoot() {
        if [ "$EUID" -ne 0 ]; then
                echo "Must be run as root/with sudo"
                exit 1
        fi
}

install_predeps(){
apt install curl dpkg-dev usrmerge dkms build-essential apt-mirror deboostrap
mkdir /ark
mkdir /ark/chroots
}

main(){
isRoot
install_predeps
}

main
echo "Pre-Dependencies Installed"
