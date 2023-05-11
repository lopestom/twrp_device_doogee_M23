LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), M23)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
