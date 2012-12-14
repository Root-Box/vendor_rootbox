# Inherit AOSP device configuration for d2att.
$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# D2 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/d2-common

# OVERLAY_TARGET adds overlay asset source
#OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_d2att
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2att
PRODUCT_MODEL := SGH-I747
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2att TARGET_DEVICE=d2att BUILD_FINGERPRINT="d2att-user 4.1.2 JZO54K I747UCALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2att/d2att:4.1.2/JZO54K/I747UCALEM:user/release-keys"

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Copy Onandroid partitions table
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/onandroid/d2att/partlayout4nandroid:system/partlayout4nandroid
