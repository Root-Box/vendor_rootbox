# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit RootBox common_tablet bits
$(call inherit-product, vendor/rootbox/configs/common_tablet.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/grouper

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_tvdpi

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.1.1/JRO03H/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03H 405518 release-keys" BUILD_NUMBER=405518

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip


