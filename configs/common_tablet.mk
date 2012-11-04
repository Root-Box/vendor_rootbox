# Inherit common tuff
$(call inherit-product, vendor/rootbox/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/common_tablets

PRODUCT_PACKAGES += \
    Trebuchet

# Inherit drm blobs
-include vendor/rootbox/configs/common_drm_tablet.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf
