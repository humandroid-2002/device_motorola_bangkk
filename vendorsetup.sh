#!/bin/bash

echo "start cloning repos"

clone_if_missing() {
  REPO=$1
  BRANCH=$2
  TARGET=$3

  if [ ! -d "$TARGET" ]; then
    echo "Cloning $TARGET ..."
    git clone -b "$BRANCH" "$REPO" "$TARGET"
  else
    echo "Already exists: $TARGET"
  fi
}

clone_if_missing https://gitlab.com/Yamavest12/vendor_motorola.git 16.2 vendor/motorola
clone_if_missing https://github.com/humandroid-2002/vendor_lineage-priv.git lunaris_server vendor/lineage-priv
clone_if_missing https://github.com/humandroid-2002/device_motorola_sm6375-common.git lunaris device/motorola/sm6375-common
clone_if_missing https://github.com/humandroid-2002/device_motorola_bangkk.git lunaris device/motorola/bangkk
clone_if_missing https://github.com/humandroid-2002/packages_apps_GameBar.git main packages/apps/GameBar
clone_if_missing https://github.com/humandroid-2002/packages_apps_ViPER4AndroidFX.git v4a packages/apps/ViPER4AndroidFX
clone_if_missing https://github.com/humandroid-2002/kernel_sm6375.git lunaris kernel/motorola/sm6375
clone_if_missing https://github.com/LineageOS/android_hardware_motorola.git lineage-23.2 hardware/motorola
clone_if_missing https://github.com/LineageOS/android_hardware_samsung_slsi_nfc.git lineage-23.2 hardware/samsung_slsi/nfc
clone_if_missing https://github.com/humandroid-2002/hardware_motorola_dolby.git moto-1.1 hardware/motorola/dolby
