# Script made by Joey Reinhart
# Retina iFile icon made by meesebyte on Deviantart
# iFile made by Carsten Heinelt

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
rm /Applications/iFile.app/AppIcon* > /dev/null
rm /Applications/iFile.app/Icon.png > /dev/null

echo Downloading HD iFile icon...
curl -s -k https://i.imgur.com/ZFhor.png > /Applications/iFile.app/Icon.png

echo Done.
