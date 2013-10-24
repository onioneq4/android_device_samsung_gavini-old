-include device/samsung/u8500-common/BoardCommonConfig.mk

TARGET_OTA_ASSERT_DEVICE := gavini,i8530,GT-I8530

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/gavini
TARGET_KERNEL_CONFIG := cyanogenmod_i8530_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/gavini/bluetooth

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/gavini/vibrator/vibrator.c

# Recovery
<<<<<<< HEAD
TARGET_RECOVERY_INITRC := device/samsung/gavini/rootdir/recovery.rc
RECOVERY_FSTAB_VERSION := 1
