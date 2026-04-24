#import <Foundation/Foundation.h>
#import <rootless.h>
#import "../Utils/NSBundle+IGHE.h"

#define LOC(key) [NSBundle.ighe_defaultBundle localizedStringForKey:key value:nil table:nil]
