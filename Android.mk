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

# Audio, camera, GPS, RIL, sensor, NFC, fingerprint, media and graphics HALs.
$(eval $(call k3gxx-shared-library,libExynosOMX_Core,proprietary/lib/libExynosOMX_Core.so,))
$(eval $(call k3gxx-shared-library,libExynosOMX_Resourcemanager,proprietary/lib/libExynosOMX_Resourcemanager.so,))
$(eval $(call k3gxx-shared-library,libOMX.Exynos.AVC.Decoder,proprietary/lib/omx/libOMX.Exynos.AVC.Decoder.so,omx))
$(eval $(call k3gxx-shared-library,libOMX.Exynos.AVC.Encoder,proprietary/lib/omx/libOMX.Exynos.AVC.Encoder.so,omx))
$(eval $(call k3gxx-shared-library,libOMX.Exynos.MPEG4.Decoder,proprietary/lib/omx/libOMX.Exynos.MPEG4.Decoder.so,omx))
$(eval $(call k3gxx-shared-library,libOMX.Exynos.MPEG4.Encoder,proprietary/lib/omx/libOMX.Exynos.MPEG4.Encoder.so,omx))
$(eval $(call k3gxx-shared-library,libOMX.Exynos.VP8.Decoder,proprietary/lib/omx/libOMX.Exynos.VP8.Decoder.so,omx))
$(eval $(call k3gxx-shared-library,libOMX.Exynos.VP8.Encoder,proprietary/lib/omx/libOMX.Exynos.VP8.Encoder.so,omx))
$(eval $(call k3gxx-shared-library,camera.universal5422,proprietary/lib/hw/camera.universal5422.so,hw))
$(eval $(call k3gxx-shared-library,libexynoscamera,proprietary/lib/libexynoscamera.so,))
$(eval $(call k3gxx-shared-library,libsecnativefeature,proprietary/lib/libsecnativefeature.so,))
$(eval $(call k3gxx-shared-library,libvdis,proprietary/lib/libvdis.so,))
$(eval $(call k3gxx-shared-library,libhwjpeg,proprietary/lib/libhwjpeg.so,))
$(eval $(call k3gxx-shared-library,libsensorhub,proprietary/lib/libsensorhub.so,))
$(eval $(call k3gxx-shared-library,libsensorhubservice,proprietary/lib/libsensorhubservice.so,))
$(eval $(call k3gxx-shared-library,sensorhubs.universal5422,proprietary/lib/hw/sensorhubs.universal5422.so,hw))
$(eval $(call k3gxx-shared-library,sensors.universal5422,proprietary/lib/hw/sensors.universal5422.so,hw))
$(eval $(call k3gxx-shared-library,gps.universal5422,proprietary/lib/hw/gps.universal5422.so,hw))
$(eval $(call k3gxx-shared-library,libwrappergps,proprietary/lib/libwrappergps.so,))
$(eval $(call k3gxx-shared-library,libsec-ril,proprietary/lib/libsec-ril.so,))
$(eval $(call k3gxx-shared-library,nfc_nci.universal5422,proprietary/lib/hw/nfc_nci.universal5422.so,hw))
$(eval $(call k3gxx-shared-library,libfpasmtztransport,proprietary/lib/libfpasmtztransport.so,))
$(eval $(call k3gxx-shared-library,libvalAuth,proprietary/lib/libvalAuth.so,))
$(eval $(call k3gxx-shared-library,libvcsfp,proprietary/lib/libvcsfp.so,))
$(eval $(call k3gxx-shared-library,libvfmClient,proprietary/lib/libvfmClient.so,))
$(eval $(call k3gxx-shared-library,libvfmtztransport,proprietary/lib/libvfmtztransport.so,))
$(eval $(call k3gxx-shared-library,libGLES_mali,proprietary/vendor/lib/egl/libGLES_mali.so,egl))
$(eval $(call k3gxx-shared-library,gralloc.exynos5,proprietary/vendor/lib/hw/gralloc.exynos5.so,hw))
$(eval $(call k3gxx-shared-library,libwvdrmengine,proprietary/vendor/lib/mediadrm/libwvdrmengine.so,mediadrm))

# Modem, GPS, sensors, fingerprint and secure-world daemons.
$(eval $(call k3gxx-executable,cbd,proprietary/bin/cbd))
$(eval $(call k3gxx-executable,gpsd,proprietary/bin/gpsd))
$(eval $(call k3gxx-executable,sensorhubservice,proprietary/bin/sensorhubservice))
$(eval $(call k3gxx-executable,mcDriverDaemon,proprietary/bin/mcDriverDaemon))
$(eval $(call k3gxx-executable,vcsFPService,proprietary/bin/vcsFPService))
