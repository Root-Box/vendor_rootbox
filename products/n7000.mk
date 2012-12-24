# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/n7000/full_n7000.mk)

# Inherit common product files.
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/i9100

# Setup device specific product configuration.
PRODUCT_DEVICE := n7000
PRODUCT_NAME := rootbox_n7000
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-N7000

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-I9100:4.1.1/JRO03H/ZCLP6:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.1.1 JRO03H ZCLP6 release-keys"
PRODUCT_RELEASE_NAME := n7000

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Copy Onandroid partitions table
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/onandroid/s2-common/partlayout4nandroid:system/partlayout4nandroid

