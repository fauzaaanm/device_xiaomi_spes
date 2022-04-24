#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common Project Elixir stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_USES_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080

# Product Specifics
PRODUCT_NAME := aosp_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# GMS
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true

# Elixir Stuff
TARGET_SUPPORTS_QUICK_TAP := true
CUSTOM_BUILD_TYPE := OFFICIAL
IS_PHONE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="spes-user 11 RKQ1.211001.001 V13.0.9.0.RGCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/spes/spes:11/RKQ1.211001.001/V13.0.9.0.RGCMIXM:user/release-keys
