# NFC prebuilts

PRODUCT_COPY_FILES += \
    packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \

# NFC Support
PRODUCT_PACKAGES += \
    nfc.exynos4 \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag

LOCAL_PATH := vendor/rootbox/prebuilt/common/etc

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfcee_access_debug.xml
endif

PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

