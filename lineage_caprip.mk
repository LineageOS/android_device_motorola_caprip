#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/caprip/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_caprip
PRODUCT_DEVICE := caprip
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(30)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="caprip_retail-user 12 S0RCS32.41-10-19-23 a67b9-b3a31 release-keys" \
    BuildFingerprint=motorola/caprip_retail/caprip:12/S0RCS32.41-10-19-23/a67b9-b3a31:user/release-keys \
    DeviceProduct=caprip_retail
