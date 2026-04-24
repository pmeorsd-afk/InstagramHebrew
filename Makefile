ifeq ($(ROOTLESS),1)
THEOS_PACKAGE_SCHEME = rootless
else ifeq ($(ROOTHIDE),1)
THEOS_PACKAGE_SCHEME = roothide
endif

ARCHS = arm64
INSTALL_TARGET_PROCESSES = Instagram
TARGET = iphone:clang:16.5:14.0
PACKAGE_VERSION = 1.0.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = InstagramHebrew
$(TWEAK_NAME)_FILES = $(filter-out Source/Sideloading.x, $(wildcard Source/*.x))
$(TWEAK_NAME)_FILES += $(shell find Source -name '*.m')
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -DTWEAK_VERSION=$(PACKAGE_VERSION)
$(TWEAK_NAME)_FRAMEWORKS = UIKit Foundation Security
ifeq ($(SIDELOADING),1)
$(TWEAK_NAME)_FILES += Source/Sideloading.x
endif

include $(THEOS_MAKE_PATH)/tweak.mk
