#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from everpal device
$(call inherit-product, device/xiaomi/everpal/device.mk)

PRODUCT_DEVICE := everpal
PRODUCT_NAME := omni_everpal
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := everpal
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TQ3A.230901.001"

BUILD_FINGERPRINT := Redmi/spark_everpal/everpal:13/TQ3A.230901.001/Everpal06181842:userdebug/release-keys
