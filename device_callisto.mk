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

# Inherit products (Most specific first)
# tass blobs > samsung common(device/vendor) > other blobs
$(call inherit-product, vendor/samsung/callisto/vendor_blobs.mk)

## LDPI assets
PRODUCT_AAPT_CONFIG := normal mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi
$(call inherit-product, device/ldpi-common/ldpi.mk)

## Inherit overlays  (Most specific last)
DEVICE_PACKAGE_OVERLAYS += device/samsung/callisto/overlay

# ROM Manager app
PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=teamkang \
	ro.goo.board=$(TARGET_PRODUCT) \
	ro.goo.rom=cm10.1_$(TARGET_PRODUCT) \
	ro.goo.version=1
