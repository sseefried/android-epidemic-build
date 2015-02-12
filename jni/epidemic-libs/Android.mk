LOCAL_PATH := $(call my-dir)

###########################
#
# SDL2 shared library
#
###########################

# SDL2

include $(CLEAR_VARS)
LOCAL_MODULE := SDL2
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libSDL2.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(PREBUILT_SHARED_LIBRARY)

# SDL2_mixer

include $(CLEAR_VARS)
LOCAL_MODULE := SDL2_mixer
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libSDL2_mixer.so
include $(PREBUILT_SHARED_LIBRARY)

# GLESv2

#include $(CLEAR_VARS)
#LOCAL_MODULE := GLESv2
#LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libGLESv2.so
#include $(PREBUILT_SHARED_LIBRARY)

# libz

include $(CLEAR_VARS)
LOCAL_MODULE := z
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libz.so
include $(PREBUILT_SHARED_LIBRARY)

# The libmain that SDL enters

include $(CLEAR_VARS)
LOCAL_MODULE     := main
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES  := src/SDL_android_main.c main.c

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_mixer z

#
# sseefried: 
# Even though the Android makefile infrastructure protests 
# 'non-system libraries in linker flags' when you cram all
# the 'local static libraries' into LOCAL_LDLIBS I prefer
# this method since I can also pass the --start-group and
# --end-group linker flags meaning that the order in which
# the libraries are listed is not important. Working out
# the dependency order is not something I think I should have
# to do!
#

LOCAL_LDFLAGS += -Wl,--export-dynamic

LOCAL_LDLIBS := -L$(LOCAL_PATH)/$(TARGET_ARCH_ABI) \
 -Wl,--start-group \
 -lz -llog \
 -lHSEpidemic-0.0.1 \
 -lHSrts \
 -lCffi \
 -lHSSDL2-0.1.0 \
 -lHSsdl2-mixer-0.1.0.0 \
 -lHStime-1.4.2 \
 -lHScairo-0.13.0.5 \
 -lHSarray-0.5.0.0 \
 -lHSrandom-1.1 \
 -lHStime-1.4.2 \
 -lHSutf8-string-0.3.8 \
 -lHStext-1.2.0.0 \
 -lHSdeepseq-1.3.0.2 \
 -lHSbytestring-0.10.4.0 \
 -lHSMonadRandom-0.3 \
 -lHSmtl-2.2.1 \
 -lHStransformers-0.4.1.0 \
 -lHScontainers-0.5.5.1 \
 -lHSHipmunk-5.2.0.16 \
 -lHSvector-0.10.12.1 \
 -lHSprimitive-0.5.4.0 \
 -lHSStateVar-1.0.0.0 \
 -lHScontrol-monad-free-0.5.3 \
 -lHSbase-4.7.0.0 \
 -lHSinteger-gmp-0.5.1.0 \
 -lHSghc-prim-0.3.1.0 \
 -lHSOpenGLRaw-1.5.0.0 \
 -lHSdirectory-1.2.1.0 \
 -lHSunix-2.7.0.1 \
 -lHSfilepath-1.3.0.2 \
 -lGLESv2 \
 -liconv \
 -lfreetype \
 -lcairo \
 -lpixman \
 -lpng \
 -lz \
 -lgmp \
 -lcpufeatures \
 -Wl,--end-group

include $(BUILD_SHARED_LIBRARY)