#!/usr/bin/env bash

# Before building, please edit these script settings to suit your device
export brand="acer"
export device="Z500"
export twrpver="3.1.1-0"
export branch="android-5.1"

# Clonning device tree
git clone https://github.com/hejsekvojtech/android_device_$brand_$device.git -b $branch device/$brand/$device

# Main building script
. build/envsetup.sh
lunch omni_$device-eng
make -j64 recoveryimage
cd out/target/product/$device
mv recovery.img twrp-$twrpver-$device.img

# Uploading to Google Drive
# gdrive upload twrp-$twrpver-$device.img
# cd ../../../..

# Uploading to MEGA
megarm /Root/LPAD/Devices/$device/Recovery/twrp-$twrpver-$device.img
megaput --no-progress --path /Root/LPAD/Devices/$device/Recovery twrp-$twrpver-$device.img
cd ../../../..

# Cleaning the source
make clean
cd device
rm -rf $brand
cd ..
echo "twrp-$twrpver-$device.img has been built and uploaded successfuly!"
