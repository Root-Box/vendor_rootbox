# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JRO03R BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d-%H%M)

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.aokp.version=RootBox-JB-$(TARGET_PRODUCT)-V2.8

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=Bajee \
    ro.goo.rom=RootBox \
    ro.goo.version=280


# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
