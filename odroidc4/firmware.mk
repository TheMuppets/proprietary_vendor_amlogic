LOCAL_PATH := $(call my-dir)

ifneq ($(filter odroidc4 odroidc4_tab,$(TARGET_DEVICE)),)

RADIO_FILES := $(wildcard $(LOCAL_PATH)/radio/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,radio/$(f)))

endif
