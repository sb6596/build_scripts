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

# Variables
export TW_DEVICE_VERSION="0"
export BRANCH="android-5.1"
bash lpad_twrp.sh

# Acer Liquid Z500
export BRAND="acer"
export DEVICE="acer_Z500"
bash lpad_twrp.sh

# Lenovo A328
export BRAND="lenovo"
export DEVICE="A328"
bash lpad_twrp.sh

# Acer Liquid Z520
export BRAND="acer"
export DEVICE="acer_Z520"
bash lpad_twrp.sh

# Huawei Honor 3C Lite
export BRAND="huawei"
export DEVICE="holly"
bash lpad_twrp.sh

# Cherry Mobile Me Vibe
export BRAND="cherry"
export DEVICE="X170"
bash lpad_twrp.sh

# Lava Iris X8
export BRAND="lava"
export DEVICE="irisX8"
bash lpad_twrp.sh

# Lenovo A536
export BRAND="lenovo"
export DEVICE="A536"
bash lpad_twrp.sh

# Micromax Canvas Selfie Lens Q345
export BRAND="micromax"
export DEVICE="Q345"
bash lpad_twrp.sh

# Oppo Neo 7
export BRAND="oppo"
export DEVICE="A33w"
bash lpad_twrp.sh

# Prestigio MultiPhone 5504 Duo
export BRAND="prestigio"
export DEVICE="PSP5504DUO"
bash lpad_twrp.sh

# QMobile X70
export BRAND="qmobile"
export DEVICE="J220"
bash lpad_twrp.sh

# Symphony Xplorer V80
export BRAND="symphony"
export DEVICE="V80"
bash lpad_twrp.sh

# XOLO Omega 5.5
export BRAND="xolo"
export DEVICE="omega_5_5"
bash lpad_twrp.sh

# Intex Aqua Power HD
export BRAND="intex"
export DEVICE="Aqua_Power_HD"
bash lpad_twrp.sh

# HTC Desire 620G
export BRAND="htc"
export DEVICE="htc_a31mg_dug"
bash lpad_twrp.sh

# Xiaomi Redmi Note 3G
export BRAND="xiaomi"
export DEVICE="lcsh92_wet_jb9"
bash lpad_twrp.sh

# Lenovo S860
export BRAND="lenovo"
export DEVICE="S860"
bash lpad_twrp.sh

# Kingzone K1 Turbo
export BRAND="kingzone"
export DEVICE="K1_turbo"
bash lpad_twrp.sh

# LG G3 Stylus
export BRAND="lge"
export DEVICE="b2lss"
bash lpad_twrp.sh

# HTC Desire 816G
export BRAND="htc"
export DEVICE="htc_a5mgp_dug"
bash lpad_twrp.sh

# Xiaomi Redmi 1S TD
export BRAND="xiaomi"
export DEVICE="HM2014011"
bash lpad_twrp.sh

# Gionee M2
export BRAND="gionee"
export DEVICE="WBW5506"
bash lpad_twrp.sh

# Micromax Canvas Hue
export BRAND="micromax"
export DEVICE="AQ5000"
bash lpad_twrp.sh

# Doogee X5
export BRAND="doogee"
export DEVICE="X5"
bash lpad_twrp.sh

echo ""
echo "*******************************************************************************************************"
echo "TeamWin Recovery ${VERSION} has been successfuly built for all LPAD devices using the ${BRANCH} branch!"
echo "*******************************************************************************************************"
echo ""
unset TW_DEVICE_VERSION
unset DEVICE
unset BRAND
unset VERSION
unset BRANCH