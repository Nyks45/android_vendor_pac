# Check for target product
ifeq (pac_jfltecsp,$(TARGET_PRODUCT))

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/1080x1920/bootanimation.zip:system/media/bootanimation.zip

# Copy QuickBoot.apk
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/common/apk/QuickBoot.apk:system/app/QuickBoot/QuickBoot.apk

# Include PAC common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/jfltecsp/cm.mk)

PRODUCT_NAME := pac_jfltecsp

endif