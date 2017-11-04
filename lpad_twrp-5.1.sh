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

# Don't touch this
VERSION=$( grep "TW_MAIN_VERSION_STR" bootable/recovery/variables.h -m 1 | cut -d \" -f2 )-${TW_DEVICE_VERSION}

# Acer Liquid Z500 specific TWRP build configuration
export BRAND="acer"
export DEVICE="acer_Z500"

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

# Lenovo A328 specific TWRP build configuration
export BRAND="lenovo"
export DEVICE="A328"

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

# Acer Liquid E700 specific TWRP build configuration
export BRAND="acer"
export DEVICE="E39"

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

# Acer Liquid X1 specific TWRP build configuration
export BRAND="acer"
export DEVICE="S53"

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

# Acer Liquid Jade Plus specific TWRP build configuration
export BRAND="acer"
export DEVICE="S55"

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

# Acer Liquid Z520 specific TWRP build configuration
export BRAND="acer"
export DEVICE="acer_Z520"

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

# Huawei Honor 3C Lite specific TWRP build configuration
export BRAND="huawei"
export DEVICE="holly"

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

# Cherry Mobile Me Vibe specific TWRP build configuration
export BRAND="cherry"
export DEVICE="X170"

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

# Lava Iris X8 specific TWRP build configuration
export BRAND="lava"
export DEVICE="irisX8"

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

# Lenovo A536 specific TWRP build configuration
export BRAND="lenovo"
export DEVICE="A536"

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

# Lenovo IdeaTab A7-50 specific TWRP build configuration
export BRAND="lenovo"
export DEVICE="A3500"

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

# Micromax Canvas Selfie Lens Q345 specific TWRP build configuration
export BRAND="micromax"
export DEVICE="Q345"

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

# Oppo Neo 7 specific TWRP build configuration
export BRAND="oppo"
export DEVICE="A33w"

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

# Prestigio MultiPhone 5504 Duo specific TWRP build configuration
export BRAND="prestigio"
export DEVICE="PSP5504DUO"

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

# QMobile X70 specific TWRP build configuration
export BRAND="qmobile"
export DEVICE="J220"

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

# Symphony Xplorer V80 specific TWRP build configuration
export BRAND="symphony"
export DEVICE="V80"

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

# XOLO Omega 5.5 specific TWRP build configuration
export BRAND="xolo"
export DEVICE="omega_5_5"

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

# Intex Aqua Power HD specific TWRP build configuration
export BRAND="intex"
export DEVICE="Aqua_Power_HD"

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

# HTC Desire 620G dual sim specific TWRP build configuration
export BRAND="htc"
export DEVICE="htc_a31mg_dug"

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

# Xiaomi Redmi Note 3G specific TWRP build configuration
export BRAND="xiaomi"
export DEVICE="lcsh92_wet_jb9"

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

# Lenovo S860 specific TWRP build configuration
export BRAND="lenovo"
export DEVICE="S860"

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

# Kingzone K1 Turbo specific TWRP build configuration
export BRAND="kingzone"
export DEVICE="K1_turbo"

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

# LG G3 Stylus specific TWRP build configuration
export BRAND="lge"
export DEVICE="b2lss"

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

# HTC Desire 816G dual sim specific TWRP build configuration
export BRAND="htc"
export DEVICE="htc_a5mgp_dug"

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

# Xiaomi Redmi 1S TD specific TWRP build configuration
export BRAND="xiaomi"
export DEVICE="HM2014011"

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

# Gionee M2 specific TWRP build configuration
export BRAND="gionee"
export DEVICE="WBW5506"

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

# Micromax Canvas Hue TWRP build configuration
export BRAND="micromax"
export DEVICE="AQ5000"

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

# Doogee X5 TWRP build configuration
export BRAND="doogee"
export DEVICE="X5"

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
