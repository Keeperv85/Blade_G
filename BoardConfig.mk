# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from the proprietary version
-include vendor/zte/blade_g/BoardConfigVendor.mk

USE_CAMERA_STUB := true
BOARD_VENDOR := zte

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS   += -DQCOM_NO_SECURE_PLAYBACK -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS   += -DQCOM_HARDWARE -DNO_UPDATE_PREVIEW

# Arch related defines and optimizations
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_HAVE_TSLIB := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := 60a3730
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom vmalloc=200M
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8909824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8909824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1004535296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1291845120
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel building
TARGET_PREBUILT_KERNEL := device/zte/blade_g/kernel

# Vold
BOARD_VOLD_MAX_PARTITIONS := 36
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/blade_g/bluetooth

#Use CAF headers
TARGET_SPECIFIC_HEADER_PATH := device/zte/blade_g/include

# OpenGL drivers config file path
BOARD_EGL_CFG := device/zte/blade_g/config/egl.cfg

# Wifi related definitions
BOARD_WLAN_DEVICE := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"

# Misc
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := Blade_G
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics & CAF
COMMON_GLOBAL_CFLAGS += -DANCIENT_GL
BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_QCOM_HDMI_OUT := false
TARGET_USES_ION := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_USES_C2D_COMPOSITION := true...
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_USES_GENLOCK := true
TARGET_USES_OVERLAY := true
BOARD_USE_QCOM_LLVM_CLANG_RS := true
TARGET_NO_HW_VSYNC := false

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/blade_g/recovery/graphics.c

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

#Touch
BOARD_USE_LEGACY_TOUCHSCREEN := true

#Audio
BOARD_USES_ALSA_AUDIO := true
