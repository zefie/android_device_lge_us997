$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product-if-exists, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/us997/us997-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/us997/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/us997/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Release name
PRODUCT_RELEASE_NAME := us997

PRODUCT_DEVICE := us997
PRODUCT_NAME := omni_us997
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-US997
PRODUCT_MANUFACTURER := LGE

