# Release name
PRODUCT_RELEASE_NAME := us997

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/us997/omni_us997.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := us997
PRODUCT_NAME := us997
PRODUCT_BRAND := lge
PRODUCT_MODEL := us997
PRODUCT_MANUFACTURER := lge
