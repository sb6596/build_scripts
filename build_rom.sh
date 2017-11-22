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

# Options
PATCH="$1"
LOG="$2"
CCACHE="$3"

OUTPUT_ZIP="*UNOFFICIAL*.zip"
OUTPUT_MD5="*UNOFFICIAL*.md5sum"

# Variables
export BRANCH="cm-14.1"
export DEVICE="acer_Z500"
export BRAND="acer"

# Clonning the device & vendor blobs
git clone https://github.com/liquidporting/android_device_${BRAND}_${DEVICE}.git -b ${BRANCH} device/${BRAND}/${DEVICE}
git clone https://github.com/liquidporting/android_vendor_${BRAND}_${DEVICE}.git -b ${BRANCH} vendor/${BRAND}/${DEVICE}

# Patching the source (some devices requires it)
if [ "$PATCH" == "patch" ]
then
  cd device/${BRAND}/${DEVICE}/patches
  . apply.sh
fi

# Setting up the environment
if [ "$BRANCH" = "cm-13.0" ]
then
  source build/envsetup.sh
  make update-api
  make clean
  source build/envsetup.sh
else
  source build/envsetup.sh
fi

# Setting up the CCache
if [ "$CCACHE" = "ccache" ]
then
  export USE_CCACHE=1
  ${PWD}/prebuilts/misc/linux-x86/ccache/ccache -M 50G
fi

# Setting the device
breakfast ${DEVICE}-userdebug

# Building the ROM
if [ "$LOG" == "log" ]
then
  mka bacon 2>&1 | tee lineage_${DEVICE}.log
else
  mka bacon
fi

cd out/target/product/${DEVICE}

# Uploading to MEGA
if [ -f "${OUTPUT_ZIP}" ]
then
  echo "Uploading the ${OUTPUT_ZIP} file to MEGA..."
  megaput --no-progress --path /Root/LPAD/${DEVICE}/LineageOS ${OUTPUT_ZIP}
  megaput --no-progress --path /Root/LPAD/${DEVICE}/LineageOS ../../../../lineage_${DEVICE}.log
  megaput --no-progress --path /Root/LPAD/${DEVICE}/LineageOS ${OUTPUT_ZIP}
  echo "Done!"
else
  echo ""
  echo "*******************************************************************************"
  echo "Something went wrong during the build process, try checking your device tree."
  echo "After that, run the script again and see if you messed up something new or not."
  echo "*******************************************************************************"
  echo ""
fi

# Cleaning the source
if [ -f "${OUTPUT_ZIP}" ]
then
  cd ../../../..
  rm lineage_${DEVICE}.log
  make clean
  cd device
  rm -rf ${BRAND}
  cd ..
  echo ""
  echo "*******************************************************************************************************"
  echo "${OUTPUT_ZIP} has been successfuly built for device ${DEVICE} using the ${BRANCH} branch!"
  echo "*******************************************************************************************************"
  echo ""
else
  rm lineage_${DEVICE}.log
  make clean
fi

# Kill Java
pkill java
