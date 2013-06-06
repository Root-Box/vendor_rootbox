# Inherit AOSP device configuration for d2usc.
$(call inherit-product, device/samsung/d2usc/full_d2usc.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# S3 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/s3-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_i9300

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_d2usc
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2usc
PRODUCT_MODEL := SCH-R530U
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2usc TARGET_DEVICE=d2usc BUILD_FINGERPRINT="samsung/d2usc/d2usc:4.1.2/JZO54K/R530UVXAMB1:user/release-keys" PRIVATE_BUILD_DESC="d2usc-user 4.1.2 JZO54K R530UVXAMB1 release-keys"

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip

