# Script made by Joey Reinhart
# MTerminal made by lordscotland

if ! command -v curl &> /dev/null
then
    echo "cURL could not be found."
    echo "Please install cURL from Cydia."
    exit
fi

echo Removing old icons...
rm /Applications/MTerminal.app/icon* > /dev/null

echo Downloading Legacy MTerminal icon...
curl -s -k http://cydia.saurik.com/icon@2x/com.officialscheduler.mterminal.png > /Applications/MTerminal.app/icon-76.png

echo Done.
