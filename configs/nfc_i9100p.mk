# NFC prebuilts

VENDOR_PATH := vendor/rootbox/prebuilt/common

PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    $(VENDOR_PATH)/lib/hw/nfc.exynos4.so:system/lib/hw/nfc.exynos4.so \
    $(VENDOR_PATH)/lib/libnfc.so:system/lib/libnfc.so \
    $(VENDOR_PATH)/lib/libnfc_jni.so:system/lib/libnfc_jni.so \
    $(VENDOR_PATH)/lib/libnfc_ndef.so:system/lib/libnfc_ndef.so

LOCAL_PATH := vendor/rootbox/prebuilt/common/etc

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfcee_access_debug.xml
endif

PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Nfc \
    Tag
