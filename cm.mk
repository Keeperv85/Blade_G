# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/blade_g/overlay

# Release name
PRODUCT_RELEASE_NAME := Blade G
PRODUCT_VERSION_DEVICE_SPECIFIC := -Blade_G

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit device configuration
$(call inherit-product, device/zte/blade_g/blade_g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_blade_g
PRODUCT_BRAND := zte_europe
PRODUCT_DEVICE := blade_g
PRODUCT_MODEL := Blade G
PRODUCT_MANUFACTURER := ZTE
