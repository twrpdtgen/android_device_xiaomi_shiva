#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from shiva device
$(call inherit-product, device/xiaomi/shiva/device.mk)

PRODUCT_DEVICE := shiva
PRODUCT_NAME := omni_shiva
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2004J19PI
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="shiva-user 11 RP1A.200720.011 V12.5.6.0.RJRINXM release-keys"

BUILD_FINGERPRINT := POCO/shiva/shiva:11/RP1A.200720.011/V12.5.6.0.RJRINXM:user/release-keys
