#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/msm8937

# copied from crosshatch
# setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)


PRODUCT_COPY_FILES := \
    device/xiaomi/msm8937/prebuilt-kernel/Image.gz-dtb:kernel \
    $(LOCAL_PATH)/fstab.ramdisk:$(TARGET_COPY_OUT_RAMDISK)/fstab.msm8937 \
    $(LOCAL_PATH)/fstab.ramdisk:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.msm8937 \
    device/xiaomi/msm8937/init.common.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.msm8937.rc \
    device/xiaomi/msm8937/init.common.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.msm8937.usb.rc \
    device/xiaomi/msm8937/common.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8937.kl

# Build generic Audio HAL
PRODUCT_PACKAGES := audio.primary.msm8937

# Build generic lights HAL
PRODUCT_PACKAGES += lights.msm8937

PRODUCT_PACKAGES += \
    pd-mapper \
    qrtr-ns \
    qrtr-cfg \
    qrtr-lookup \
    rmtfs \
    tqftpserv

PRODUCT_COPY_FILES += \
    device/xiaomi/msm8937/qcom/init.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.qcom.rc
