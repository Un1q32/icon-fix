#!/bin/bash
# Script made by Un1q32

# This script is licensed under the GNU GPLv3
# You can find the license here: http://www.gnu.org/licenses/gpl-3.0.html

rootcheck() {
    if [ "$EUID" != "0" ]; then
        printf "This script must be run as root!\n"
        exit 1
    fi
}

fixifile() {
    rootcheck
    if [ -d /Applications/iFile.app ]; then
        printf "Removing old iFile icon...\n"
        rm -f /Applications/iFile.app/AppIcon*
        printf "Adding new icon...\n"
        cp /usr/share/iconfix/ifile.png /Applications/iFile.app/Icon.png
    else
        printf "iFile not found - Skipping...\n"
    fi
}

fixmterminal() {
    rootcheck
    if [ -d /Applications/MTerminal.app ]; then
        printf "Removing old MTerminal icon...\n"
        rm -f /Applications/MTerminal.app/icon*
        printf "Adding new icon...\n"
        cp /usr/share/iconfix/mterminal.png /Applications/MTerminal.app/icon-76.png
    else
        printf "MTerminal not found - Skipping...\n"
    fi
}

if [ -z "$1" ]; then
    fixifile
    fixmterminal
    printf "Done.\n"
fi

case "$1" in
    ifile)
        fixifile
        printf "Done.\n"
        exit 0
    ;;

    mterminal)
        fixmterminal
        printf "Done.\n"
        exit 0
    ;;

    *)
        printf '%s' "\
Usage: ${0##*/} [OPTION]

  ifile		Fix only iFile icon
  mterminal	Fix only MTerminal icon
"
        exit 1
    ;;
esac
