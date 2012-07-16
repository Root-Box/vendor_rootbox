# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/galaxys2/full_galaxys2.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/galaxys2

# Setup device specific product configuration.
PRODUCT_DEVICE := galaxys2
PRODUCT_NAME := aokp_galaxys2
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K XXLPQ release-keys"

PRODUCT_RELEASE_NAME := SGS2

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip
