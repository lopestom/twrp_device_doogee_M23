#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

LOCAL_PATH := device/doogee/M23

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 31

# API
PRODUCT_SHIPPING_API_LEVEL := 31

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Treble
BOARD_VNDK_VERSION := current

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    vendor \
    product \
    system \
    system_ext \
    odm \
    vbmeta \
    vbmeta_vendor \
    vbmeta_system

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/mtk_plpath_utils \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Virtual A/B
ENABLE_VIRTUAL_AB := true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-mtkimpl.recovery \
    android.hardware.boot@1.0-impl-1.2-mtkimpl \
    libmtk_bsg \
    libmtk_bsg.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctrl \
    update_engine_client

PRODUCT_PACKAGES += \
    bootctrl.$(TARGET_BOARD_PLATFORM) \
    bootctrl.$(TARGET_BOARD_PLATFORM).recovery

PRODUCT_PACKAGES += \
    otapreopt_script \
    checkpoint_gc \
    update_engine \
    update_verifier \
    update_engine_sideload

# MTK PlPath Utils
PRODUCT_PACKAGES += \
    mtk_plpath_utils \
    mtk_plpath_utils.recovery

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(TARGET_BOARD_PLATFORM)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Additional Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libkeymaster41 \
    libpuresoftkeymasterdevice

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster41.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0.vendor \
    android.hardware.keymaster@4.1
    
# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# libion & libxml2
# VNDK-SP libion from vendor - Memory Allocator functions for ion - Library for interfacing with the ION driver
# The libxml2 package contains libraries and utilities used for parsing XML files.
TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    libxml2

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so

# Hidl Service
PRODUCT_ENFORCE_VINTF_MANIFEST := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
