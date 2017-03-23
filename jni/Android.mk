LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS :=
LOCAL_MODULE    := libpng
LOCAL_SRC_FILES :=\
	png.cpp \
	pngerror.cpp \
	pngget.cpp \
	pngmem.cpp \
	pngpread.cpp \
	pngread.cpp \
	pngrio.cpp \
	pngrtran.cpp \
	pngrutil.cpp \
	pngset.cpp \
	pngtest.cpp \
	pngtrans.cpp \
	pngwio.cpp \
	pngwrite.cpp \
	pngwtran.cpp \
	pngwutil.cpp \
	arm_init.cpp \
	filter_neon_intrinsics.cpp \
	#filter_neon.S
LOCAL_LDLIBS    := -lz  #build share library need add this line 
LOCAL_SHARED_LIBRARIES := -lz
LOCAL_EXPORT_LDLIBS := -lz
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/.

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)
