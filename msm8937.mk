# Inherit the full_base and device configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/xiaomi/msm8937/msm8937/device.mk)
$(call inherit-product, device/xiaomi/msm8937/device-common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Product overrides
PRODUCT_NAME := msm8937
PRODUCT_DEVICE := msm8937
PRODUCT_BRAND := AOSP
