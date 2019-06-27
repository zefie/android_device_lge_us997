
DEVICE_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),us997)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif
