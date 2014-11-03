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

# The libmain that SDL enters

include $(CLEAR_VARS)
LOCAL_MODULE := main
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := src/SDL_android_main.c main.c

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_mixer libz

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -lz -llog \
  -L$(LOCAL_PATH)/$(TARGET_ARCH_ABI) \
  -lHSEpidemic-0.0.1 \
  -lHSrts \
  -lCffi \
  -lHSSDL2-0.1.0 \
  -lHStime-1.4.2 \
  -lHScairo-0.12.5.3 \
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
  -lHSprimitive-0.5.4.0 \
  -lHSStateVar-1.0.0.0 \
  -lHScontrol-monad-free-0.5.3 \
  -lHSvector-0.10.12.1 \
  -lHSbase-4.7.0.0 \
  -lHSinteger-gmp-0.5.1.0 \
  -lHSghc-prim-0.3.1.0 \
  -liconv \
  -lcairo \
  -lpixman \
  -lpng \
  -lz \
  -lgmp \
  -lcpufeatures
  # "-Wl,-u,ghczmprim_GHCziTypes_Izh_static_info" \
  # "-Wl,-u,ghczmprim_GHCziTypes_Czh_static_info" \
  # "-Wl,-u,ghczmprim_GHCziTypes_Fzh_static_info" \
  # "-Wl,-u,ghczmprim_GHCziTypes_Dzh_static_info" \
  # "-Wl,-u,base_GHCziPtr_Ptr_static_info" \
  # "-Wl,-u,ghczmprim_GHCziTypes_Wzh_static_info" \
  # "-Wl,-u,base_GHCziInt_I8zh_static_info" \
  # "-Wl,-u,base_GHCziInt_I16zh_static_info" \
  # "-Wl,-u,base_GHCziInt_I32zh_static_info" \
  # "-Wl,-u,base_GHCziInt_I64zh_static_info" \
  # "-Wl,-u,base_GHCziWord_W8zh_static_info" \
  # "-Wl,-u,base_GHCziWord_W16zh_static_info" \
  # "-Wl,-u,base_GHCziWord_W32zh_static_info" \
  # "-Wl,-u,base_GHCziWord_W64zh_static_info" \
  # "-Wl,-u,base_GHCziStable_StablePtr_static_info" \
  # "-Wl,-u,ghczmprim_GHCziTypes_Izh_con_info" \
  # "-Wl,-u,ghczmprim_GHCziTypes_Czh_con_info" \
  # "-Wl,-u,ghczmprim_GHCziTypes_Fzh_con_info" \
  # "-Wl,-u,ghczmprim_GHCziTypes_Dzh_con_info" \
  # "-Wl,-u,base_GHCziPtr_Ptr_con_info" \
  # "-Wl,-u,base_GHCziPtr_FunPtr_con_info" \
  # "-Wl,-u,base_GHCziStable_StablePtr_con_info" \
  # "-Wl,-u,ghczmprim_GHCziTypes_False_closure" \
  # "-Wl,-u,ghczmprim_GHCziTypes_True_closure" \
  # "-Wl,-u,base_GHCziPack_unpackCString_closure" \
  # "-Wl,-u,base_GHCziIOziException_stackOverflow_closure" \
  # "-Wl,-u,base_GHCziIOziException_heapOverflow_closure" \
  # "-Wl,-u,base_ControlziExceptionziBase_nonTermination_closure" \
  # "-Wl,-u,base_GHCziIOziException_blockedIndefinitelyOnMVar_closure" \
  # "-Wl,-u,base_GHCziIOziException_blockedIndefinitelyOnSTM_closure" \
  # "-Wl,-u,base_ControlziExceptionziBase_nestedAtomically_closure" \
  # "-Wl,-u,base_GHCziWeak_runFinalizzerBatch_closure" \
  # "-Wl,-u,base_GHCziTopHandler_flushStdHandles_closure" \
  # "-Wl,-u,base_GHCziTopHandler_runIO_closure" \
  # "-Wl,-u,base_GHCziTopHandler_runNonIO_closure" \
  # "-Wl,-u,base_GHCziConcziIO_ensureIOManagerIsRunning_closure" \
  # "-Wl,-u,base_GHCziConcziIO_ioManagerCapabilitiesChanged_closure" \
  # "-Wl,-u,base_GHCziConcziSync_runSparks_closure" \
  # "-Wl,-u,base_GHCziConcziSignal_runHandlers_closure" \


include $(BUILD_SHARED_LIBRARY)