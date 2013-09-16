# Copyright (C) 2009 The Android Open Source Project
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

## Wifi
PRODUCT_PACKAGES += \
    abtfilt \
    wlan_tool \
    wmiconfig \
    wpa_supplicant
## Ramdisk Modules
PRODUCT_COPY_FILES += \
    device/samsung/callisto/ramdisk/CALLISTO.rle:root/CALLISTO.rle \
    device/samsung/callisto/ramdisk/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/callisto/ramdisk/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/callisto/ramdisk/modules/sec_param.ko:root/lib/modules/sec_param.ko
    
# Inherit products (Most specific first)
# tass blobs > samsung common(device/vendor) > other blobs
$(call inherit-product, vendor/samsung/callisto/vendor_blobs.mk)
$(call inherit-product, device/samsung/callisto/common.mk)

## LDPI assets
PRODUCT_AAPT_CONFIG := normal mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi
$(call inherit-product, device/ldpi-common/ldpi.mk)

## Inherit overlays  (Most specific last)
DEVICE_PACKAGE_OVERLAYS += device/samsung/callisto/overlay

## LatinIME ligth version
PRODUCT_COPY_FILES += \
    device/samsung/callisto/prebuilt/app/LatinIME2.apk:system/app/LatinIME2.apk
    
# ROM Manager app
PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=ankur850 \
	ro.goo.board=callisto \
	ro.goo.rom=cm10.2_$(TARGET_PRODUCT) \
	ro.goo.version=1
