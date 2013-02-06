# Inherit AOSP device configuration for d2vzw.
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/rootbox/configs/vzw.mk)

# S3 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/s3-common


# Setup device specific product configuration.
PRODUCT_NAME := rootbox_d2vzw
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2vzw
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.1.1/JRO03L/I535VRBLK3:user/release-keys" PRIVATE_BUILD_DESC="d2vzw-user 4.1.1 JRO03L I535VRBLK3 release-keys"

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

