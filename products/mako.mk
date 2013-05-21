# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/mako

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration
PRODUCT_NAME := rootbox_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_768.zip:system/media/bootanimation.zip
