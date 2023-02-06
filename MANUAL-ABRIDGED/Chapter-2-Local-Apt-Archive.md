# **Chapter 2: Local Apt Archive, and Apt-Tar**
### Introduction
One of the greatest strengths of the ARK System is it's local package repository. This allow's the System's Administrator to access the software needed to adjust it to their needs, even if there is no internet available. However, in order to be able to aid in infrastructure maintenance, the system must be able to serve packages to other machines in some way, shape, or form. This is what the Apt-Tar tool is for. This chapter will show you how to set up your local package repository, and how to install and utilize the Apt-Tar tool. 

##Step 1: Setting up your Local Mirror

If you already have a local copy of your distribution's mirror, copy it to your machine now. If not, or even if you do, still follow along. 

cd back into the SCRIPTS directory, and run "ls". You will notice a script called "build-apt-mirror.sh".   
