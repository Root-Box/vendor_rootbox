# Inherit common tuff
$(call inherit-product, vendor/rootbox/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/common_tablets
