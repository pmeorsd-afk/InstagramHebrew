#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <dlfcn.h>
#import <rootless.h>

// Sideloading support for Instagram Hebrew
// Required when injecting the tweak into a decrypted IPA (non-jailbreak)

#define IG_BUNDLE_ID @"com.burbn.instagram"
#define IG_NAME @"Instagram"

static NSString *accessGroupID() {
    NSDictionary *query = [NSDictionary dictionaryWithObjectsAndKeys:
                           (__bridge NSString *)kSecClassGenericPassword, (__bridge NSString *)kSecClass,
                           @"bundleSeedID", kSecAttrAccount,
                           @"", kSecAttrService,
                           (id)kCFBooleanTrue, kSecReturnAttributes,
                           nil];
    CFDictionaryRef result = nil;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
    if (status == errSecItemNotFound) {
        status = SecItemAdd((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
        if (status != errSecSuccess) {
            return nil;
        }
    }
    NSString *accessGroup = [(__bridge NSDictionary *)result objectForKey:(__bridge NSString *)kSecAttrAccessGroup];
    return accessGroup;
}

// Fix Keychain access for sideloaded apps
%hook GULKeychainStorage
- (void)getObjectForKey:(id)key objectClass:(Class)objectClass accessGroup:(id)accessGroup completionHandler:(id)handler {
    accessGroup = accessGroupID();
    %orig;
}
- (void)setObject:(id)object forKey:(id)key accessGroup:(id)accessGroup completionHandler:(id)handler {
    accessGroup = accessGroupID();
    %orig;
}
- (void)removeObjectForKey:(id)key accessGroup:(id)accessGroup completionHandler:(id)handler {
    accessGroup = accessGroupID();
    %orig;
}
- (void)getObjectFromKeychainForKey:(id)key objectClass:(Class)objectClass accessGroup:(id)accessGroup completionHandler:(id)handler {
    accessGroup = accessGroupID();
    %orig;
}
- (id)keychainQueryWithKey:(id)key accessGroup:(id)accessGroup {
    accessGroup = accessGroupID();
    return %orig(key, accessGroup);
}
%end

// Fix container URL for sideloaded apps
%hook NSFileManager
- (NSURL *)containerURLForSecurityApplicationGroupIdentifier:(NSString *)groupIdentifier {
    if (groupIdentifier != nil) {
        NSArray *paths = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
        NSURL *documentsURL = [paths lastObject];
        return [documentsURL URLByAppendingPathComponent:@"AppGroup"];
    }
    return %orig(groupIdentifier);
}
%end

// Pretend we are the original app
%hook NSBundle
- (NSString *)bundleIdentifier {
    NSArray *address = [NSThread callStackReturnAddresses];
    Dl_info info = {0};
    if (dladdr((void *)[address[2] longLongValue], &info) == 0)
        return %orig;
    NSString *path = [NSString stringWithUTF8String:info.dli_fname];
    if ([path hasPrefix:NSBundle.mainBundle.bundlePath])
        return IG_BUNDLE_ID;
    return %orig;
}
- (id)objectForInfoDictionaryKey:(NSString *)key {
    if ([key isEqualToString:@"CFBundleIdentifier"])
        return IG_BUNDLE_ID;
    if ([key isEqualToString:@"CFBundleDisplayName"])
        return IG_NAME;
    if ([key isEqualToString:@"CFBundleName"])
        return IG_NAME;
    return %orig;
}
%end

// Fix App Store checks
%hook GULAppEnvironmentUtil
- (BOOL)isFromAppStore { return YES; }
%end

// Fix Firebase
%hook FIROptions
- (id)bundleID { return IG_BUNDLE_ID; }
%end

%hook FIRApp
- (id)actualBundleID { return IG_BUNDLE_ID; }
%end
