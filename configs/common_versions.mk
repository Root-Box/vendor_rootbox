# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)
RB_BRANCH=jb-mr1

ifneq ($(RB_BUILD),)
    # RootBox Official properties
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=Bajee \
        ro.goo.rom=RootBox \
        ro.goo.version=$(DATE) \
        ro.rootbox.version=RootBox-JB-$(TARGET_PRODUCT)-$(RB_BUILD)
else
    ifneq ($(RB_NIGHTLY),)
    # RootBox Nightlies properties
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=Bajee \
        ro.goo.rom=RootBoxNightlies \
        ro.goo.version=$(DATE) \
        ro.rootbox.version=RootBox-JB-$(TARGET_PRODUCT)-Nightly-$(DATE)
    else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.rootbox.version=RootBox-JB-$(TARGET_PRODUCT)-Unofficial-$(DATE)
    endif
endif

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.rootbox.branch=$(RB_BRANCH) \
        ro.rootbox.device=$(RB_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
