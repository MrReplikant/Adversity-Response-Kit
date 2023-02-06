# **Chapter 2: Local Apt Archive, and Apt-Tar**
### Introduction
One of the greatest strengths of the ARK System is it's local package repository. This allow's the System's Administrator to access the software needed to adjust it to their needs, even if there is no internet available. However, in order to be able to aid in infrastructure maintenance, the system must be able to serve packages to other machines in some way, shape, or form. This is what the Apt-Tar tool is for. This chapter will show you how to set up your local package repository, and how to install and utilize the Apt-Tar tool. 

## Step 1: Setting up your Local Mirror

If you already have a local copy of your distribution's mirror, copy it to your machine now. If not, or even if you do, still follow along. 

**Warning: This will take a LOT of bandwidth. If you have more advance time to prepare, perhaps consider merely mirroring certain portions at a time, and adding to it over time, if such would make it easier to eventually get the full mirror.** 

cd back into the SCRIPTS directory, and run "ls". You will notice a script called "build-apt-archive.sh". Take note of it, but do not run it yet. Instead, run the folowing command: 

sudo nano /etc/apt/mirror.list

This will take you to the apt-mirror configuration file. You will see a long list of mirrors. For the purposes of this manual, we will use Devuan as an example, but the same applies to the other suitable distributions as well. By the time you have adjusted your mirrors list, it should look something like this: 

deb-src http://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

deb http://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

deb-i386 http://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

deb-all http://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

deb-arm64 https://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

Note: From Debian 12 Onward, or Devuan Daedalus (5) Onward, non-free will be split into non-free and non-free-firmware. Mirror them both, to be safe. 

