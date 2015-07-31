#
# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    crash_collector.cc \

LOCAL_CPP_EXTENSION := cc

LOCAL_CPPFLAGS := \
    -W \
    -Wall \
    -Wextra \
    -Wunused \
    -Werror \
    -Wno-unused-parameter \

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libcutils \
    liblog \
    libutils \

LOCAL_STATIC_LIBRARIES := \
    breakpad_client \

LOCAL_MODULE := crash_collector

include $(BUILD_EXECUTABLE)