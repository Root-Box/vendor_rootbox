# Inherit AOSP device configuration for galaxys3.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# S3 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/s3-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_i9300

# Setup device specific product configuration.
PRODUCT_DEVICE := i9300
PRODUCT_NAME := rootbox_i9300
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.1.2/JZO54K/I9300XXDLIB:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.1.2 JZO54K I9300XXDLIB release-keys"

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip
