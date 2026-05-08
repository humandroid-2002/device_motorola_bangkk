#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bangkk device
$(call inherit-product, device/motorola/bangkk/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_bangkk
PRODUCT_DEVICE := bangkk
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bangkk_g-user 15 V1TCS35H.88-16-4 d201a-da14f release-keys MV-301" \
    BuildFingerprint=motorola/bangkk_g/bangkk:15/V1TCS35H.88-16-4/d201a-da14f:user/release-keys \
    DeviceProduct=bangkk_g





# Lunaris
TARGET_ENABLE_BLUR := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_BOOT_ANIMATION_RES := 1080
WITH_BCR := true
WITH_GMS := true
WITH_GMS_AICORE := true
WITH_GMS_COMMS_SUITE := true
TARGET_CUSTOM_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_FILES := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_PHOTOS := true
TARGET_INCLUDE_WEATHER := true
PRODUCT_NO_CAMERA := true
TARGET_DISABLE_MATLOG := true
LUNARIS_BUILD_TYPE := OFFICIAL
SURFACE_FLINGER_BOOST := true
