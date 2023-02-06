#!/bin/bash 

isRoot() {
        if [ "$EUID" -ne 0 ]; then
                echo "Must be run as root/with sudo"
                exit 1
        fi
}


install_media_packages(){
apt install kiwix marble vlc
}

main(){
isRoot
install_media_packages
}

main 
echo "Media Packages Installed!"
