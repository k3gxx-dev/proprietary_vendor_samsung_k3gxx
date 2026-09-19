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

# Proprietary modules are declared in Android.mk and selected explicitly here.
# Firmware and non-ELF payloads remain PRODUCT_COPY_FILES in the companion
# makefile so they can be installed in the correct partition.
PRODUCT_PACKAGES += \
    cbd \
    camera.universal5422 \
    gps.universal5422 \
    gpsd \
    gralloc.exynos5 \
    libGLES_mali \
    libexynoscamera \
    libfpasmtztransport \
    libsec-ril \
    libsecnativefeature \
    libsensorhub \
    libsensorhubservice \
    libvalAuth \
    libvcsfp \
    libvdis \
    libvfmClient \
    libvfmtztransport \
    libwvdrmengine \
    libwrappergps \
    nfc_nci.universal5422 \
    sensorhubservice \
    sensorhubs.universal5422 \
    sensors.universal5422 \
    vcsFPService

$(call inherit-product, vendor/samsung/k3gxx/k3gxx-vendor-blobs.mk)
