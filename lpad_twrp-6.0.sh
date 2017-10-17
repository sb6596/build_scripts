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
export branch="android-6.0"

# Don't touch this
VERSION=$( grep "TW_MAIN_VERSION_STR" bootable/recovery/variables.h -m 1 | cut -d \" -f2 )-${TW_DEVICE_VERSION}

# Xiaomi Redmi 4A specific TWRP build configuration
export BRAND="xiaomi"
export DEVICE="rolex"

git clone https://github.com/liquidporting/android_device_${BRAND}_${DEVICE}.git -b ${BRANCH} device/${BRAND}/${DEVICE}
. build/envsetup.sh
lunch omni_${DEVICE}-eng
mka recoveryimage > twrp_${DEVICE}.log
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
  megarm /Root/LPAD/TWRP/twrp-${VERSION}-${DEVICE}.img
  megarm /Root/LPAD/TWRP/twrp_${DEVICE}.log
  megaput --no-progress --path /Root/LPAD/TWRP twrp-${VERSION}-${DEVICE}.img
  megaput --no-progress --path /Root/LPAD/TWRP ../../../../twrp_${DEVICE}.log
fi

if [ -f "twrp-${VERSION}-${DEVICE}.img" ]
then
  cd ../../../..
  rm twrp_${DEVICE}.log
  make clean
  cd device
  rm -rf ${BRAND}
  cd ..
else
  rm twrp_${DEVICE}.log
  make clean
  cd device
  rm -rf ${BRAND}
  cd ..
  echo ""
  echo "**************************************************************"
  echo "The build process of TWRP Recovery failed for device ${DEVICE}"
  echo "**************************************************************"
  echo ""
  exit
fi

# Xiaomi Redmi 4 (China) specific TWRP build configuration
export BRAND="xiaomi"
export DEVICE="prada"

git clone https://github.com/liquidporting/android_device_${BRAND}_${DEVICE}.git -b ${BRANCH} device/${BRAND}/${DEVICE}
. build/envsetup.sh
lunch omni_${DEVICE}-eng
mka recoveryimage > twrp_${DEVICE}.log
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
  megarm /Root/LPAD/TWRP/twrp-${VERSION}-${DEVICE}.img
  megarm /Root/LPAD/TWRP/twrp_${DEVICE}.log
  megaput --no-progress --path /Root/LPAD/TWRP twrp-${VERSION}-${DEVICE}.img
  megaput --no-progress --path /Root/LPAD/TWRP ../../../../twrp_${DEVICE}.log
fi

if [ -f "twrp-${VERSION}-${DEVICE}.img" ]
then
  cd ../../../..
  rm twrp_${DEVICE}.log
  make clean
  cd device
  rm -rf ${BRAND}
  cd ..
else
  rm twrp_${DEVICE}.log
  make clean
  cd device
  rm -rf ${BRAND}
  cd ..
  echo ""
  echo "**************************************************************"
  echo "The build process of TWRP Recovery failed for device ${DEVICE}"
  echo "**************************************************************"
  echo ""
  exit
fi

echo ""
echo "*******************************************************************************************************"
echo "TeamWin Recovery ${VERSION} has been successfuly built for all LPAD devices using the ${BRANCH} branch!"
echo "*******************************************************************************************************"
echo ""
unset TW_DEVICE_VERSION