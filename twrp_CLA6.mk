#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TECNO-CLA6 device
$(call inherit-product, device/tecno/CLA6/device.mk)

PRODUCT_DEVICE := CLA6
PRODUCT_NAME := twrp_CLA6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CLA6
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_cla6_h8910-user 12 SP1A.210812.016 875811 release-keys"

BUILD_FINGERPRINT := TECNO/CLA6-OP/TECNO-CLA6:12/SP1A.210812.016/250428V365:user/release-keys
