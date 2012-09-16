# Inherit AOSP device configuration for galaxys3.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# SGS3 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/i9300

# Setup device specific product configuration.
PRODUCT_DEVICE := i9300
PRODUCT_NAME := aokp_i9300
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9300

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9300 BUILD_FINGERPRINT=samsung/GT-I9300/GT-I9300:4.1.1/JRO03L/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9300-user 4.1.1 JRO03L XXLPQ release-keys"
PRODUCT_RELEASE_NAME := GT-I9300

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip
