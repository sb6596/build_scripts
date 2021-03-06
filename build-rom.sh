#!/bin/bash

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

# Don't touch this
DEVICE="$1"
LOG="$2"
CCACHE="$3"
CLEAN="$4"

export OUT_ZIP="*UNOFFICIAL*.zip"
export OUT_MD5="*UNOFFICIAL*.md5sum"
export OUT_LOG="rom-${DEVICE}-$(date +%Y%m%d-%H%M).log"
export OUT_PATH="out/target/product/${DEVICE}"

# Clean build
if [ "$CLEAN" == "--clean" ]
then
  make clean
fi

# Setting up the environment
source build/envsetup.sh

# Setting up the CCache
if [ "$CCACHE" = "--ccache" ]
then
  export USE_CCACHE=1
  ${PWD}/prebuilts/misc/linux-x86/ccache/ccache -M 50G
fi

# Setting the device
breakfast ${DEVICE}-userdebug

# Building the ROM
if [ "$LOG" == "--log" ]
then
  mka bacon 2>&1 | tee ${OUT_LOG}
else
  mka bacon
fi

# Checking if the build was successful
cd ${OUT_PATH}
if [ -f "${OUT_ZIP}" ]
then
  cd ../../../..
  echo ""
  echo "******************************************************************************"
  echo " The ROM has been successfuly built for device ${DEVICE}!"
  echo ""
  echo " ROM path     : $OUT_PATH/${OUT_ZIP}"
  echo " ROM Md5 path : $OUT_PATH/${OUT_MD5}"
  
  if [ "$LOG" == "--log" ]
  then
    echo " Build log                : ${OUT_LOG}"
    echo ""
  else
    echo ""
  fi
  
  echo "******************************************************************************"
  echo ""
else
  rm ${OUT_LOG}
  make clean
  echo ""
  echo "********************************************************************************"
  echo " Something went wrong during the build process, try checking your device tree."
  echo " After that, run the script again and see if you messed up something new or not."
  echo "********************************************************************************"
  echo ""
fi

# Kill Java
pkill java
