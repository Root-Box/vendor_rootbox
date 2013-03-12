# Inherit AOSP device configuration for d710.
$(call inherit-product, device/samsung/d710/full_d710.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# D710 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/d710


# Setup device specific product configuration.
PRODUCT_NAME := rootbox_d710
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d710
PRODUCT_MODEL := SPH-D710
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d710 TARGET_DEVICE=d710 BUILD_FINGERPRINT="samsung/d710/d710:4.1.2/JZO54K/FL16:user/release-keys" PRIVATE_BUILD_DESC="d710-user 4.1.2 JZO54K FL16 release-keys"

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Copy Onandroid partitions table
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/onandroid/s2-common/partlayout4nandroid:system/partlayout4nandroid
