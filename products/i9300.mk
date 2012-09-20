# Inherit AOSP device configuration for galaxys3.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := i9300
PRODUCT_NAME := aokp_i9300
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9300

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.1.1/JRO03L/I9300XXALE8:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.1.1 JRO03L I9300XXALE8 release-keys"

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
