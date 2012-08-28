# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=RootBox-JRO03H BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d-%H%M)

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.aokp.version=RootBox_JB_V2.3

# RootBox OTA Updater
PRODUCT_PROPERTY_OVERRIDES += \
    otaupdater.otaid=bajee11 \
    otaupdater.otatime=$(DATE) \
    otaupdater.otaver=2.3

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
