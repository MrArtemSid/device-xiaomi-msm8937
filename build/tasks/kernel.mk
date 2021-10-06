ifneq ($(filter mi8937, $(TARGET_DEVICE)),)

IMAGE_GZ := device/xiaomi/mi8937/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/Image.gz
DTB1 := device/xiaomi/mi8937/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/sdm435-xiaomi-santoni.dtb
DTB2 := device/xiaomi/mi8937/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/sdm425-xiaomi-rolex.dtb

$(PRODUCT_OUT)/kernel: $(IMAGE_GZ) $(DTB)
	cat $(IMAGE_GZ) $(DTB) > $@

droidcore: $(PRODUCT_OUT)/kernel

endif
