ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

SUBPROJECTS += prefbundle
TWEAK_NAME = SwitchColors

SwitchColors_FILES = Tweak.x
SwitchColors_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_LIBRARIES += sparkcolourpicker

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk