#
# Copyright (C) 2017-2018 The LineageOS Project
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

DEVICE_PATH := device/lge/us997

# inherit from common g6
-include device/lge/g6-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := g6,lucye,us997

# Partitions
BOARD_CACHEIMAGE_PARTITION_SIZE := 2172649472

# Kernel

# if Melina config exists, use it, otherwise fall back to lineageos config, and then finally fall back to stock config
ifneq ($(wildcard $(TARGET_KERNEL_SOURCE)/arch/$(TARGET_KERNEL_ARCH)/configs/melina_common_subconfig),)
  TARGET_KERNEL_CONFIG := melinareborn_$(PRODUCT_DEVICE)_defconfig
else
  ifneq ($(wildcard $(TARGET_KERNEL_SOURCE)/arch/$(TARGET_KERNEL_ARCH)/configs/lineageos_us997_defconfig),)
    TARGET_KERNEL_CONFIG := lineageos_$(PRODUCT_DEVICE)_defconfig
  else
    # todo: device checking for possible future lucye merge
    TARGET_KERNEL_CONFIG := lucye_nao_us-perf_defconfig
  endif
endif

# inherit from the proprietary version
-include vendor/lge/us997/BoardConfigVendor.mk
