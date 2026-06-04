#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    WifiResDevice

TARGET_HAS_UDFPS := true
TARGET_HAS_AMOLED := true

# call the common setup
$(call inherit-product, device/samsung/sm7225-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/a52xq/a52xq-vendor.mk)

# Init files
PRODUCT_PACKAGES += \
    init.a52xq.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)