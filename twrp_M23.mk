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

# Inherit from M23 device
$(call inherit-product, device/doogee/M23/device.mk)

PRODUCT_DEVICE := M23
PRODUCT_NAME := twrp_M23
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := V30
PRODUCT_MANUFACTURER := DOOGEE

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=M23 \
    PRODUCT_NAME=M23_EEA \
    PRIVATE_BUILD_DESC="vnd_k6877v1_64_k419-user 12 SP1A.210812.016 1rck61v164bspP15 release-keys"

BUILD_FINGERPRINT := DOOGEE/M23_EEA/M23:12/SP1A.210812.016/1675772648:user/release-keys

# conditions for share or recreate: always mention credits for lopestom.
