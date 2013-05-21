# Inherit AOSP device configuration for d2tmo.
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# S3 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/s3-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_i9300

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_d2tmo
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2tmo
PRODUCT_MODEL := SGH-T999
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2tmo TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="d2tmo-user 4.1.1 JRO03L T999UVDLJA release-keys" PRIVATE_BUILD_DESC="samsung/d2tmo/d2tmo:4.1.1/JRO03L/T999UVDLJA:user/release-keys"

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip
