#!/bin/bash

# Minecraft Error 422 Windows-to-Linux script converter
# #GPL-3.0 LICENSE Copyright Aiden Rebec aka MysteryManYT-ttv 2026
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
ENDCOLOR='\033[0m'
RED='\033[1;31m'

#echo -e ${YELLOW}Checking required application wget', if missing installation will start${ENDCOLOR}"


echo -e "${GREEN}Downloading jdk file and error422.exe, NOTE: This takes time!${ENDCOLOR}"

wget -O "$HOME/Downloads/jdk-8u191-windows-i586.exe" \
"https://archive.org/download/Java-Archive/Java%20SE%208%20%288u202%20and%20earlier%29/8u191/JDK/jdk-8u191-windows-i586.exe"

wget -O "$HOME/Downloads/ERROR422.exe" \
"https://github.com/SkyIslandExplore/error422archive/releases/download/InitialRelease/ERROR422.exe"



echo -e "${GREEN}Installing application Wine${ENDCOLOR}"

sudo apt update
sudo apt install wine
sudo apt install -y wine wine32:i386

echo ${GREEN} "When JDK installs and a empty window appears press Ctrl + C"
wine "$HOME/Downloads/jdk-8u191-windows-i586.exe"



APP_EXE="$(find "$HOME/Downloads" -maxdepth 1 -iname "ERROR422*.exe" | head -n 1)"

echo -e "${YELLOW}Launching Minecraft Error422.exe${ENDCOLOR}"
EXE4J_JAVA_HOME='C:\Program Files\Java\a\jdk1.8.0_191' wine "$APP_EXE"

echo -e "${YELLOW}Creating executable script shortcut on desktop${ENDCOLOR}"
cat << EOF > "$HOME/Desktop/Run_Error422.sh"
#!/bin/bash
export EXE4J_JAVA_HOME='C:\Program Files\Java\a\jdk1.8.0_191'
wine "$APP_EXE"
EOF
chmod +x "$HOME/Desktop/Run_Error422.sh"

echo -e "${RED}End of Script, Thanks for using this script!${ENDCOLOR}"

#Socials:
#https://twitch.tv/mysterymanyt
#https://github.com/MysteryManYT-ttv
#https://sourceforge.net/u/aiden-r/profile/


