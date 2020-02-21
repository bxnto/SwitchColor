#import "SparkColourPickerUtils.h"
#import <UIKit/UIKit.h>

%hook UISwitch

-(void)layoutSubviews {

    %orig;

    NSString* colourString = NULL;
    NSString* colourStringThumb = NULL;

    NSDictionary* preferencesDictionary = [NSDictionary dictionaryWithContentsOfFile: @"/var/mobile/Library/Preferences/com.bxnto.switchprefs.plist"];

    colourString = [preferencesDictionary objectForKey: @"CustomColour"];
    colourStringThumb = [preferencesDictionary objectForKey: @"CustomOffColour"];

    [self setOnTintColor: [SparkColourPickerUtils colourWithString:colourString withFallback: @"#30d158"]];
    [self setThumbTintColor: [SparkColourPickerUtils colourWithString:colourStringThumb withFallback: @"#39393d"]];

}

%end