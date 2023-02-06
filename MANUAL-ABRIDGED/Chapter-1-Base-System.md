# Introduction, disclaimer
This manual assumes you have a considerable familiarity with Debian, and/or it's derivatives. As of writing, the Adversity Response Kit (known hereon as the ARK System) is best built upon one of the following four distributions:

Debian 

Devuan 
 
Kali Linux 

ParrotOS 


Ideally, users will want to use Debian or Devuan, as their architecture support is the broadest, but Kali and Parrot can provide acceptable levels of 
functionality as well. The reason being, is that the ARK System is designed to be ableto develop for, tinker with, and distribute packages for machines of other architectures besides the host's own Architecture. With this out of the way...

### What you will need
1. some form of installation media for your chosen distribution, or other alternative means of installation. This manual assumes an ISO was used. It is highly advised to go with images that include the non-free firmware. This is because in this situation, functionality of hardware is an absolute must. 
2. Internet Connection, OR an offline copy of the repository of the chosen host architecture. 
3. At minimum, 500GB of Storage Space available to your machine. It does not necessarily have to be all one drive, Logical Volumes meeting this requirement are acceptable, but let it be known, this carries risk with it. 
4. A local copy of this repository.

Warning: Do NOT make separate paritions for any directory, no matter how tempting. All files must be on the primary partition. 

### Step 1: Setting up your system

As installation methods may vary widely, depending on what the user has access to, there is no one-size-fits-all approach. But, regardless of method, the follwing requirements must be met: 

1. All base system files MUST be on one partition and drive. NO separate /usr, /home, or /etc partitions or drives. 
2. You MUST install a FULL Desktop Environemt that is reasonably usable to the common person (NOT a Window Manager, not even IceWM or JWM). Gnome, XFCE, or any other Desktop option seen in the distribution installer or in tasksel will suffice. use "sudo tasksel" to get to this if the system has already been installed
3. Must be a CLEAN installation, cannot be atop an existing one! 



