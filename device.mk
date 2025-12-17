#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
PRODUCT_COPY_FILES += 
system/core/rootdir/etc/init.zygote64_32.rc:$(TARGET_COPY_OUT_RAMDISK)/init.zygote64_32.rc# Inherit from mt6789-common

$(call inherit-product, device/transsion/mt6789-common/common.mk)
