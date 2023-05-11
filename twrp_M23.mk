#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := device/doogee/M23

# Release name
PRODUCT_RELEASE_NAME := M23

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from device
$(call inherit-product, device/doogee/M23/device.mk)

# Inherit some common twrp stuff.
#$(call inherit-product, vendor/omni/config/common_tablet.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
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
