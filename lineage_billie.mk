#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, device/oneplus/billie/device.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Asserts
TARGET_OTA_ASSERT_DEVICE := OnePlusN10,billie

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# Boot Animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := lineage_billie
PRODUCT_DEVICE := billie
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := BE2026

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlusN10 \
    PRODUCT_NAME=OnePlusN10 \
    PRIVATE_BUILD_DESC="OnePlusN10-user 11   release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlusN10/OnePlusN10:11/RKQ1.201217.002/2108030010:user/release-keys
