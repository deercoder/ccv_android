LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#opencv
OPENCVROOT:= /home/changliu/OpenCV-2.4.9-android-sdk
OPENCV_CAMERA_MODULES:=on
OPENCV_INSTALL_MODULES:=on
OPENCV_LIB_TYPE:=SHARED
include ${OPENCVROOT}/sdk/native/jni/OpenCV.mk

FILE_LIST := $(wildcard $(LOCAL_PATH)/ccv/test/unit/*.c) # must put before other error
FILE_LIST := $(wildcard $(LOCAL_PATH)/ccv/test/regression/*.c) # must put before other error
FILE_LIST := $(wildcard $(LOCAL_PATH)/ccv/bin/*.c)
FILE_LIST := $(wildcard $(LOCAL_PATH)/ccv/lib/*.c)
FILE_LIST := $(wildcard $(LOCAL_PATH)/ccv/lib/3rdparty/sqlite3/*.c)
FILE_LIST := $(wildcard $(LOCAL_PATH)/ccv/lib/3rdparty/sfmt/*.c)
FILE_LIST := $(FILE_LIST:$(LOCAL_PATH)/lib/%=%:$(LOCAL_PATH)/bin/%=%)
LOCAL_SRC_FILES := com_example_ndk_opencv_androidstudio_NativeClass.cpp
LOCAL_SRC_FILES += $(FILE_LIST)
LOCAL_LDLIBS += -llog -lm
LOCAL_MODULE := MyLib

include $(BUILD_SHARED_LIBRARY)
