# Copyright (C) 2013 Mozilla Foundation
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

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include external/stlport/libstlport.mk
LOCAL_MODULE       := openh264
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_CFLAGS +=  -fno-rtti -fno-exceptions -I/home/ekr/dev/B2G/gonk-misc/openh264/codec/api/svc -I/home/ekr/dev/B2G/gonk-misc/openh264/codec/common/inc -std=c++11 -I/home/ekr/dev/gecko-dev/content/media/gmp/gmp-api -I/home/ekr/dev/B2G/gonk-misc/openh264/codec/encoder/core/inc -I/home/ekr/dev/B2G/gonk-misc/openh264/codec/encoder/plus/inc -I/home/ekr/dev/B2G/gonk-misc/openh264/codec/processing/interface -I/home/ekr/dev/B2G/gonk-misc/openh264/codec/decoder/core/inc -I/home/ekr/dev/B2G/gonk-misc/openh264/codec/decoder/plus/inc
LOCAL_LDFLAGS := -L/home/ekr/dev/B2G/gonk-misc/openh264 -lopenh264
LOCAL_SRC_FILES    := module/gmp-openh264.cpp
LOCAL_FORCE_STATIC_EXECUTABLE := false
LOCAL_SHARED_LIBRARIES := libstlport
include $(BUILD_SHARED_LIBRARY)
