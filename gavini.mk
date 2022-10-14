# Include common makefile
$(call inherit-product, device/samsung/u8500-common/common.mk)

LOCAL_PATH := device/samsung/gavini

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# STE
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ste_modem.sh:system/etc/ste_modem.sh

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/sirfgps.conf:system/etc/sirfgps.conf

# Compass workaround
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/compass:system/etc/init.d/compass

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.u8500.rc:root/init.u8500.rc \
    $(LOCAL_PATH)/rootdir/init.u8500.usb.rc:root/init.u8500.usb.rc \
    $(LOCAL_PATH)/rootdir/fstab.samsunggavini:root/fstab.samsunggavini \
    $(LOCAL_PATH)/rootdir/init.samsunggavini.rc:root/init.samsunggavini.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.samsunggavini.rc:root/init.recovery.samsunggavini.rc \
    $(LOCAL_PATH)/rootdir/ueventd.samsunggavini.rc:root/ueventd.samsunggavini.rc

# Prebuilt Charger
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/prebuilt/charger/charger:root/charger \
    $(LOCAL_PATH)/prebuilt/charger/images/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/prebuilt/charger/images/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/prebuilt/charger/images/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/prebuilt/charger/images/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/prebuilt/charger/images/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/prebuilt/charger/images/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/prebuilt/charger/images/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/prebuilt/charger/images/battery_fail.png:root/res/images/charger/battery_fail.png

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/adm.sqlite-u8500:system/etc/adm.sqlite-u8500

# Use non-open-source parts if present
$(call inherit-product-if-exists, vendor/samsung/gavini/gavini-vendor.mk)
