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

# Build script for fully automated LineageOS building.

# Before building, please edit these script settings to suit your device
export device_tree="https://github.com/liquidporting/android_device_acer_acer_Z500.git"
export vendor_tree="https://github.com/liquidporting/android_vendor_acer_acer_Z500.git"
export brand="acer"
export device="acer_Z500"
export branch="14.1"

# Clonning device & vendor tree
git clone $device_tree -b cm-$branch device/$brand/$device
git clone $vendor_tree -b cm-$branch vendor/$brand/$device

# Patching source (some devices requires it)
cd device/$brand/$device/patches
. apply.sh

# Main building script
date=`date +%Y%m%d`
source build/envsetup.sh
brunch lineage_$device-userdebug > lineage_$device.log

# Uploading to MEGA
cd out/target/product/$device
megaput --no-progress --path /Root/LPAD/$device/LineageOS lineage-$branch-$date-UNOFFICIAL-$device.zip.md5sum
megaput --no-progress --path /Root/LPAD/$device/LineageOS ../../../../lineage_$device.log
megaput --no-progress --path /Root/LPAD/$device/LineageOS lineage-$branch-$date-UNOFFICIAL-$device.zip
cd ../../../..

# Cleaning the source
make clean
rm lineage_$device.log
cd device
rm -rf $brand
cd ..
cd vendor
rm -rf $brand
cd ..

echo "lineage-$branch-$date-UNOFFICIAL-$device.zip from $branch branch has been built and uploaded successfuly!"
