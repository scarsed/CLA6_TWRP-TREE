#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from TECNO-CLA6 device
$(call inherit-product, device/tecno/CLA6/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
PRODUCT_NAME := twrp_CLA6
PRODUCT_DEVICE := CLA6
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Tecno CLA6
PRODUCT_MANUFACTURER := TECNO

PRODUCT_GMS_CLIENTID_BASE := android-tecno
