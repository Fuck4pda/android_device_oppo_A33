# Copyright (C) 2015-2017 The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/oppo/A33/device.mk)
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Ancient
ANCIENT_NOGAPPS := true
TARGET_BOOT_ANIMATION_RES := 720

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Assert
TARGET_OTA_ASSERT_DEVICE := A33f,A33,A33fw,a33f,a33,a33fw,msm8916

TARGET_VENDOR := OPPO
PRODUCT_DEVICE := A33
PRODUCT_NAME := ancient_A33
BOARD_VENDOR := OPPO
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := A33
PRODUCT_MANUFACTURER := OPPO

# Device Identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
     PRODUCT_MODEL="OPPO A33" \
     PRODUCT_NAME="OPPO A33F" \
     PRODUCT_DEVICE="OPPO A33F"

PRODUCT_PROPERTY_OVERRIDES += \
     ro.build.product=OPPO A33F

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
PRIVATE_BUILD_DESC="2014817-user 5.1.1 LMY47V V9.2.5.0.LHJMIEK release-keys"

BUILD_FINGERPRINT := msm8916_32-user 5.1.1 LMY47V eng.root.20170531 release-keys"

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Trust
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# APN(s)
PRODUCT_COPY_FILES += device/lenovo/a6000/apns-conf.xml:system/etc/apns-conf.xml
