# Inherit common tuff
$(call inherit-product, vendor/rb/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/rb/overlay/common_tablets
