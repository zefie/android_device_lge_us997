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

ifneq ($(wildcard vendor/lineage/config/common_full_phone.mk),)
  TARGET_OS_VARIANT := lineage
endif

ifneq ($(wildcard vendor/havoc/config/common_full_phone.mk),)
  TARGET_OS_VARIANT := havoc
endif

ifneq ($(TARGET_OS_VARIANT),)
  PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/$(TARGET_OS_VARIANT)_us997.mk

  COMMON_LUNCH_CHOICES := \
      $(TARGET_OS_VARIANT)_us997-user \
      $(TARGET_OS_VARIANT)_us997-userdebug \
      $(TARGET_OS_VARIANT)_us997-eng
endif
