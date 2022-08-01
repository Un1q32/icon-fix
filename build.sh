#!/bin/sh
VERSION="4.0"
mkdir -p io.github.oldworldordr.iconfix-$VERSION/usr/bin
mkdir -p io.github.oldworldordr.iconfix-$VERSION/DEBIAN
cp iconfix.sh io.github.oldworldordr.iconfix-$VERSION/usr/bin/iconfix
cp iconfix.sh io.github.oldworldordr.iconfix-$VERSION/DEBIAN/postinst
cp control io.github.oldworldordr.iconfix-$VERSION/DEBIAN/control
dpkg -b io.github.oldworldordr.iconfix-$VERSION
