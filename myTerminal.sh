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

echo "${cyan}                     $$$$$$$$\ $$$$$$$$\ $$$$$$$\  $$\      $$\ $$$$$$\ $$\   $$\  $$$$$$\  $$\       "
echo "                     \__$$  __|$$  _____|$$  __$$\ $$$\    $$$ |\_$$  _|$$$\  $$ |$$  __$$\ $$ |      "
echo "$$$$$$\$$$$\  $$\   $$\ $$ |   $$ |      $$ |  $$ |$$$$\  $$$$ |  $$ |  $$$$\ $$ |$$ /  $$ |$$ |      "
echo "$$  _$$  _$$\ $$ |  $$ |$$ |   $$$$$\    $$$$$$$  |$$\$$\$$ $$ |  $$ |  $$ $$\$$ |$$$$$$$$ |$$ |  "
echo "$$ / $$ / $$ |$$ |  $$ |$$ |   $$  __|   $$  __$$< $$ \$$$  $$ |  $$ |  $$ \$$$$ |$$  __$$ |$$ |      "
echo "$$ | $$ | $$ |$$ |  $$ |$$ |   $$ |      $$ |  $$ |$$ |\$  /$$ |  $$ |  $$ |\$$$ |$$ |  $$ |$$ |      "
echo "$$ | $$ | $$ |\$$$$$$$ |$$ |   $$$$$$$$\ $$ |  $$ |$$ | \_/ $$ |$$$$$$\ $$ | \$$ |$$ |  $$ |$$$$$$$$\ "
echo "\__| \__| \__| \____$$ |\__|   \________|\__|  \__|\__|     \__|\______|\__|  \__|\__|  \__|\________|"
echo "              $$\   $$ |  "
echo "              \$$$$$$  |   "
echo "              \______/            \n"



printf "${green}Do you want to do the installation?\n[Y/N]"
printf "${default}"

read choice


case "$choice" in
    "y" | "Y")
        
        ;;
    "n" | "N")
        exit ;;

    *)
        echo "${red}Something unexpected happened"

esac
