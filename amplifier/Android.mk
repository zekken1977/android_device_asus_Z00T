LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := \
	liblog libutils libtinyalsa

#For Debug
LOCAL_SHARED_LIBRARIES += libutils \
                          libutilscallstack


LOCAL_CFLAGS += -funwind-tables
#LOCAL_CFLAGS += \
	-DTFA9887_HAL_DEBUG_ENABLE

LOCAL_CFLAGS += \
	-DTFA9887_DUMP_STACK_DEBUG_ENABLE

LOCAL_CFLAGS += \
	-DPLATFORM_MSM8916 

LOCAL_HEADER_LIBRARIES := generated_kernel_headers
LOCAL_HEADER_LIBRARIES += libhardware_headers

LOCAL_C_INCLUDES := \
	external/tinyalsa/include \
	$(call project-path-for,qcom-audio)/hal

LOCAL_SRC_FILES := \
	tfa9887.c \
	audio_amplifier.c \
	tfa9887_debug.cpp

LOCAL_MODULE := audio_amplifier.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
