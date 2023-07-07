#!/usr/bin/env bash

# Recommended to read:
# - https://source.android.com/docs/setup/build/building-kernels

BRANCH="${BRANCH:-android-gs-pantah-5.10-android13-qpr3}"

sudo apt install repo

repo init -u https://android.googlesource.com/kernel/manifest -b $BRANCH
repo sync

BUILD_CONFIG=aosp/build.config.gki.aarch64 build/build.sh
