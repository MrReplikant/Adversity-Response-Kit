# Introduction, disclaimer
This manual assumes you have a considerable familiarity with Debian, and/or it's derivatives. As of writing, the Adversity Response Kit (known hereon as the ARK System) is best built upon one of the following four distributions:

Debian 

Devuan 
 
Kali Linux 

ParrotOS 

NOTE: It is HIGHLY recommended that ARK System builders use a release on-par with Debian Bullseye (Debian 11) or later. 

Ideally, users will want to use Debian or Devuan, as their architecture support is the broadest, but Kali and Parrot can provide acceptable levels of 
functionality as well. The reason being, is that the ARK System is designed to be ableto develop for, tinker with, and distribute packages for machines of other architectures besides the host's own Architecture.

This kit is installable on the following Architectures (Though support by the individual distributions will vary): 

amd64

arm64

i386

armhf

mipsel

mips64el

 With this out of the way...

### What you will need
1. some form of installation media for your chosen distribution, or other alternative means of installation. This manual assumes an ISO was used. It is highly advised to go with images that include the non-free firmware. This is because in this situation, functionality of hardware is an absolute must. This is a dire situation already, do not worsen it by letting free software ideology prevent the proper funciton of critical machinery, there will be plenty of time to write free replacements AFTER you (re)build. 
2. Internet Connection, OR an offline copy of the repository of the chosen host architecture. 
3. At minimum, 500GB of Storage Space available to your machine. It does not necessarily have to be all one drive, Logical Volumes meeting this requirement are acceptable, but let it be known, this carries risk with it. 
4. A local copy of this repository.

Warning: Do NOT make separate paritions for any directory, no matter how tempting. All files must be on the primary partition. 

### Step 1: Initial OS Installation

As installation methods may vary widely, depending on what the user has access to, there is no one-size-fits-all approach. But, regardless of method, the follwing requirements must be met: 

1. All base system files MUST be on one partition and drive. NO separate /usr, /home, or /etc partitions or drives. The sole exception is in the case of logical volume management, if multiple drives comprise a single logical volume partition in order to meet the storage requirements. We recommend, however, starting on ONE of the drives, and adding the others later on, that way of one drive fails, it doesnt take the whole system with it. 
2. You MUST install a FULL Desktop Environemt that is reasonably usable to the common person (NOT a Window Manager, not even IceWM or JWM). Gnome, XFCE, or any other Desktop option seen in the distribution installer or in tasksel will suffice. Use "sudo tasksel" to get to this if the system has already been installed
3. Must be a CLEAN installation, this cannot and SHOULD NOT be atop an existing one! 
4. Make sure you have at least ONE working text editor

Note: It is advisible to do an "apt update" and ensure you are able to reach the core repository of whichever of the forememtioned Debian Systems you have chosen, or are able to use the offline mirror. **Also make sure this is the FIRST entry on your sources.list. It will be imperative in Chapter 2**

### Step 2: Setting up the base system
If you have made it this far, good. Now, if you have not already, transfer your copy of this repository onto the target machine, by whatever means necessary, and then return to this manual. Then reopen to this chapter with whatever software you have to. 

Got it? Good. 

By now you have noticed the "SCRIPTS" folder, please "cd" into it via the terminal now.

First, execute the pre-dependencies installer, like so:


sudo chmod +x install-predeps.sh

sudo ./install-predeps.sh


assuming you took the time to ensure your sources list was working as I had advised, this should install everything you need.

Note: yes, your /usr is now merged. Cast ideology aside, because the fact is, you will not be able to update your base system (or later, your stratums) to future versions without doing so. Too many packages depend on it now. This is why I told you not to put it on a separate partition or drive. 

Now, for the fun(?) part:

cd into the HIJACK folder ("cd HIJACK")

list all of the scripts with the "ls" command. just "ls" is sufficient. 

Do you see all of those scripts? You only need ONE. 

Note: x86_64 is also known as amd64

Determine which script belongs to your architecture, and run it like so: 



sudo chmod +x (your chosen script here)

sudo ./(your chosen script here) --hijack core


follow every prompt, and then reboot. 

Note: The inclusion of "core" will label your base system, known hereon as your Master Stratum, to where it is clearly distinguishable from the other stratums. 

On boot, you should see a list of init systems, one of them should be labelled "core". Select this one, and boot. 

# **CONGRATULATIONS!** If you made it this far, you have successfully completed chapter 1







