#!/usr/bin/env bash
mydir="$PWD"
pardir="${PWD%/*}"
rm -rf "$mydir/PirateWallet.app"
zcutil/build-mac.sh -j8
cp src/qt/komodo-qt "$mydir"/PirateWallet
rm src/qt/komodo-qt

$($pardir/go/bin/appify -name "PirateWallet" -icon "$mydir/src/qt/res/icons/komodo.png" "$mydir/PirateWallet")
rm "$mydir/PirateWallet"
open "$mydir/PirateWallet.app"