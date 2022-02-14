#!/bin/sh
# Script made by Joey Reinhart
# MTerminal made by lordscotland

if [[ $EUID -ne 0 ]]; then
   printf "This script must be run as root.\n" 
   return 0
fi

if ! command -v curl &> /dev/null
then
    printf "cURL could not be found.\n"
    printf "Please install cURL from Cydia.\n"
    return 0
fi

printf "Removing old icons...\n"
rm /Applications/MTerminal.app/icon*

printf "Downloading Legacy MTerminal icon...\n"
curl -s -k -o /Applications/MTerminal.app/icon-76.png http://cydia.saurik.com/icon@2x/com.officialscheduler.mterminal.png

printf "Done.\n"
