# **Chapter 2: Local Apt Archive, and Apt-Tar**
### Introduction
One of the greatest strengths of the ARK System is it's local package repository. This allow's the System's Administrator to access the software needed to adjust it to their needs, even if there is no internet available. However, in order to be able to aid in infrastructure maintenance, the system must be able to serve packages to other machines in some way, shape, or form. This is what the Apt-Tar tool is for. This chapter will show you how to set up your local package repository, and how to install and utilize the Apt-Tar tool. 

## Step 1: Setting up your Local Mirror

If you already have a local copy of your distribution's mirror, copy it to your machine now. If not, or even if you do, still follow along. 

**Warning: This will take a LOT of bandwidth. If you have more advance time to prepare, perhaps consider merely mirroring certain portions at a time, and adding to it over time, if such would make it easier to eventually get the full mirror.** 

cd back into the SCRIPTS directory, and run "ls". You will notice a script called "build-apt-archive.sh". Take note of it, but do not run it yet. Instead, run the folowing command: 

sudo nano /etc/apt/mirror.list

This will take you to the apt-mirror configuration file. You will see a long list of mirrors. For the purposes of this manual, we will use Devuan as an example, but the same applies to the other suitable distributions as well. By the time you have adjusted your mirrors list, it should look similar to this: 

deb-src http://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

deb http://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

deb-i386 http://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

deb-all http://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

deb-arm64 https://pkgmaster.devuan.org/merged daedalus main contrib non-free non-free-firmware

Note: From Debian 12 Onward, or Devuan Daedalus (5) Onward, non-free will be split into non-free and non-free-firmware. Mirror both non-free and non-free-firmware, to be safe. Also be aware that deb-all is critically important, as a lack of indexes for it can be problematic in some situations. "deb" stand-alone is for your host architecture. "deb-$ARCH" is for other other architectures you mirror. 

Next, at the top of the page, you will see " # set base_path /var/spool/mirror" or similar. change this to "set base_path /ark/mirror" without the "#" mark. You will also notice a commented-out line at the bottom that says "clean (URL HERE)". uncomment it, and change the url to the base URL of your mirror. This will allow outdated packages to be purged from your mirror during maintenance, and save precious disk space. 

We recommend you mirror at LEAST the following architectures:

amd64

i386

arm64 

and, the deb-src repository, so that the source code is available as well. 

Once you have done so, save your configuration in nano, and then run the following command: 

sudo chmod +x build-apt-archive.sh
sudo ./build-apt-archive.sh

Once your mirror is complete, open your /etc/apt/sources.list file, and replace your original source with your local mirror. An example entry will look like this: 


deb file:/ark/mirror/mirror/pkgmaster.devaun.org/merged daedalus main contrib non-free non-free firmware

WARNING: Make sure this entry is the VERY FIRST entry in your sources.list file

Once done, save your sources.list file, and move to step 2. 


### Step 2: installing Apt-Tar
