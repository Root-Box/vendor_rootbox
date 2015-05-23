# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)
RB_BRANCH=lollipop

ifneq ($(RB_BUILD),)
    # RootBox Official properties
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.rb.build=$(DATE) \
        ro.rb.version=RootBox-$(TARGET_PRODUCT)-$(RB_BUILD)
else
    ifneq ($(RB_NIGHTLY),)
    # RootBox Nightlies properties
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.rb.build=$(DATE) \
        ro.rb.version=RootBox-$(TARGET_PRODUCT)-Nightly-$(DATE)
    else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.rb.version=RootBox-$(TARGET_PRODUCT)-Unofficial-$(DATE)
    endif
endif

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.rb.branch=$(RB_BRANCH) \
        ro.rb.device=$(RB_DEVICE)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
