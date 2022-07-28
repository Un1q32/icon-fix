#!/bin/sh
# Script made by OldWorldOrder
# Retina iFile icon made by meesebyte on Deviantart
# iFile made by Carsten Heinelt
# MTerminal made by lordscotland

if [ "$(id -u)" -ne 0 ]; then
   printf "This script must be run as root.\n" 
   exit 1
fi

if [ -f /usr/bin/curl ]; then
    printf "cURL could not be found.\n"
    printf "Please install cURL from Cydia.\n"
    exit 1
fi

if [ -d /Applications/iFile.app ]; then
	printf "Removing old iFile icon...\n"
	rm -f /Applications/iFile.app/AppIcon*
	printf "Downloading new icon...\n"
	curl -s -k -o /Applications/iFile.app/Icon.png https://i.imgur.com/ZFhor.png
else
	printf "iFile not found - Skipping...\n"
fi

if [ -d /Applications/MTerminal.app ]; then
	printf "Removing old MTerminal icon...\n"
	rm -f /Applications/MTerminal.app/icon*
	printf "Downloading new icon...\n"
	curl -s -k -o /Applications/MTerminal.app/icon-76.png http://cydia.saurik.com/icon@2x/com.officialscheduler.mterminal.png
else
	printf "MTerminal not found - Skipping...\n"
fi

printf "Done.\n"
