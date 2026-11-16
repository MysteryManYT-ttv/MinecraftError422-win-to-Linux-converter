#!/bin/bash

#Minecraft Error 422 windows to linux script coverter
#Copyright 2026 Aiden Rebec

GREEN=$'\033[1;32M'
YELLOW=$'\033[1;33M'
ENDCOLOR=$'\033[0M'
RED=$'\033[31M'

echo ${GREEN} "Downloading jdk file and error422.exe" ${ENDCOLOR}

wget -0 ~/Downloads/jdk-8u191-windows-i586 \
"download.gamejolt.net/86890f19c25819208fd6779c78f40461774dabeff8a49a165d0455abe959fa4f,1794695435,7/data/games/8/160/525660/files/5f328c4f34d66/jdk-8u191-windows-i586.exe"

wget -0 ~/Downloads/error422.exe \
"https://download.gamejolt.net/ab6b3de83e87bd482cf0730abfaff1d621905655ca790ce396ee5c7633896840,1794698829,7/data/games/8/160/525660/files/5f382b21df77a/thkkkhk422.zip"

echo ${GREEN} "Installing application Wine" ${ENDCOLOR}
sudo apt install -y wine32:i386

wine "/home/administrator/Downloads/jdk-8u191-windows-i586.exe"

wineserver -k

echo ${YELLOW} "launching minecraft Error422.exe" ${ENDCOLOR}
EXE4J_JAVA_HOME="C:\Program Files\Java\a\jdk1.8.0_191" wine ~/Downloads/error422.exe

echo ${YELLOW} "Creating executable script shortcut on desktop" 
cat << 'EOF' > ~/Desktop/Run_Error422.sh
#!/bin/bash
export EXE4J_JAVA_HOME="C:\Program Files\Java\a\jdk1.8.0_191"
wine ~/Downloads/error422.exe
EOF
chmod +x ~/Desktop/Run_Error422.sh

#End of Script, Thanks for using!

#Socials:
#https://twitch.tv/mysterymanyt
#https://github.com/MysteryManYT-ttv
#https://sourceforge.net/u/aiden-r/profile/




