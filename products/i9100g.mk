# Inherit AOSP device configuration for i9100g.
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/s2-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_hdpi

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_i9100g
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := i9100g
PRODUCT_MODEL := GT-I9100G
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := GT-I9100G

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_800_480.zip:system/media/bootanimation.zip
