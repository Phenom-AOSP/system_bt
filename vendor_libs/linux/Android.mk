#
#  Copyright (C) 2015 Intel Corporation
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at:
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_HAVE_BLUETOOTH_LINUX), true)

# libbt-vendor shared library for target
# ========================================================
include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
        bt_vendor_linux.cc

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/../../

LOCAL_SHARED_LIBRARIES := \
        liblog \
        libcutils

LOCAL_STATIC_LIBRARIES := libosi

LOCAL_MODULE := libbt-vendor
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS += $(test-vendor_CFLAGS)
LOCAL_CONLYFLAGS += $(test-vendor_CONLYFLAGS)

include $(BUILD_SHARED_LIBRARY)

endif  # BOARD_HAVE_BLUETOOTH_LINUX
