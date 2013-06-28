# Inherit AOSP device configuration for jflte.
$(call inherit-product, device/samsung/jfltespr/full_jfltespr.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Galaxy S4 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/s4-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_jfltespr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jfltespr
PRODUCT_MODEL := SPH-L720
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltespr TARGET_DEVICE=jfltespr BUILD_FINGERPRINT="samsung/jfltespr/jfltespr:4.2.2/JDQ39/L720VPUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jfltespr-user 4.2.2 JDQ39 L720VPUAMDL release-keys"
PRODUCT_RELEASE_NAME := jfltespr

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1920_1080.zip:system/media/bootanimation.zip

