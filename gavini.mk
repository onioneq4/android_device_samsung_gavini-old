LOCAL_PATH := device/samsung/gavini

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is HDPI
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.samsunggavini:root/fstab.samsunggavini \
    $(LOCAL_PATH)/rootdir/init.samsunggavini.rc:root/init.samsunggavini.rc \
    $(LOCAL_PATH)/rootdir/init.samsunggavini.usb.rc:root/init.samsunggavini.usb.rc \
    $(LOCAL_PATH)/rootdir/prerecovery.rc:root/prerecovery.rc \
    $(LOCAL_PATH)/rootdir/ueventd.samsunggavini.rc:root/ueventd.samsunggavini.rc

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Use non-open-source parts if present
$(call inherit-product-if-exists, vendor/samsung/gavini/gavini-vendor.mk)
