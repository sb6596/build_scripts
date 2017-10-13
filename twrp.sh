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

# Variables
export TW_DEVICE_VERSION="0"
export BRANCH="android-5.1"
export DEVICE="acer_Z500"
export BRAND="acer"

# Don't touch this
VERSION=$( grep "TW_MAIN_VERSION_STR" bootable/recovery/variables.h -m 1 | cut -d \" -f2 )-${TW_DEVICE_VERSION}

# Clonning the device tree
git clone https://github.com/liquidporting/android_device_${BRAND}_${DEVICE}.git -b ${BRANCH} device/${BRAND}/${DEVICE}

# Main script
. build/envsetup.sh
lunch omni_${DEVICE}-eng
make -j64 recoveryimage > twrp_${DEVICE}.log
cd out/target/product/${DEVICE}
if [ -f "recovery.img" ]
then
  mv recovery.img twrp-${VERSION}-${DEVICE}.img
else
  echo ""
  echo "*******************************************************************************"
  echo "Something went wrong during the build process, try checking your device tree."
  echo "After that, run the script again and see if you messed up something new or not."
  echo "*******************************************************************************"
  echo ""
fi

if [ -f "twrp-${VERSION}-${DEVICE}.img" ]
then
  echo "Uploading the twrp-${VERSION}-${DEVICE}.img file to MEGA..."
  megarm /Root/LPAD/TWRP/twrp-${VERSION}-${DEVICE}.img
  megarm /Root/LPAD/TWRP/twrp_${DEVICE}.log
  megaput --no-progress --path /Root/LPAD/TWRP twrp-${VERSION}-${DEVICE}.img
  megaput --no-progress --path /Root/LPAD/TWRP ../../../../twrp_${DEVICE}.log
  echo "Done!"
fi

# Cleaning the source
if [ -f "twrp-${VERSION}-${DEVICE}.img" ]
then
  cd ../../../..
  rm twrp_${DEVICE}.log
  make clean
  cd device
  rm -rf ${BRAND}
  cd ..
  echo ""
  echo "*******************************************************************************************************"
  echo "TeamWin Recovery ${VERSION} has been successfuly built for device ${DEVICE} using the ${BRANCH} branch!"
  echo "*******************************************************************************************************"
  echo ""
else
  rm twrp_${DEVICE}.log
  make clean
fi
unset TW_DEVICE_VERSION