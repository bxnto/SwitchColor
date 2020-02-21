#include "KSWRootListController.h"
#import <CepheiPrefs/HBAppearanceSettings.h>

@implementation KSWRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

@end
