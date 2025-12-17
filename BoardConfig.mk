#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/CLA6

# Inherit from mt6789-common
include device/transsion/mt6789-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := Tecno-CLA6

# Init
TARGET_INIT_VENDOR_LIB := libinit_Tecno-CLA6
TARGET_RECOVERY_DEVICE_MODULES := libinit_Tecno-CLA6

# For Android 12/MT6789
OF_DEFAULT_KEYMASTER_VERSION := 4.1

TARGET_ARCH := arm64
TARGET_SUPPORTS_32_BIT_APPS := true

# TWRP Configs
TW_DEVICE_VERSION := CLA6_by_CARBON_MI
