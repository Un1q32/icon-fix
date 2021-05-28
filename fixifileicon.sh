# Script made by Joey Reinhart
# Retina iFile icon made by meesebyte on Deviantart
# iFile made by Carsten Heinelt

echo Removing iOS 7+ icons...
rm /Applications/iFile.app/AppIcon* > /dev/null

echo Removing original iOS 6 icon...
rm /Applications/iFile.app/Icon.png > /dev/null

echo Downloading HD iFile icon...
curl -s -k https://i.imgur.com/ZFhor.png > /Applications/iFile.app/Icon.png

echo Done.
