#
# Copyright 2014 The Android Open-Source Project
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
#

# $(call inherit-product, $(LOCAL_PATH)/rk3399.mk)
# $(call inherit-product, device/rockchip/common/tv/tv_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
include device/rockchip/rk3399/rk3399_box/BoardConfig.mk
# Inherit from those products. Most specific first.
$(call inherit-product, device/rockchip/rk3399/device.mk)
$(call inherit-product, device/rockchip/common/device.mk)
$(call inherit-product-if-exists, vendor/opengapps/opengapps.mk)

PRODUCT_CHARACTERISTICS := box

PRODUCT_BRAND := rockchip
PRODUCT_MANUFACTURER := rockchip
PRODUCT_NAME := rk3399_box
PRODUCT_DEVICE := rk3399_box
PRODUCT_MODEL := rk3399-box

PRODUCT_AAPT_CONFIG := normal tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

# enable mtp default
BOARD_USB_ALLOW_DEFAULT_MTP := true
BUILD_BOX_WITH_GOOGLE_MARKET := true

# debug-logs
MIXIN_DEBUG_LOGS := false

#for drm widevine
BUILD_WITH_WIDEVINE := true

PRODUCT_PACKAGES += \
    SoundRecorder

# Get the long list of APNs
PRODUCT_COPY_FILES += vendor/rockchip/common/phone/etc/apns-full-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES += vendor/rockchip/common/phone/etc/spn-conf.xml:system/etc/spn-conf.xml
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.version = 1.0.0 \
    ro.product.ota.host = www.rockchip.com:2300 \
    ro.sf.lcd_density=280 \
    vendor.hwc.device.primary=HDMI-A
