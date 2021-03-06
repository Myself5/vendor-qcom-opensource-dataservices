LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := sockev_cli.c
LOCAL_CFLAGS := -Wall -Werror

ifeq ($(call is-vendor-board-platform,QCOM),true)
ifeq ($(TARGET_COMPILE_WITH_MSM_KERNEL),true)
    LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
    LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
endif
endif


LOCAL_MODULE := sockev
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
