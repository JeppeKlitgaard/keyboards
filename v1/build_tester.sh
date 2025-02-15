#!/bin/bash

# Usage
# ./build_tester.sh
set -xe

# Start
_INITIAL_PWD=`pwd`

# Build
cd "./zmk/app"
uv run west build \
    -b "nice_nano_v2" \
    -d "build/tester" \
    -- \
    -DSHIELD="tester_pro_micro"

cd $_INITIAL_PWD
mkdir -p build
cp "./zmk/app/build/tester/zephyr/zmk.uf2" "build/tester.uf2"

echo "Done building."
