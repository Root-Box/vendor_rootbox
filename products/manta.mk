# Inherit AOSP device configuration for manta
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit RootBox common_tablet bits
$(call inherit-product, vendor/rootbox/configs/common_tablet.mk)

# Manta Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/manta

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_manta

# Setup device specific product configuration
PRODUCT_NAME := rootbox_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.2.1/JOP40D/533553:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.2.1 JOP40D 533553 release-keys" BUILD_NUMBER=533553

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip


