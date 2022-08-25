include device/rockchip/rk3399/BoardConfig.mk

PRODUCT_PACKAGE_OVERLAYS :=

# Re-enable emulator for 32-bit
BUILD_EMULATOR := false

TARGET_BOARD_PLATFORM_PRODUCT := box

DEVICE_MANIFEST_FILE := device/rockchip/$(TARGET_BOARD_PLATFORM)/rk3399_chang/manifest.xml
