#!/bin/sh


red=`echo -en "\e[31m"`
green=`echo -en "\e[32m"`
cyan=`echo -en "\e[36m"`
default=`echo -en "\e[39m"`
 
clear


if [ "$(whoami)" != "root" ]; then
        echo  "${red}Sorry. This script requires sudo privleges"
        exit 255
fi

echo "${cyan}               _____ ______________  ___"
echo "              |_   _|  ___| ___ \  \/  |"
echo " _ __ ___  _   _| | | |__ | |_/ / .  . |"
echo "| '_ ` _ \| | | | | |  __||    /| |\/| |"
echo "| | | | | | |_| | | | |___| |\ \| |  | |"
echo "|_| |_| |_|\__, \_/ \____/\_| \_\_|  |_/"
echo "            __/ |                       "
echo "           |___/                        \n"




printf "${green}Do you want to do the installation?\n[Y/N]"
printf "${default}"

read choice


case "$choice" in
    "y" | "Y")
        apt-get install zsh
        chsh /bin/zsh
        
        echo "${red}You need to reboot your system to aply changes."

        ;;
        
        ;;
    "n" | "N")
        exit ;;

    *)
        echo "${red}Something unexpected happened"
        exit 255

esac
