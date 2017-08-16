#!/usr/bin/env bash

#
# Copyright (C) 2017 Liquid Porting & Development
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Build script for fully automated Team Win Recovery Project (TWRP) building.

# Before building, please edit these script settings to suit your device
export device_tree="https://github.com/liquidporting/android_device_acer_acer_Z500.git"
export brand="acer"
export device="acer_Z500"
export TW_DEVICE_VERSION=1
export branch="android-5.1"

# Don't touch this
version=$( grep "TW_MAIN_VERSION_STR" bootable/recovery/variables.h -m 1 | cut -d \" -f2 )-${TW_DEVICE_VERSION}

# Clonning device tree
git clone $device_tree -b $branch device/$brand/$device

# Main building script
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage > twrp_$device.log
cd out/target/product/$device
mv recovery.img twrp-$version-$device.img

# Uploading to MEGA
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$version-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp_$device.log
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$version-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery ../../../../twrp_$device.log
cd ../../../..

# Cleaning the source
make clean
rm twrp_$device.log
cd device
rm -rf $brand
cd ..
unset TW_DEVICE_VERSION
echo "TeamWin Recovery $version has been successfuly built for device $device using $branch branch!"
