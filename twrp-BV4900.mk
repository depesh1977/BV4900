#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from BV4900 device
$(call inherit-product, device/blackview/BV4900/device.mk)

# Inherit from PBRP custom product configuration
# $(call inherit-product, vendor/pb/config/common.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := BV4900
PRODUCT_NAME := twrp-BV4900
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV4900
PRODUCT_MANUFACTURER := blackview

PRODUCT_GMS_CLIENTID_BASE := android-hct

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k61v1_64_bsp-user 10 QP1A.190711.020 mp1k61v164bspP4 release-keys"

BUILD_FINGERPRINT := Blackview/BV4900_RU/BV4900:10/QP1A.190711.020/1641435215:user/release-keys

