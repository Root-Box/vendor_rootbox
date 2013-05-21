# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/n7000/full_n7000.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits.
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Galaxy Note Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/note-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_n7000
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := n7000
PRODUCT_MODEL := GT-N7000
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-I9100:4.1.1/JRO03H/ZCLP6:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.1.1 JRO03H ZCLP6 release-keys"
PRODUCT_RELEASE_NAME := n7000

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip

