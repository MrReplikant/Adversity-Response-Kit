#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

isRoot() {
        if [ "$EUID" -ne 0 ]; then
                echo "Must be run as root/with sudo"
                exit 1
        fi
}

backup(){
cp /etc/apt/sources.list sources.list
}

neuter_sourceslist(){
rm /etc/apt/sources.list
}

create_localrepo(){
echo deb [trusted=yes] file:$SCRIPT_DIR local main > local.list
}

copytosources(){
cp local.list /etc/apt/sources.list.d/local.list
}

aptupdate(){
apt update --allow-insecure-repositories
}

install_packages(){
apt install $(cat packages.txt) -y
 
}

remove_local(){
rm /etc/apt/sources.list.d/local.list
cp sources.list /etc/apt/sources.list
}

update_apt_again(){
apt update
}

main(){
isroot
backup
neuter_sourceslist
create_localrepo
copytosources
aptupdate
install_packages
remove_local
update_apt_again
}

main 

echo "INSTALLATION COMPLETE!"
