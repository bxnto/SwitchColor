ARCHS = arm64 arm64e
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = prefbundle

prefbundle_FILES = KSWRootListController.m
prefbundle_INSTALL_PATH = /Library/PreferenceBundles
prefbundle_FRAMEWORKS = UIKit
prefbundle_PRIVATE_FRAMEWORKS = Preferences
prefbundle_CFLAGS = -fobjc-arc
prefbundle_LIBRARIES = sparkcolourpicker
prefbundle_EXTRA_FRAMEWORKS += Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/prefbundle.plist$(ECHO_END)
