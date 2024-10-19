#!/bin/bash

# Usage
# ./flash.sh SIDE WIN_MOUNT_LETTER
# Where SIDE is either 'left' or 'right'
# Where WIN_MOUNT_LETTER is a windows mount point letter such as 'F' or 'J'
set -xe

SIDE="$1"
MOUNT_LETTER="$2"

MOUNT_PATH="$HOME/.temp/mnt/TEMP_FLASHING_$MOUNT_LETTER"

# Flash
mkdir -p "$MOUNT_PATH"
sudo mount -t drvfs "$MOUNT_LETTER:" "$MOUNT_PATH"
cp "build/$SIDE.uf2" "$MOUNT_PATH/$SIDE.uf2"

# Unmount again
sudo umount "$MOUNT_PATH"
rmdir "$MOUNT_PATH"

echo "Done flashing."