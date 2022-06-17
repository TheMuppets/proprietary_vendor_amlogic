LOCAL_PATH := $(call my-dir)

define target-radio-files
$(notdir \
  $(wildcard $(LOCAL_PATH)/filesmap) \
  $(wildcard $(LOCAL_PATH)/*.bin) \
  $(wildcard $(LOCAL_PATH)/*.elf) \
  $(wildcard $(LOCAL_PATH)/*.img) \
  $(wildcard $(LOCAL_PATH)/*.mbn) \
)
endef

-include vendor/amlogic/$(TARGET_DEVICE)/firmware.mk
