#!/bin/bash

# Usage
# ./build_reset.sh
set -xe

# Start
_INITIAL_PWD=`pwd`

# Build
cd "./zmk/app"
uv run west build \
    -b "nice_nano_v2" \
    -d "build/reset" \
    -- \
    `# -DZMK_CONFIG="/home/jeppe/Code/keyboard/miryoku_zmk/config"` \
    -DSHIELD="settings_reset"

cd $_INITIAL_PWD
mkdir -p build
cp "./zmk/app/build/reset/zephyr/zmk.uf2" "build/reset.uf2"

echo "Done building."
