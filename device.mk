#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Alert slider
PRODUCT_PACKAGES += \
    KeyHandler \
    tri-state-key-calibrate

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/backend_conf.xml:$(TARGET_COPY_OUT_ODM)/etc/backend_conf.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_waipio_mtp.xml:$(TARGET_COPY_OUT_ODM)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/mixer_paths_waipio_mtp.xml \
    $(LOCAL_PATH)/configs/audio/resourcemanager_waipio_mtp.xml:$(TARGET_COPY_OUT_ODM)/etc/resourcemanager.xml \
    $(LOCAL_PATH)/configs/audio/resourcemanager_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/resourcemanager_waipio_mtp.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_ODM)/etc/usecaseKvManager.xml \
    $(LOCAL_PATH)/configs/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 3216
TARGET_SCREEN_WIDTH := 1440

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/displayconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946358012694402.xml

$(call soong_config_set,qtidisplay,pxlw_vendor_namespace,vendor/oneplus/wly)
$(call soong_config_set_bool,qtidisplay,pxlw_hw_iris7,true)

# Fingerprint
$(call soong_config_set,surfaceflinger,udfps_lib,//hardware/oplus:libudfps_extension.oplus)
$(call soong_config_set_bool,qtidisplay,oplus_udfps,true)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    KeyHandlerResTarget \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSettingsResTarget \
    OPlusSystemUIResTarget

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc-service.nxp

# Power
$(call soong_config_set,qtipower,tap_to_wake_node,/proc/touchpanel/double_tap_enable)

# Sensors
PRODUCT_PACKAGES += \
    sensors.oplus

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Touch
$(call soong_config_set,OPLUS_LINEAGE_TOUCH_HAL,INCLUDE_DIR,$(LOCAL_PATH)/touch/include)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator.service.oplus-richtap

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8450-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/wly/wly-vendor.mk)
