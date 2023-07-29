LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), BV4900)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
