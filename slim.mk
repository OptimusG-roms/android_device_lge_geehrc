# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/slim/config/common.mk)

# Inherit led flash settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/geehrc/device.mk)

# Inherit from common hardware-specific part of the product configuration
$(call inherit-product, device/lge/gee-common/gee-common.mk)

# Release name
PRODUCT_RELEASE_NAME := geehrc

PRODUCT_NAME := slim_geehrc
PRODUCT_DEVICE := geehrc
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

# Kernel inline build
TARGET_KERNEL_CONFIG := geehrc_defconfig
TARGET_VARIANT_CONFIG := geehrc_defconfig
TARGET_SELINUX_CONFIG := geehrc_defconfig

$(call inherit-product, vendor/lge/gee/gee-vendor.mk)
