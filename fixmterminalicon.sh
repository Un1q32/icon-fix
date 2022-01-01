#!/bin/bash
# Script made by Joey Reinhart
# MTerminal made by lordscotland

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit
fi

if ! command -v curl &> /dev/null
then
    echo "cURL could not be found."
    echo "Please install cURL from Cydia."
    exit
fi

echo Removing old icons...
rm /Applications/MTerminal.app/icon*

echo Downloading Legacy MTerminal icon...
curl -s -k http://cydia.saurik.com/icon@2x/com.officialscheduler.mterminal.png -o /Applications/MTerminal.app/icon-76.png

echo Done.
