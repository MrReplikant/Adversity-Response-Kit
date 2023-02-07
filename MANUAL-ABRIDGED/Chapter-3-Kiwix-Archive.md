# Chapter 3: Creating your Kiwix Archive and offline Maps
## Section 1: Kiwix Archive
There will no doubt come a point when you will need to access knowledge that is otherwise unavailable in this manual, or the Linux MAN Pages. As well as 
this, there will no doubt come a point where maybe you'll need to know: "is this plant poisonous?" or "How do I do CPR?" or "How many quarts in one gallon?". In this case, Kiwix will come to your aid. Kiwix is a program that can download offline copies of various wikimedia projects, usually in the form of ".zim" files. These can be downloaded from Kiwix itself, OR they can be downloaded from https://farm.openzim.org 

I HIGHLY Recommend you mirror the following: 
1. Wikipedia ALL (There is a "no pictures" version that is 15GB, or a full version that is ~90GB in size. I highly recommend the latter, but the former will suffice in a pinch). 
2. Wikihow (This one is ~50GB)
3. Wikitionary
4. WikiMed
5. Project Gutenberg Library
6. Wikispecies
7. Appropedia

To install Kiwix, Marble (which will be discussed in the next section), and other tools to be discussed in later chapters, run the following command: 

sudo chmod +x add-media-tools.sh
sudo ./add-media-tools.sh


Once complete, navigate to Kiwix via your GUI. Click on the tab that says "all files", and search for the archives you wish to download. If it is downloaded from zim-farm, you will need to follow a different procedure. You will notice a button shaped like an open folder in the top-right corner. This will allow you to navigate your locally downloaded zim files, and import them into Kiwix. 

Zim files downloaded by Kiwix will be found in /home/(user)/.local/share/kiwix

## Section 2: Marble
As previously discussed, the script you ran installed Marble. It is known in the GUI as "KDE Marble". This program has a full world map made from OpenStreetMap data, and can even be used to get directions for certain trips. Be advised, it is not as complete as google maps, and often times you will find yourself getting directions for areas relatively close to your start and end points, rather than the exact ones. I still contend, however, that this is much better than no map at all. 

If you have any need to update your map, please go here: https://marble.kde.org/maps-4.5.php

The two most important maps you will need are "MapQuest OSM" and "MapQuest Open Aerial". 

When you download these maps, they will come as zip files. The recommended way to install them, according to the Marble website, is to cd into the directory containing the .zip file, and run the follwing command: 

unzip -d ~/.local/share/marble/maps ortelius1570-marblemap.zip

FINAL NOTE: The KDE Marble Handbook is included in this kit, as the handbook inside Marble itself requires internet connection. 


# **Congrats! You have completed Chapter 3. Move on to the chapter named "Final Chapter", where other important information is found.**


