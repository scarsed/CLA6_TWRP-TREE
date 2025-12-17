#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from Tecno-CLA6 device
$(call inherit-product, device/tecno/CLA6/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := CLA6
PRODUCT_NAME := twrp_CLA6
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CLA6
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

