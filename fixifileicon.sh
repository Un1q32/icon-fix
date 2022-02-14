#!/bin/sh
# Script made by Joey Reinhart
# Retina iFile icon made by meesebyte on Deviantart
# iFile made by Carsten Heinelt

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
rm /Applications/iFile.app/AppIcon*
rm /Applications/iFile.app/Icon.png

printf "Downloading HD iFile icon...\n"
curl -s -k -o /Applications/iFile.app/Icon.png https://i.imgur.com/ZFhor.png

printf "Done.\n"
