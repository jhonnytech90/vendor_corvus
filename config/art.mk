# Don't build debug for host or device
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
ART_BUILD_TARGET_NDEBUG := true
ART_BUILD_TARGET_DEBUG := false
ART_BUILD_HOST_NDEBUG := true
ART_BUILD_HOST_DEBUG := false
USE_DEX2OAT_DEBUG := false

# Dex pre-opt
PRODUCT_DEX_PREOPT_DEFAULT_COMPILER_FILTER := everything

# Speed apps
PRODUCT_DEXPREOPT_SPEED_APPS += \
  SystemUI \
  Settings \
  CustomLauncher

# GApps
ifeq ($(USE_GAPPS),true)
DONT_DEXPREOPT_PREBUILTS := true
endif
