#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from M23T device
$(call inherit-product, device/doogee/M23T/device.mk)

PRODUCT_DEVICE := M23T
PRODUCT_NAME := twrp_M23T
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := V30T
PRODUCT_MANUFACTURER := DOOGEE
