GAPPS_VARIANT := nano
$(call inherit-product-if-exists, vendor/opengapps/build/opengapps-packages.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8998 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinymix

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1312

# Camera
PRODUCT_PACKAGES += \
    libxml2 \
    Snap

# Dalvik/HWUI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Display
PRODUCT_PACKAGES += \
    copybit.msm8998 \
    gralloc.msm8998 \
    hwcomposer.msm8998 \
    memtrack.msm8998 \
    liboverlay \
    libtinyxml

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

PRODUCT_COPY_FILES += \
    device/essential/mata/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# GPS
PRODUCT_PACKAGES += \
    gps.msm8998 \
    libgnsspps \
    libvehiclenetwork-native

# Init
PRODUCT_PACKAGES += \
    init.class_main.sh

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.nxp.nfc.nq \
    nfc_nci.nqx.default \
    NQNfcNci \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    Tag

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# QMI
PRODUCT_PACKAGES += \
    libjson

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Permissions
PRODUCT_PACKAGES += \
    fs_config_files

# Power
PRODUCT_PACKAGES += \
    power.msm8998

# Radio
PRODUCT_PACKAGES += \
    librmnetctl \
    libprotobuf-cpp-full

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8998

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Touchscreen
PRODUCT_PACKAGES += \
    libtinyxml2

# Update engine
PRODUCT_PACKAGES += brillo_update_payload

# Verity
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/bootdevice/by-name/system
$(call inherit-product, build/target/product/verity.mk)

# Wifi
PRODUCT_COPY_FILES += \
    device/essential/mata/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/essential/mata/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/essential/mata/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny
