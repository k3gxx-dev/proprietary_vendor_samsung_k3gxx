# Copyright (C) 2026 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

# The stock k3gxx binaries are 32-bit ARM ELF files.  Keep them as vendor
# prebuilts so Android 11's linker namespaces place the HALs and daemons in
# the vendor image instead of relying on the removed system/vendor layout.
define k3gxx-shared-library
include $(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_SRC_FILES := $(2)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_MULTILIB := 32
LOCAL_CHECK_ELF_FILES := false
ifneq ($(strip $(3)),)
LOCAL_MODULE_RELATIVE_PATH := $(3)
endif
include $(BUILD_PREBUILT)
endef

define k3gxx-executable
include $(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_SRC_FILES := $(2)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_MULTILIB := 32
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)
endef

# GPS, NFC, and Widevine modules managed directly by the root vendor repo
$(eval $(call k3gxx-shared-library,gps.universal5422,proprietary/lib/hw/gps.universal5422.so,hw))
$(eval $(call k3gxx-shared-library,libwrappergps,proprietary/lib/libwrappergps.so,))
$(eval $(call k3gxx-shared-library,nfc_nci.universal5422,proprietary/lib/hw/nfc_nci.universal5422.so,hw))
$(eval $(call k3gxx-shared-library,libwvdrmengine,proprietary/vendor/lib/mediadrm/libwvdrmengine.so,mediadrm))
$(eval $(call k3gxx-executable,gpsd,proprietary/bin/gpsd))

# Include all modular submodules:
# camera, gpu, ril, omx, sensors-biometrics
include $(call all-subdir-makefiles)
