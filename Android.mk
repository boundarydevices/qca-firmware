MAJOR_VERSION := $(shell echo $(PLATFORM_VERSION) | cut -f1 -d.)

# To keep backward compatibility with previous release
ifneq ($(shell test $(MAJOR_VERSION) -ge 10 && echo true), true)
local_target_dir := $(TARGET_OUT)/etc/firmware/
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := bdwlan30.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := otp30.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qwlan30.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qca/tfbtfw11.tlv
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qca/tfbtnv11.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := wlan/cfg.dat
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := wlan/qcom_cfg.ini
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)
else
local_target_dir := $(TARGET_OUT_VENDOR)/firmware
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := bdwlan30.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := otp30.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qwlan30.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := tfbtfw11.tlv
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)/qca
LOCAL_SRC_FILES := qca/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := tfbtnv11.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)/qca
LOCAL_SRC_FILES := qca/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := cfg.dat
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)/wlan
LOCAL_SRC_FILES := wlan/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qcom_cfg.ini
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)/wlan
LOCAL_SRC_FILES := wlan/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)
endif
