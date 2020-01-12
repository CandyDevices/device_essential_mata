# Inherit some common statix stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/candy/config/common_full_phone.mk)
$(call inherit-product, vendor/candy/config/gsm.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)
# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/essential/mata/mata-vendor.mk)

# Device
$(call inherit-product, device/essential/mata/device.mk)

# TWRP
ifeq ($(WITH_TWRP),true)
$(call inherit-product, device/essential/mata/twrp/twrp.mk)
else
TARGET_RECOVERY_FSTAB := device/essential/mata/rootdir/etc/fstab.mata
endif

# Device identifiers
PRODUCT_DEVICE := mata
PRODUCT_NAME := candy_mata
PRODUCT_BRAND := essential
PRODUCT_MODEL := PH-1
PRODUCT_MANUFACTURER := Essential Products
PRODUCT_RELEASE_NAME := mata

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=mata \
        PRIVATE_BUILD_DESC="mata-user 10 QQ1A.200105.032 540 release-keys"

BUILD_FINGERPRINT := essential/mata/mata:10/QQ1A.200105.032/540:user/release-keys
