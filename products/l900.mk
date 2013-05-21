# Inherit AOSP device configuration for l900.
$(call inherit-product, device/samsung/l900/full_l900.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Galaxy Note Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/note-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_l900
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := l900
PRODUCT_MODEL := SPH-L900
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltespr TARGET_DEVICE=t0ltecdma BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.1.1/JRO03C/L900VPALJC:user/release-keys" PRIVATE_BUILD_DESC="t0ltespr-user 4.1.1 JRO03C L900VPALJC release-keys"

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip

