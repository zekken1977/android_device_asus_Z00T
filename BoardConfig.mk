#
# Copyright (C) 2016 The CyanogenMod Project
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

# inherit from common msm8916-common
-include device/asus/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/Z00T

# Assert
TARGET_OTA_ASSERT_DEVICE := Z00T

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
TARGET_KERNEL_CONFIG := Z00T_defconfig

# Ext. Amp Enabled
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true
AUDIO_FEATURE_ENABLED_RECORD_PLAY_CONCURRENCY := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Shipping API level (for CTS backward compatibility)
PRODUCT_SHIPPING_API_LEVEL := 21

# inherit from the proprietary version
-include vendor/asus/Z00T/BoardConfigVendor.mk
