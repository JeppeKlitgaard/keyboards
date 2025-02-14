#!/bin/bash

# Usage
# ./build.sh SIDE
# Where SIDE is either 'left' or 'right'
set -xe

SIDE="$1"

# Start
_INITIAL_PWD=`pwd`

# Build
cd "./zmk/app"
uv run west build \
    -b "nice_nano_v2" \
    -d "build/$SIDE" \
    `# -S studio-rpc-usb-uart` \
    `# -p` \
    -- \
    `# -DZMK_CONFIG="/home/jeppe/Code/keyboard/miryoku_zmk/config"` \
    -DZMK_CONFIG="/home/jeppe/Code/keyboards/v1/zmk-config/config" \
    -DSHIELD="hillside_$SIDE" \
    -DZMK_EXTRA_MODULES="/home/jeppe/Code/keyboards/v1/hillside-module;/home/jeppe/Code/keyboards/v1/zmk-config;/home/jeppe/Code/keyboards/v1/zmk-helpers"

cd $_INITIAL_PWD
mkdir -p build
cp "./zmk/app/build/$SIDE/zephyr/zmk.uf2" "build/$SIDE.uf2"

echo "Done building."
