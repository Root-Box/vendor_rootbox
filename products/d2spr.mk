# Inherit AOSP device configuration for d2spr.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# S3 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/s3-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_i9300

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_d2spr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2spr
PRODUCT_MODEL := SPH-L710
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.0.4/IMM76D/L710VPALG2:user/release-keys" PRIVATE_BUILD_DESC="d2spr-user 4.0.4 IMM76D L710VPALG2 release-keys"

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip

