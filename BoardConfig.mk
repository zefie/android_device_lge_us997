#
# Copyright (C) 2017 The Android Open Source Project
#
# Copyright (C) 2019-2020 OrangeFox Recovery Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

DEVICE_PATH := device/lge/us997

# inherit from common g6
-include device/lge/g6-common/BoardConfigCommon.mk

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

# Partitions
BOARD_CACHEIMAGE_PARTITION_SIZE := 2172649472

# Recovery
TARGET_OTA_ASSERT_DEVICE := g6,lucye,us997
