# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a32x device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit from a32x device tree vendorprops
$(call inherit-product, $(LOCAL_PATH)/vendor_prop.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a32x
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a32x
PRODUCT_MODEL := SM-A326B

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a32x
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a32xxx-user 11 RP1A.200720.012 A326BXXU1AUCA release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a32xxx/a32x:11/RP1A.200720.012/A326BXXU1AUCA:user/release-keys
