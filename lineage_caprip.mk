#
# SPDX-FileCopyrightText: The LineageOS Project
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
    BuildDesc="caprip_retail-user 12 S0RC32.41-10-19-25 9b06d-e623ce release-keys" \
    BuildFingerprint=motorola/caprip_retail/caprip:12/S0RC32.41-10-19-25/9b06d-e623ce:user/release-keys \
    DeviceProduct=caprip_retail
