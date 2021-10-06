ifndef TARGET_KERNEL_USE
TARGET_KERNEL_USE := mainline
endif

# All kernel modules are installed in ramdisk
KERNEL_MODS := $(wildcard device/xiaomi/mi8937/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/*.ko)
BOARD_GENERIC_RAMDISK_KERNEL_MODULES := $(KERNEL_MODS)

# Inherit the full_base and device configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/xiaomi/mi8937/mi8937/device.mk)
$(call inherit-product, device/xiaomi/mi8937/device-common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Product overrides
PRODUCT_NAME := Xiaomi
PRODUCT_DEVICE := Mi8937
PRODUCT_BRAND := AOSP
