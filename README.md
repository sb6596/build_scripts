# Get started with scripts

These scripts were made to help with building various Android ROMs and Recoveries. I use these on my build server/personal machine so they are tailored specifically to me but you are free to take these and modify them for your own needs.
This repository contains some useful bash scripts for fully automated building of LineageOS based ROMs or TWRP recovery
for your device. These bash based scripts are easy to use and they just needs to be executed in terminal from the root folder
of source you want to build from (LineageOS or TWRP)

* Scripts in this repository
  * lpad_twrp-5.1.sh - builds TWRP for all Liquid Porting & Development devices using android-5.1 branch
  * lpad_twrp-6.0.sh - builds TWRP for all Liquid Porting & Development devices using android-6.0 branch
  * lineageos.sh - builds LineageOS for one particular device
  * twrp.sh - builds TWRP for one particular device
  
* Misc. scripts
  * install_megatools.sh - installs MEGA for uploading builds

## Cloning

Now we'll clone them and `cd` to them by running these commands:

```sh
git clone https://github.com/hejsekvojtech/build_scripts.git
cd build_scripts
```

Before using these build scripts you have to install utilities for uploading builds or just disable lines that starts with `megaput` or `megarm` if you don't want to use uploading to MEGA. The following script is made for MEGA installation.
Install it by executing following commands from build_scripts folder:

```sh
bash utils/install_megatools.sh
```

## Configuring

After installing required utilities you have to configure script you want to use by opening it with text editor and changing following:

`export device_tree=`
`export vendor_tree=`
`export brand=`
`export device=`
`export branch=`
`export twrpver=`
`export lineagever=`

Once your script is set-up, place it to the root of TWRP or LineageOS source. If you don't have it synced yet, you can use these links:

For TWRP click [here](https://github.com/hejsekvojtech/android_bootable_recovery)

For LineageOS click [here](https://github.com/LineageOS/android)

## Starting scripts

Once your choosen and configured script is placed into the root of required source, execute it by:

```sh
bash <script name>.sh
```
