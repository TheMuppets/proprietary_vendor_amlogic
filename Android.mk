LOCAL_PATH := $(call my-dir)

define target-radio-files
$(notdir \
  $(wildcard $(LOCAL_PATH)/bootloader.img) \
)
endef

-include vendor/amlogic/$(TARGET_DEVICE)/firmware.mk
