## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/callisto/full_callisto.mk)

# Inherit some common CM stuff.
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240
$(call inherit-product, vendor/cm/config/mini.mk)

# Overrides
PRODUCT_NAME := cm_callisto
PRODUCT_DEVICE := callisto
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I5510
PRODUCT_MANUFACTURER := Samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_RELEASE_NAME := Galaxy551
PRODUCT_VERSION_DEVICE_SPECIFIC := -GT-I5510

# Bootanimation
TARGET_BOOTANIMATION_NAME := 240
