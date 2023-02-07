# **Final Chapter: Use Cases, Other Useful Software, and closing message**
## Section 1: Uses of the Stratums
Beyond their use in the Apt-Tar Tool, the stratums installed on ARK System can also serve other purposes. Namely, they can serve as testing platforms for alternate architecture software. They can also be used to provide software not available to the host architecture. One example of this is the "syslinux-utils" package, which provides the Isohybrid utility. Thus, if one is using an arm or mips based system, the amd64 or i386 stratum can provide this utility. They can ALSO be used to create disposable testing environments. Chroots created via debootstrap can be imported as stratums. such can be done with the following command: 

sudo brl import (strat name) /path/to/chroot/directory


NOTE: make sure to not name these with names identical to the ones created earlier in the manual, as this can create problems. 

## Section 2: The Debian Blends
One of Debian's shining strengths is her Pure Blends. These blends are installable from the repository, and there are blends for a myriad of vital use cases for (re)building a nation's infrastructure. The Blends, and their Descriptions, are Below: 

Debian Astro: 

"The goal of Debian Astro is to develop a Debian based operating system that fits the requirements of both professional and hobby astronomers. It integrates a large number of software packages covering telescope control, data reduction, presentation and other fields."

DebiChem: 

"The goal of DebiChem is to make Debian a good platform for chemists in their day-to-day work."

Debian Games: 

"The goal of Debian Games is to provide games in Debian from arcade and adventure to simulation and strategy"

Debian EDU: 

"The goal of Debian Edu is to provide a Debian OS system suitable for educational use and in schools." 

Debian GIS: 

"The goal of Debian GIS is to develop Debian into the best distribution for Geographical Information System applications and users."

Debian Junior: 

"The goal of Debian Junior is to make Debian an OS that children will enjoy using."

Debian Med: 

"The goal of Debian Med is a complete free and open system for all tasks in medical care and research. To achieve this goal Debian Med integrates related free and open source software for medical imaging, bioinformatics, clinic IT infrastructure, and others within the Debian OS."

Debian MultiMedia: 

"The goal of Debian Multimedia is to make Debian a good platform for audio and multimedia work."

Debian Science: 

" The goal of Debian Science is to provide a better experience when using Debian to researchers and scientists."

FreedomBox: 

"The goal of FreedomBox is to develop, design and promote personal servers running free software for private, personal communications. Applications include blogs, wikis, websites, social networks, email, web proxy and a Tor relay on a device that can replace a wireless router so that data stays with the users."

Debian HamRadio:

"The goal of Debian Hamradio is to support the needs of radio amateurs in Debian by providing logging, data mode and packet mode applications and more."

DebianParl: 

"The goal of DebianParl is to provide applications to support the needs of parliamentarians, politicians and their staffers all around the world."

Debian Design: 

"The goal of Debian Design is to provide applications for designers. This includes graphic design, web design and multimedia design."



### How to install each blend
