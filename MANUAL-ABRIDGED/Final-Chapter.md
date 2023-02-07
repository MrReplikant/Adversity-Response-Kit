# **Final Chapter: Use Cases, Other Useful Software, and closing message**
## Section 1: Uses of the Stratums
Beyond their use in the Apt-Tar Tool, the stratums installed on the ARK System can also serve other purposes. Namely, they can serve as testing platforms for alternate architecture software. They can also be used to provide software not available to the host architecture. One example of this is the "syslinux-utils" package, which provides the Isohybrid utility. Thus, if one is using an arm or mips based system, the amd64 or i386 stratum can provide this utility. They can ALSO be used to create disposable testing environments. Chroots created via debootstrap can be imported as stratums. such can be done with the following command: 

sudo brl import (strat name) /path/to/chroot/directory


NOTE: make sure to not name these with names identical to the ones created earlier in the manual, as this can create problems. 

## Section 2: The Debian Blends
One of Debian's shining strengths is her Pure Blends. These blends are installable from the repository, and there are blends for a myriad of vital use cases for (re)building a nation's infrastructure. The Blends, and their Descriptions, are Below: 

**Debian Astro: 

"The goal of Debian Astro is to develop a Debian based operating system that fits the requirements of both professional and hobby astronomers. It integrates a large number of software packages covering telescope control, data reduction, presentation and other fields."

**DebiChem: 

"The goal of DebiChem is to make Debian a good platform for chemists in their day-to-day work."

**Debian Games: 

"The goal of Debian Games is to provide games in Debian from arcade and adventure to simulation and strategy"

**Debian EDU: 

"The goal of Debian Edu is to provide a Debian OS system suitable for educational use and in schools." 

**Debian GIS: 

"The goal of Debian GIS is to develop Debian into the best distribution for Geographical Information System applications and users."

**Debian Junior: 

"The goal of Debian Junior is to make Debian an OS that children will enjoy using."

**Debian Med: 

"The goal of Debian Med is a complete free and open system for all tasks in medical care and research. To achieve this goal Debian Med integrates related free and open source software for medical imaging, bioinformatics, clinic IT infrastructure, and others within the Debian OS."

**Debian MultiMedia: 

"The goal of Debian Multimedia is to make Debian a good platform for audio and multimedia work."

**Debian Science: 

" The goal of Debian Science is to provide a better experience when using Debian to researchers and scientists."

**FreedomBox: 

"The goal of FreedomBox is to develop, design and promote personal servers running free software for private, personal communications. Applications include blogs, wikis, websites, social networks, email, web proxy and a Tor relay on a device that can replace a wireless router so that data stays with the users."

**Debian HamRadio:

"The goal of Debian Hamradio is to support the needs of radio amateurs in Debian by providing logging, data mode and packet mode applications and more."

**DebianParl: 

"The goal of DebianParl is to provide applications to support the needs of parliamentarians, politicians and their staffers all around the world."

**Debian Design: 

"The goal of Debian Design is to provide applications for designers. This includes graphic design, web design and multimedia design."



### How to install each blend
The following list will provide the names of the packages needed to install the aforementined blends. 

**Debian Astro**: astro-all astr-catalogs astro-tcltk

**DebiChem**:  debichem-visualisation debichem-view-edit-2d debichem-semiempirical debichem-periodic-abinitio debichem-molecular-modelling debichem-molecular-dynamics debichem-molecular-abinitio debichem-input-generation-output-processing debichem-development debichem-crystallography debichem-cheminformatics debichem-analytical-biochemistry

**Debian Games**: games-finest games-adventure games-arcade games-board games-c++-dev games-card games-chess games-console games-content-dev games-education games-emulator games-fps games-java-dev games-minesweeper games-mud games-perl-dev games-platform games-programming games-puzzle games-python3-dev games-racing games-rogue games-rpg games-shootemup games-simulation games-sport games-strategy games-tetris games-toys games-typing

**Debian-Edu**: debian-edu-config education-desktop-$DE

NOTE: $DE is substitiuted for mate, cinnamon, kde, gnome, lxde, or xfce. Chose only ONE. 


**Debian GIS**: gis-all gis-data gis-gps gis-remotesensing gis-statistics gis-web

**Debian Junior**: junior-art junior-config junior-doc junior-education junior-games-adventure junior-games-arcade junior-games-card junior-games-gl junior-games-net junior-games-puzzle junior-games-sim junior-games-text junior-internet junior-math junior-programming junior-sound junior-system junior-toys junior-typing junior-video junior-writing 

**Debian Med**: med-all med-cloud med-data med-dental med-epi med-his med-imaging med-imaging-dev med-laboratory med-oncology med-pharmacy med-physics med-practice med-physiology med-research med-tools med-typesetting 

NOTE: For Debian Med, You often only need SOME of these. It is up to the system administrator to decide which is needed.

**Debian MultiMedia**: multimedia-all multimedia-devel 

**Debian Science**: science-all science-biology science-chemistry science-economics science-electrophysiology science-engineering science-engineering-dev science-financial science-geography science-geometry science-highenergy-physics science-highenergy-physics-dev science-linguistics science-logic science-mathematics science-mathematics-dev science-meteorology science-meteorology-dev science-nanoscale-physics science-nanoscale-physics-dev science-neuroscience-cognitive science-neuroscience-modeling science-physics science-physics-dev science-psychophysics science-robotics science-robotics-dev 

NOTE: For Debian Science, You often only need SOME of these. It is up to the system administrator to decide which is needed.

**Freedombox**: freedombox freedombox-doc-en freedombox-doc-es freedombox-setup

**Debian HamRadio**: hamradio-all 

**DebianParl**: parl-desktop parl-desktop-eu parl-desktop-strict parl-desktop-world

NOTE: For DebianParl, You often only need ONE of these. It is up to the system administrator to decide which is needed. 

**Debian Design**: design-desktop design-desktop-web design-desktop-animation design-desktop-graphics design-desktop-strict 

NOTE: For Debian Design, You often only need ONE of these. It is up to the system administrator to decide which is needed. 


