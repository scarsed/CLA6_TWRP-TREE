#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/CLA6

# Override common tree defaults for CLA6 hardware
TARGET_SCREEN_DENSITY := 480
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 2436

# Stabilize display timing across all MT6789 devices
TW_FRAMERATE := 60
TW_NO_HAPTICS_RIPPLE := true

# This flag is often needed if the UI is shifted to one side on MTK
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true

# Inherit from mt6789-common
include device/transsion/mt6789-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := Tecno-CLA6

# Init
TARGET_INIT_VENDOR_LIB := libinit_Tecno-CLA6
TARGET_RECOVERY_DEVICE_MODULES := libinit_Tecno-CLA6

# For Android 12/MT6789
OF_DEFAULT_KEYMASTER_VERSION := 4.1

# TWRP Configs
TW_DEVICE_VERSION := CLA6_by_CARBON_MI
