# Inherit some common Candy stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/candy/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor blobs
$(call inherit-product, vendor/essential/mata/mata-vendor.mk)

# Device
$(call inherit-product, device/essential/mata/device.mk)

# Device identifiers
PRODUCT_DEVICE := mata
PRODUCT_NAME := candy_mata
PRODUCT_BRAND := essential
PRODUCT_MODEL := PH-1
PRODUCT_MANUFACTURER := Essential Products
PRODUCT_RELEASE_NAME := mata

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=mata \
        PRIVATE_BUILD_DESC="mata-user 9 PQ1A.190105.024 462 release-keys"

BUILD_FINGERPRINT := essential/mata/mata:9/PQ1A.190105.024/462:user/release-keys
