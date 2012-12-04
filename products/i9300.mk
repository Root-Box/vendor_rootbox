# Inherit AOSP device configuration for galaxys3.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# I9300 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/i9300

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_DEVICE := i9300
PRODUCT_NAME := rootbox_i9300
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9300

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.1.2/JZO54K/I9300XXDLIB:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.1.2 JZO54K I9300XXDLIB release-keys"

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Copy Onandroid partitions table
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/onandroid/i9300/partlayout4nandroid:system/partlayout4nandroid
