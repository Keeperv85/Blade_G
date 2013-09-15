# Copyright (C) 2011 The Android Open Source Project
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

# proprietary side of the device
# Inherit from those products. Most specific first

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/zte/blade_g/blade_g-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/blade_g/overlay

LOCAL_PATH := device/zte/blade_g
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Video decoding
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libstagefrighthw \
    libOmxCore \
    libI420colorconvert
    
# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer
    
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    audio_policy.conf \
    libaudioutils \
    audio.usb.default

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    lights.msm7x27a \
    sensors.msm7x27a \
    gps.msm7x27a \
    librpc \
    power.msm7x27a
    
# Camera
PRODUCT_PACKAGES += \
    camera.default \
    libsurfaceflinger_client

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    dexpreopt

# Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    device/zte/blade_g/ramdisk/init:root/init \
    device/zte/blade_g/ramdisk/fstab.msm7627a:root/fstab.msm7627a \
    device/zte/blade_g/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/zte/blade_g/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/zte/blade_g/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/zte/blade_g/ramdisk/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
    device/zte/blade_g/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/zte/blade_g/ramdisk/init.qcom.unicorn-dpi.sh:root/init.qcom.unicorn-dpi.sh \
    device/zte/blade_g/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/zte/blade_g/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/zte/blade_g/ramdisk/init.target.rc:root/init.target.rc \
    device/zte/blade_g/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

# Keychars & keylayout
PRODUCT_COPY_FILES += \
    device/zte/blade_g/prebuilt/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/zte/blade_g/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/blade_g/prebuilt/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/zte/blade_g/prebuilt/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/zte/blade_g/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/zte/blade_g/prebuilt/usr/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/zte/blade_g/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \

#Firmware
PRODUCT_COPY_FILES += \
    device/zte/blade_g/prebuilt/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/zte/blade_g/prebuilt/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

#Wlan1
PRODUCT_COPY_FILES += \
    device/zte/blade_g/prebuilt/firmware/wlan/volans/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat \
    device/zte/blade_g/prebuilt/firmware/wlan/volans/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini \
    device/zte/blade_g/prebuilt/firmware/wlan/volans/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin

#Wlan2
PRODUCT_COPY_FILES += \
    device/zte/blade_g/prebuilt/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \
    device/zte/blade_g/prebuilt/firmware/ath6k/AR6003/hw2.1.1/athwlan.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athwlan.bin \
    device/zte/blade_g/prebuilt/firmware/ath6k/AR6003/hw2.1.1/fw-4.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-4.bin \
    device/zte/blade_g/prebuilt/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin \
    device/zte/blade_g/prebuilt/firmware/ath6k/AR6003/hw2.1.1/softmac:system/etc/firmware/ath6k/AR6003/hw2.1.1/softmac \
    device/zte/blade_g/prebuilt/firmware/ath6k/AR6003/hw2.1.1/utf.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin

#RIL
PRODUCT_COPY_FILES += \
    device/zte/blade_g/prebuilt/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml:

# Audio
PRODUCT_COPY_FILES += \
    device/zte/blade_g/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/zte/blade_g/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Media
PRODUCT_COPY_FILES += \
    device/zte/blade_g/config/media_profiles.xml:system/etc/media_profiles.xml \
    device/zte/blade_g/config/media_codecs.xml:system/etc/media_codecs.xml

# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.debuggable=1

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Vold 
PRODUCT_COPY_FILES += \
    device/zte/blade_g/config/vold.fstab:system/etc/vold.fstab

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Inherit the proprietary counterpart
$(call inherit-product-if-exists, vendor/zte/blade_g/blade_g-vendor.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
