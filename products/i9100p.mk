# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/i9100/full_i9100.mk)

# Inherit NFC files.
$(call inherit-product, vendor/aokp/configs/nfc_i9100p.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/i9100p

# Setup device specific product configuration.
PRODUCT_DEVICE := i9100
PRODUCT_NAME := aokp_i9100p
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100P TARGET_DEVICE=GT-I9100P BUILD_FINGERPRINT=samsung/GT-I9100P/GT-I9100P:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100P-user 4.1.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := GT-I9100P

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip
