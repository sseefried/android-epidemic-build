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

# libz

include $(CLEAR_VARS)
LOCAL_MODULE := z
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libz.so
include $(PREBUILT_SHARED_LIBRARY)

#
# The next few entries are all for Haskell libraries.
# These were laborious to write out and really should
# be automatically generated.
#

# Haskell: Epidemic-0.0.1
include $(CLEAR_VARS)
LOCAL_MODULE := HSEpidemic-0.0.1
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSEpidemic-0.0.1.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: rts
include $(CLEAR_VARS)
LOCAL_MODULE := HSrts
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSrts.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: Cffi
include $(CLEAR_VARS)
LOCAL_MODULE := Cffi
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libCffi.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSSDL2-0.1.0
include $(CLEAR_VARS)
LOCAL_MODULE := HSSDL2-0.1.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSSDL2-0.1.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSsdl2-mixer-0.1.0.0
include $(CLEAR_VARS)
LOCAL_MODULE := HSsdl2-mixer-0.1.0.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSsdl2-mixer-0.1.0.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HStime-1.4.2
include $(CLEAR_VARS)
LOCAL_MODULE := HStime-1.4.2
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHStime-1.4.2.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HScairo-0.12.5.3
include $(CLEAR_VARS)
LOCAL_MODULE := HScairo-0.12.5.3
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHScairo-0.12.5.3.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSarray-0.5.0.0
include $(CLEAR_VARS)
LOCAL_MODULE := HSarray-0.5.0.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSarray-0.5.0.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSrandom-1.1
include $(CLEAR_VARS)
LOCAL_MODULE := HSrandom-1.1
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSrandom-1.1.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSutf8-string-0.3.8
include $(CLEAR_VARS)
LOCAL_MODULE := HSutf8-string-0.3.8
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSutf8-string-0.3.8.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HStext-1.2.0.0
include $(CLEAR_VARS)
LOCAL_MODULE := HStext-1.2.0.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHStext-1.2.0.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSdeepseq-1.3.0.2
include $(CLEAR_VARS)
LOCAL_MODULE := HSdeepseq-1.3.0.2
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSdeepseq-1.3.0.2.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSbytestring-0.10.4.0
include $(CLEAR_VARS)
LOCAL_MODULE := HSbytestring-0.10.4.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSbytestring-0.10.4.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSMonadRandom-0.3
include $(CLEAR_VARS)
LOCAL_MODULE := HSMonadRandom-0.3
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSMonadRandom-0.3.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSmtl-2.2.1
include $(CLEAR_VARS)
LOCAL_MODULE := HSmtl-2.2.1
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSmtl-2.2.1.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HStransformers-0.4.1.0
include $(CLEAR_VARS)
LOCAL_MODULE := HStransformers-0.4.1.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHStransformers-0.4.1.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HScontainers-0.5.5.1
include $(CLEAR_VARS)
LOCAL_MODULE := HScontainers-0.5.5.1
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHScontainers-0.5.5.1.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSHipmunk-5.2.0.16
include $(CLEAR_VARS)
LOCAL_MODULE := HSHipmunk-5.2.0.16
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSHipmunk-5.2.0.16.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSvector-0.10.12.1
include $(CLEAR_VARS)
LOCAL_MODULE := HSvector-0.10.12.1
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSvector-0.10.12.1.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSprimitive-0.5.4.0
include $(CLEAR_VARS)
LOCAL_MODULE := HSprimitive-0.5.4.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSprimitive-0.5.4.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSStateVar-1.0.0.0
include $(CLEAR_VARS)
LOCAL_MODULE := HSStateVar-1.0.0.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSStateVar-1.0.0.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HScontrol-monad-free-0.5.3
include $(CLEAR_VARS)
LOCAL_MODULE := HScontrol-monad-free-0.5.3
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHScontrol-monad-free-0.5.3.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSbase-4.7.0.0
include $(CLEAR_VARS)
LOCAL_MODULE := HSbase-4.7.0.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSbase-4.7.0.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSinteger-gmp-0.5.1.0
include $(CLEAR_VARS)
LOCAL_MODULE := HSinteger-gmp-0.5.1.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSinteger-gmp-0.5.1.0.a
include $(PREBUILT_STATIC_LIBRARY)

# Haskell: HSghc-prim-0.3.1.0
include $(CLEAR_VARS)
LOCAL_MODULE := HSghc-prim-0.3.1.0
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libHSghc-prim-0.3.1.0.a
include $(PREBUILT_STATIC_LIBRARY)

# C library: iconv
include $(CLEAR_VARS)
LOCAL_MODULE := iconv
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libiconv.a
include $(PREBUILT_STATIC_LIBRARY)

# C library: cairo
include $(CLEAR_VARS)
LOCAL_MODULE := cairo
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libcairo.a
include $(PREBUILT_STATIC_LIBRARY)

# C library: pixman
include $(CLEAR_VARS)
LOCAL_MODULE := pixman
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libpixman.a
include $(PREBUILT_STATIC_LIBRARY)

# C library: png
include $(CLEAR_VARS)
LOCAL_MODULE := png
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libpng.a
include $(PREBUILT_STATIC_LIBRARY)

# C library: gmp
include $(CLEAR_VARS)
LOCAL_MODULE := gmp
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libgmp.a
include $(PREBUILT_STATIC_LIBRARY)

# C library: cpufeatures
include $(CLEAR_VARS)
LOCAL_MODULE := cpufeatures
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libcpufeatures.a
include $(PREBUILT_STATIC_LIBRARY)

# The libmain that SDL enters

include $(CLEAR_VARS)
LOCAL_MODULE := main
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := src/SDL_android_main.c main.c

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_mixer z

#
# FIXME: The order of these libraries is important. I wish it wasn't.
#
LOCAL_STATIC_LIBRARIES := HSEpidemic-0.0.1 HSrts Cffi HSSDL2-0.1.0 \
  HSsdl2-mixer-0.1.0.0 HScairo-0.12.5.3 \
  HSarray-0.5.0.0 HSrandom-1.1 HStime-1.4.2 HSutf8-string-0.3.8 \
  HStext-1.2.0.0 HSdeepseq-1.3.0.2 HSbytestring-0.10.4.0 \
  HSMonadRandom-0.3 HSmtl-2.2.1 HStransformers-0.4.1.0 \
  HScontainers-0.5.5.1 HSHipmunk-5.2.0.16 HSvector-0.10.12.1 \
  HSprimitive-0.5.4.0 HSStateVar-1.0.0.0 HScontrol-monad-free-0.5.3 \
  HSbase-4.7.0.0 HSinteger-gmp-0.5.1.0 HSghc-prim-0.3.1.0 \
  iconv cairo pixman png gmp cpufeatures


LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -lz -llog \




include $(BUILD_SHARED_LIBRARY)