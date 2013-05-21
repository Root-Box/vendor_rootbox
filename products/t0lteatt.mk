# Inherit AOSP device configuration for t0lte.
$(call inherit-product, device/samsung/t0lteatt/full_t0lteatt.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Galaxy Note Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/note-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_t0lteatt
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := t0lteatt
PRODUCT_MODEL := SGH-I317
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0lteatt TARGET_DEVICE=t0lteatt BUILD_FINGERPRINT="samsung/t0lteatt/t0lteatt:4.1.2/JZO54K/I317UCAMA4:user/release-keys" PRIVATE_BUILD_DESC="t0lteatt-user 4.1.2 JZO54K I317UCAMA4 release-keys"
PRODUCT_RELEASE_NAME := t0lteatt

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip

