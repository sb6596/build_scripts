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

# Build script for fully automated Team Win Recovery Project (TWRP) building
# for all Liquid Porting & Development supported devices.

# If you want to add your device to our build rooster, create pull request
# or contact me at https://www.facebook.com/kh4os

export TW_DEVICE_VERSION=1
export branch="android-6.0"

# Don't touch this
version=$( grep "TW_MAIN_VERSION_STR" bootable/recovery/variables.h -m 1 | cut -d \" -f2 )-${TW_DEVICE_VERSION}

# Xiaomi Redmi XA specific TWRP build configuration
export device_tree="https://github.com/liquidporting/android_device_xiaomi_rolex.git"
export brand="xiaomi"
export device="rolex"

git clone $device_tree -b $branch device/$brand/$device
. build/envsetup.sh
lunch omni_$device-eng
mka recoveryimage > twrp_$device.log
cd out/target/product/$device
mv recovery.img twrp-$version-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$version-$device.img
megarm /Root/LPAD/Devices/$device/Recovery/twrp_$device.log
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$version-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery ../../../../twrp_$device.log
cd ../../../..
make clean
rm twrp_$device.log
cd device
rm -rf $brand
cd ..

echo "TeamWin Recovery $version has been successfuly built for all LPAD supported devices using $branch branch!"