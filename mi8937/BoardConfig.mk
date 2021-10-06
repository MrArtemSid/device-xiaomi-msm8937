include device/xiaomi/beryllium/BoardConfigCommon.mk

# Copied from https://github.com/LineageOS/android_device_xiaomi_sdm845-common/blob/lineage-16.0/BoardConfigCommon.mk
# Board Information
TARGET_BOOTLOADER_BOARD_NAME := MSM8937
TARGET_BOARD_PLATFORM := msm8937

# Kernel/boot.img Configuration
BOARD_KERNEL_BASE        := 0x80000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_CMDLINE     := console=ttyMSM0,115200n8 androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE     += androidboot.hardware=mi8937 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_CMDLINE     += firmware_class.path=/vendor/firmware/ init=/init printk.devkmsg=on
BOARD_KERNEL_CMDLINE     += deferred_probe_timeout=30
BOARD_KERNEL_CMDLINE     += fw_devlink=permissive
 
# Image Configuration
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 #64M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26301931008
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 131072
