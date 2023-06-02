TARGET := iphone:clang:latest:7.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WUBypass

WUBypass_FILES = Tweak.x
WUBypass_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
