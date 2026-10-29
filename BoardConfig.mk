#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_SUPER_PARTITION_SIZE := 16940199936

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8450-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/wly

# Assert
# TARGET_OTA_ASSERT_DEVICE := OP591BL1,OP594DL1

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS += CONFIG_SALAMI_DTB=y

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/properties/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/oneplus/salami/BoardConfigVendor.mk
