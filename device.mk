# Copyright (C) 2011 The Android Open Source Project
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

# This file includes all definitions that apply only to toroplus devices
#
# Anything that is generic to all tuna products should go in the tuna directory
#
# Everything in this directory will become public

# use toro device as base so in upgrades we will upgrade both at once
$(call inherit-product, device/samsung/tuna/device.mk)

# Add to Build Props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=7 \

# APNs for 3G network access
PRODUCT_COPY_FILES += \
    device/samsung/toroplus/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    device/samsung/toroplus/plus-apns-conf.xml:system/etc/apns-conf.xml

# Overlay for settings
DEVICE_PACKAGE_OVERLAYS += device/samsung/toroplus/overlay

# Add Toro spring specific device configuration
$(call inherit-product-if-exists, vendor/samsung/toroplus/device-vendor.mk)
