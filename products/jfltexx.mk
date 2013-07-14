# Inherit AOSP device configuration for jflte.
$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Galaxy S4 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/s4-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_jfltexx
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jfltexx
PRODUCT_MODEL := GT-I9505
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltexx TARGET_DEVICE=jflte BUILD_FINGERPRINT="samsung/jfltexx/jflte:4.2.2/JDQ39/I9505XXUAMDE:user/release-keys" PRIVATE_BUILD_DESC="jfltexx-user 4.2.2 JDQ39 I9505XXUAMDE release-keys"
PRODUCT_RELEASE_NAME := jfltexx

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1920_1080.zip:system/media/bootanimation.zip

