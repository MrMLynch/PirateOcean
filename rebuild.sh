#!/usr/bin/env bash
mydir="$PWD"
pardir="${PWD%/*}"
rm -f PirateWallet
#make clean
make -j8
cp src/qt/komodo-qt "$mydir"/PirateWallet
rm src/qt/komodo-qt

./PirateWallet
