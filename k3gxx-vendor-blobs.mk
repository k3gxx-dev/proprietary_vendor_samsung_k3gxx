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

K3GXX_VENDOR_PATH := vendor/samsung/k3gxx
K3GXX_VENDOR_OUT := $(TARGET_COPY_OUT_VENDOR)

# Bluetooth BCM4350, camera ISOCELL S5K2P2/FIMC-IS, NFC and media firmware.
PRODUCT_COPY_FILES += \
    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/bcm4350_V0375.0766_wisol.hcd:$(K3GXX_VENDOR_OUT)/firmware/bcm4350_V0375.0766_wisol.hcd \
    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/bcm4350_V0375.0768.hcd:$(K3GXX_VENDOR_OUT)/firmware/bcm4350_V0375.0768.hcd \
# Camera firmwares (now provided by vendor/samsung/k3gxx/camera/camera-blobs.mk)
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/companion_2p2_master_setfile.bin:$(K3GXX_VENDOR_OUT)/firmware/companion_2p2_master_setfile.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/companion_2p2_mode_setfile.bin:$(K3GXX_VENDOR_OUT)/firmware/companion_2p2_mode_setfile.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/companion_default_coef.bin:$(K3GXX_VENDOR_OUT)/firmware/companion_default_coef.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/companion_default_lsc.bin:$(K3GXX_VENDOR_OUT)/firmware/companion_default_lsc.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/companion_fw_2p2_evt1.bin:$(K3GXX_VENDOR_OUT)/firmware/companion_fw_2p2_evt1.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/companion_fw_evt0.bin:$(K3GXX_VENDOR_OUT)/firmware/companion_fw_evt0.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/fimc_is_fw2.bin:$(K3GXX_VENDOR_OUT)/firmware/fimc_is_fw2.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/fimc_is_fw2_2p2.bin:$(K3GXX_VENDOR_OUT)/firmware/fimc_is_fw2_2p2.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/libpn547_fw.so:$(K3GXX_VENDOR_OUT)/firmware/libpn547_fw.so \
# MFC firmware (now provided by vendor/samsung/k3gxx/omx/omx-blobs.mk)
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/mfc_fw.bin:$(K3GXX_VENDOR_OUT)/firmware/mfc_fw.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/setfile_2p2.bin:$(K3GXX_VENDOR_OUT)/firmware/setfile_2p2.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/setfile_6b2.bin:$(K3GXX_VENDOR_OUT)/firmware/setfile_6b2.bin \
#    $(K3GXX_VENDOR_PATH)/proprietary/vendor/firmware/setfile_8b1.bin:$(K3GXX_VENDOR_OUT)/firmware/setfile_8b1.bin

# WM5110 (Florida codec) audio firmware.
PRODUCT_COPY_FILES += \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp1-edac.bin:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp1-edac.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp1-edac.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp1-edac.wmfw \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp2-tx-nb.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp2-tx-nb.wmfw \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp2-tx-swb.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp2-tx-swb.wmfw \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp2-tx-wb.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp2-tx-wb.wmfw \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp3-ez2-control.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp3-ez2-control.wmfw \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp3-lpsd-control.bin:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp3-lpsd-control.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp3-tx-nb.bin:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp3-tx-nb.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp3-tx-nb.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp3-tx-nb.wmfw \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp3-tx-swb-conversation.bin:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp3-tx-swb-conversation.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp3-tx-swb-interview.bin:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp3-tx-swb-interview.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp3-tx-swb.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp3-tx-swb.wmfw \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp3-tx-wb.bin:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp3-tx-wb.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp3-tx-wb.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp3-tx-wb.wmfw \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp4-rx-anc-nb.bin:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp4-rx-anc-nb.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp4-rx-anc-nb.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp4-rx-anc-nb.wmfw \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp4-rx-anc-wb.bin:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp4-rx-anc-wb.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/firmware/florida-dsp4-rx-anc-wb.wmfw:$(K3GXX_VENDOR_OUT)/etc/firmware/florida-dsp4-rx-anc-wb.wmfw

# BCM4350 configuration and calibration data.
PRODUCT_COPY_FILES += \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/bcmdhd_apsta.bin:$(K3GXX_VENDOR_OUT)/etc/wifi/bcmdhd_apsta.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/bcmdhd_ibss.bin:$(K3GXX_VENDOR_OUT)/etc/wifi/bcmdhd_ibss.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/bcmdhd_mfg.bin:$(K3GXX_VENDOR_OUT)/etc/wifi/bcmdhd_mfg.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/bcmdhd_sta.bin:$(K3GXX_VENDOR_OUT)/etc/wifi/bcmdhd_sta.bin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/cred.conf:$(K3GXX_VENDOR_OUT)/etc/wifi/cred.conf \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/nvram_mfg.txt:$(K3GXX_VENDOR_OUT)/etc/wifi/nvram_mfg.txt \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/nvram_mfg.txt_semco3rd:$(K3GXX_VENDOR_OUT)/etc/wifi/nvram_mfg.txt_semco3rd \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/nvram_mfg.txt_wisol:$(K3GXX_VENDOR_OUT)/etc/wifi/nvram_mfg.txt_wisol \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/nvram_net.txt:$(K3GXX_VENDOR_OUT)/etc/wifi/nvram_net.txt \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/nvram_net.txt_semco3rd:$(K3GXX_VENDOR_OUT)/etc/wifi/nvram_net.txt_semco3rd \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/wifi/nvram_net.txt_wisol:$(K3GXX_VENDOR_OUT)/etc/wifi/nvram_net.txt_wisol

# GPS certificate, MobiCore secure-world registry, and carrier data for vendor.
PRODUCT_COPY_FILES += \
    $(K3GXX_VENDOR_PATH)/proprietary/bin/gps.cer:$(K3GXX_VENDOR_OUT)/bin/gps.cer \
    $(K3GXX_VENDOR_PATH)/proprietary/app/FFFFFFFF000000000000000000000001.drbin:$(K3GXX_VENDOR_OUT)/app/FFFFFFFF000000000000000000000001.drbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/00060308060501020000000000000000.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/00060308060501020000000000000000.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/02010000080300030000000000000000.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/02010000080300030000000000000000.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/07010000000000000000000000000000.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/07010000000000000000000000000000.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/07060000000000000000000000000000.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/07060000000000000000000000000000.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000003.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000003.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000004.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000004.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000005.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000005.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000007.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000007.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000008.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000008.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000009.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000009.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff00000000000000000000000a.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff00000000000000000000000a.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff00000000000000000000000c.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff00000000000000000000000c.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff00000000000000000000000d.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff00000000000000000000000d.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff00000000000000000000000e.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff00000000000000000000000e.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff00000000000000000000000f.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff00000000000000000000000f.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000011.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000011.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000012.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000012.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000013.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000013.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000016.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000016.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000017.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000017.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000018.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000018.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff00000000000000000000003e.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff00000000000000000000003e.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffff000000000000000000000041.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffff000000000000000000000041.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffffd00000000000000000000004.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffffd00000000000000000000004.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffffd0000000000000000000000a.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffffd0000000000000000000000a.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffffd0000000000000000000000e.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffffd0000000000000000000000e.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/ffffffffd00000000000000000000016.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/ffffffffd00000000000000000000016.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/app/mcRegistry/fffffffff0000000000000000000001e.tlbin:$(K3GXX_VENDOR_OUT)/app/mcRegistry/fffffffff0000000000000000000001e.tlbin \
    $(K3GXX_VENDOR_PATH)/proprietary/etc/plmn_se13.bin:$(K3GXX_VENDOR_OUT)/etc/plmn_se13.bin
