$(call inherit-product, vendor/rootbox/configs/common.mk)

PRODUCT_PACKAGES += \
    NovaLauncher \
    Torch

# Inherit drm blobs
-include vendor/rootbox/configs/common_drm_phone.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
