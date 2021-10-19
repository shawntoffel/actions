#!/bin/sh
set -e

path=$1
flavor=$2
keymap=$3
commit=$(git rev-parse --short HEAD)
destDir="/qmk_firmware/keyboards/$commit"

echo "==========================="
echo "commit: '$commit'"
echo "path: '$path'"
echo "flavor: '$flavor'"
echo "keymap: '$keymap'"
echo "==========================="

echo "Copying '$path/*' to '$destDir'"
mkdir "$destDir"
cp -r "$path/"* "$destDir"

echo "Starting compilation..."
cd /qmk_firmware
make "$commit/$flavor:$keymap"
echo "Done!"