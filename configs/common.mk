# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rb/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/rb/overlay/dictionaries

# SuperUser
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.rb.superuser

PRODUCT_PACKAGES += \
    LatinIME \
    BluetoothExt \
    CellBroadcastReceiver \
    libemoji \
    LatinImeDictionaryPack \
    mGerrit \
    Microbes \
    Stk \
    su \
    SwagPapers \
    Torch \
    Eleven

# Installer
PRODUCT_COPY_FILES += \
    vendor/rb/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/rb/prebuilt/common/etc/persist.conf:system/etc/persist.conf

PRODUCT_COPY_FILES += \
    vendor/rb/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/rb/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf


# init.d
PRODUCT_COPY_FILES += \
    vendor/rb/prebuilt/common/etc/init.local.rc:root/init.aokp.rc \
    vendor/rb/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/rb/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/rb/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/rb/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

#Tools
PRODUCT_PACKAGES += \
    libsepol \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    ntfsfix \
    ntfs-3g \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

#SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# rsync
PRODUCT_PACKAGES += \
    rsync

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

# Stagefright FFMPEG plugins
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/rb/configs/common_versions.mk

# T-Mobile theme engine
include vendor/rb/configs/themes_common.mk

# World APNs
PRODUCT_COPY_FILES += \
    vendor/rb/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

