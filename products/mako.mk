# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/mako

# Setup device specific product configuration
PRODUCT_NAME := rootbox_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
