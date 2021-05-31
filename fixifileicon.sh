# Script made by Joey Reinhart
# Retina iFile icon made by meesebyte on Deviantart
# iFile made by Carsten Heinelt

echo Removing old icons...
rm /Applications/iFile.app/AppIcon* > /dev/null
rm /Applications/iFile.app/Icon.png > /dev/null

echo Downloading HD iFile icon...
curl -s -k https://i.imgur.com/ZFhor.png > /Applications/iFile.app/Icon.png

echo Done.
