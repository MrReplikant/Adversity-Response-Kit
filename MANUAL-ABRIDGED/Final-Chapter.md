# **Final Chapter: Use Cases, Other Useful Software, and closing message**
### Section 1: Uses of the Stratums
Beyond their use in the Apt-Tar Tool, the stratums installed on ARK System can also serve other purposes. Namely, they can serve as testing platforms for alternate architecture software. They can also be used to provide software not available to the host architecture. One example of this is the "syslinux-utils" package, which provides the Isohybrid utility. Thus, if one is using an arm or mips based system, the amd64 or i386 stratum can provide this utility. They can ALSO be used to create disposable testing environments. Chroots created via debootstrap can be imported as stratums. such can be done with the following command: 

sudo brl import (strat name) /path/to/chroot/directory


NOTE: make sure to not name these with names identical to the ones created earlier in the manual, as this can create problems. 
