TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DisableRemoteControl
DisableRemoteControl_FRAMEWORKS = AudioToolbox MediaPlayer

DisableRemoteControl_FILES = Tweak.x
DisableRemoteControl_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
