#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Utils/NSBundle+IGHE.h"

// MARK: - Hebrew Translation Dictionary
// This dictionary maps English UI strings to Hebrew translations.
// Instagram may use internal keys or display strings — we intercept both.

static NSDictionary<NSString *, NSString *> *_hebrewTranslations = nil;

static NSDictionary<NSString *, NSString *> *hebrewTranslations(void) {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hebrewTranslations = @{
            // ═══════════════════════════════════════════
            // Tab Bar
            // ═══════════════════════════════════════════
            @"Home":                        @"בית",
            @"Search":                      @"חיפוש",
            @"Search & Explore":            @"חיפוש וגילוי",
            @"Explore":                     @"גילוי",
            @"Reels":                       @"ריילס",
            @"Shop":                        @"חנות",
            @"Shopping":                    @"קניות",
            @"Profile":                     @"פרופיל",
            @"Activity":                    @"פעילות",
            @"Create":                      @"יצירה",
            @"Notifications":              @"התראות",

            // ═══════════════════════════════════════════
            // Profile
            // ═══════════════════════════════════════════
            @"Edit Profile":                @"ערוך פרופיל",
            @"Edit profile":                @"ערוך פרופיל",
            @"Share Profile":               @"שתף פרופיל",
            @"Share profile":               @"שתף פרופיל",
            @"Posts":                       @"פוסטים",
            @"Followers":                   @"עוקבים",
            @"Following":                   @"עוקב",
            @"Bio":                         @"ביוגרפיה",
            @"Website":                     @"אתר",
            @"posts":                       @"פוסטים",
            @"followers":                   @"עוקבים",
            @"following":                   @"עוקב",
            @"Threads":                     @"ת'רדס",

            // ═══════════════════════════════════════════
            // Follow / Interaction Buttons
            // ═══════════════════════════════════════════
            @"Follow":                      @"עקוב",
            @"Follow Back":                 @"עקוב בחזרה",
            @"Unfollow":                    @"הפסק לעקוב",
            @"Requested":                   @"בקשה נשלחה",
            @"Message":                     @"הודעה",
            @"Contact":                     @"צור קשר",
            @"Call":                        @"שיחה",
            @"Email":                       @"אימייל",
            @"Mention":                     @"אזכור",
            @"Block":                       @"חסום",
            @"Unblock":                     @"בטל חסימה",
            @"Restrict":                    @"הגבל",
            @"Unrestrict":                  @"בטל הגבלה",
            @"Mute":                        @"השתק",
            @"Unmute":                      @"בטל השתקה",
            @"Report":                      @"דווח",
            @"Report...":                   @"דווח...",
            @"Hide":                        @"הסתר",

            // ═══════════════════════════════════════════
            // Post Interactions
            // ═══════════════════════════════════════════
            @"Like":                        @"לייק",
            @"Unlike":                      @"בטל לייק",
            @"Comment":                     @"תגובה",
            @"Comments":                    @"תגובות",
            @"Share":                       @"שתף",
            @"Save":                        @"שמור",
            @"Saved":                       @"שמורים",
            @"Unsave":                      @"בטל שמירה",
            @"Send":                        @"שלח",
            @"Reply":                       @"הגב",
            @"Replies":                     @"תגובות",
            @"View all %@ comments":        @"צפה בכל %@ התגובות",
            @"View all comments":           @"צפה בכל התגובות",
            @"Add a comment...":            @"הוסף תגובה...",
            @"Add a comment…":              @"הוסף תגובה…",
            @"likes":                       @"לייקים",
            @"like":                        @"לייק",
            @"Liked by %@ and others":      @"לייק ע\"י %@ ואחרים",

            // ═══════════════════════════════════════════
            // Create / Post
            // ═══════════════════════════════════════════
            @"New Post":                    @"פוסט חדש",
            @"New post":                    @"פוסט חדש",
            @"Post":                        @"פוסט",
            @"Story":                       @"סטורי",
            @"Reel":                        @"ריל",
            @"Live":                        @"שידור חי",
            @"Caption":                     @"כיתוב",
            @"Write a caption...":          @"כתוב כיתוב...",
            @"Write a caption…":            @"כתוב כיתוב…",
            @"Tag People":                  @"תייג אנשים",
            @"Tag people":                  @"תייג אנשים",
            @"Add Location":                @"הוסף מיקום",
            @"Add location":                @"הוסף מיקום",
            @"Add Music":                   @"הוסף מוזיקה",
            @"Add music":                   @"הוסף מוזיקה",
            @"Also post to":                @"פרסם גם ב",
            @"Share to":                    @"שתף ב",
            @"Gallery":                     @"גלריה",
            @"Photo":                       @"תמונה",
            @"Video":                       @"וידאו",
            @"Camera":                      @"מצלמה",
            @"Next":                        @"הבא",
            @"Filter":                      @"פילטר",
            @"Filters":                     @"פילטרים",
            @"Edit":                        @"ערוך",
            @"Crop":                        @"חיתוך",
            @"Adjust":                      @"כוונון",
            @"Discard":                     @"מחק טיוטה",
            @"Draft":                       @"טיוטה",
            @"Drafts":                      @"טיוטות",

            // ═══════════════════════════════════════════
            // Stories
            // ═══════════════════════════════════════════
            @"Your Story":                  @"הסטורי שלך",
            @"Your story":                  @"הסטורי שלך",
            @"Add to Your Story":           @"הוסף לסטורי שלך",
            @"Add to your story":           @"הוסף לסטורי שלך",
            @"Close Friends":               @"חברים קרובים",
            @"close friends":               @"חברים קרובים",
            @"Seen by %@":                  @"נצפה ע\"י %@",
            @"Seen by":                     @"נצפה ע\"י",
            @"Send to":                     @"שלח ל",
            @"Highlights":                  @"היילייטס",
            @"Add to Highlights":           @"הוסף להיילייטס",

            // ═══════════════════════════════════════════
            // Direct Messages (DM)
            // ═══════════════════════════════════════════
            @"Direct":                      @"הודעות",
            @"Messages":                    @"הודעות",
            @"Send Message":                @"שלח הודעה",
            @"Send message":                @"שלח הודעה",
            @"New Message":                 @"הודעה חדשה",
            @"New message":                 @"הודעה חדשה",
            @"Type a message...":           @"הקלד הודעה...",
            @"Type a message…":             @"הקלד הודעה…",
            @"Unsend":                      @"בטל שליחה",
            @"Seen":                        @"נקרא",
            @"Delivered":                   @"נשלח",
            @"Active now":                  @"פעיל עכשיו",
            @"Active %@ ago":              @"פעיל לפני %@",
            @"Online":                      @"מחובר",
            @"Requests":                    @"בקשות",
            @"Message Requests":            @"בקשות הודעה",

            // ═══════════════════════════════════════════
            // Settings & Navigation
            // ═══════════════════════════════════════════
            @"Settings":                    @"הגדרות",
            @"Settings and privacy":        @"הגדרות ופרטיות",
            @"Account":                     @"חשבון",
            @"Privacy":                     @"פרטיות",
            @"Security":                    @"אבטחה",
            @"Ads":                         @"פרסומות",
            @"Help":                        @"עזרה",
            @"About":                       @"אודות",
            @"Theme":                       @"ערכת נושא",
            @"Language":                    @"שפה",
            @"Archive":                     @"ארכיון",
            @"Your Activity":               @"הפעילות שלך",
            @"Your activity":               @"הפעילות שלך",
            @"QR Code":                     @"קוד QR",
            @"Favorites":                   @"מועדפים",
            @"Discover People":             @"גלה אנשים",
            @"Discover people":             @"גלה אנשים",
            @"Log Out":                     @"התנתק",
            @"Log out":                     @"התנתק",
            @"Switch Accounts":             @"החלף חשבון",
            @"Add Account":                 @"הוסף חשבון",
            @"Add account":                 @"הוסף חשבון",

            // ═══════════════════════════════════════════
            // General / Common
            // ═══════════════════════════════════════════
            @"Cancel":                      @"ביטול",
            @"Done":                        @"סיום",
            @"OK":                          @"אישור",
            @"Ok":                          @"אישור",
            @"Yes":                         @"כן",
            @"No":                          @"לא",
            @"Delete":                      @"מחק",
            @"Remove":                      @"הסר",
            @"Close":                       @"סגור",
            @"Back":                        @"חזור",
            @"Confirm":                     @"אשר",
            @"Continue":                    @"המשך",
            @"Skip":                        @"דלג",
            @"Retry":                       @"נסה שוב",
            @"Try Again":                   @"נסה שוב",
            @"Try again":                   @"נסה שוב",
            @"Loading...":                  @"טוען...",
            @"Loading…":                    @"טוען…",
            @"Error":                       @"שגיאה",
            @"Learn More":                  @"למד עוד",
            @"Learn more":                  @"למד עוד",
            @"See More":                    @"ראה עוד",
            @"See more":                    @"ראה עוד",
            @"See All":                     @"ראה הכל",
            @"See all":                     @"ראה הכל",
            @"Copy":                        @"העתק",
            @"Copy Link":                   @"העתק קישור",
            @"Copy link":                   @"העתק קישור",
            @"Paste":                       @"הדבק",
            @"Turn On":                     @"הפעל",
            @"Turn Off":                    @"כבה",
            @"Not Now":                     @"לא עכשיו",
            @"Not now":                     @"לא עכשיו",

            // ═══════════════════════════════════════════
            // Time
            // ═══════════════════════════════════════════
            @"Just now":                    @"עכשיו",
            @"now":                         @"עכשיו",
            @"Today":                       @"היום",
            @"Yesterday":                   @"אתמול",
            @"This Week":                   @"השבוע",
            @"This week":                   @"השבוע",
            @"Earlier":                     @"מוקדם יותר",

            // ═══════════════════════════════════════════
            // Notifications
            // ═══════════════════════════════════════════
            @"started following you":       @"התחיל לעקוב אחריך",
            @"liked your post":             @"עשה לייק לפוסט שלך",
            @"liked your photo":            @"עשה לייק לתמונה שלך",
            @"commented on your post":      @"הגיב על הפוסט שלך",
            @"mentioned you in a comment":  @"הזכיר אותך בתגובה",
            @"tagged you in a post":        @"תייג אותך בפוסט",

            // ═══════════════════════════════════════════
            // Explore / Search
            // ═══════════════════════════════════════════
            @"Top":                         @"מובילים",
            @"Accounts":                    @"חשבונות",
            @"Tags":                        @"תגיות",
            @"Places":                      @"מיקומים",
            @"Recent":                      @"אחרונים",
            @"Suggested":                   @"מומלצים",
            @"Suggested for you":           @"מומלץ בשבילך",
            @"See Suggested Content":       @"ראה תוכן מומלץ",

            // ═══════════════════════════════════════════
            // Login / Account
            // ═══════════════════════════════════════════
            @"Log In":                      @"התחבר",
            @"Log in":                      @"התחבר",
            @"Sign Up":                     @"הירשם",
            @"Sign up":                     @"הירשם",
            @"Forgot password?":            @"שכחת סיסמה?",
            @"Username":                    @"שם משתמש",
            @"Password":                    @"סיסמה",
            @"Email address":               @"כתובת אימייל",
            @"Phone number":                @"מספר טלפון",
            @"Full Name":                   @"שם מלא",
            @"Full name":                   @"שם מלא",

            // ═══════════════════════════════════════════
            // Accessibility / Misc
            // ═══════════════════════════════════════════
            @"Feed":                        @"פיד",
            @"Refresh":                     @"רענן",
            @"More":                        @"עוד",
            @"More options":                @"אפשרויות נוספות",
            @"Turn on Notifications":       @"הפעל התראות",
            @"Turn on notifications":       @"הפעל התראות",
            @"Allow":                       @"אפשר",
            @"Don't Allow":                 @"אל תאפשר",
            @"Pinned":                      @"מוצמד",
            @"Pin":                         @"הצמד",
            @"Unpin":                       @"בטל הצמדה",
        };
    });
    return _hebrewTranslations;
}

// MARK: - NSBundle Hook for Hebrew Localization
// This is the ONLY hook we use - it's safe because we check the bundle identifier first.

%hook NSBundle

- (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName {
    NSString *original = %orig;

    // Safety: ignore empty/nil keys
    if (!key || key.length == 0) {
        return original;
    }

    // Only intercept strings from the Instagram main bundle - this is critical!
    BOOL isInstagramBundle = [self.bundleIdentifier isEqualToString:@"com.burbn.instagram"] ||
                             [self.bundlePath containsString:@"Instagram.app"];

    if (!isInstagramBundle) {
        return original;
    }

    // Strategy 1: Try direct key match in our Hebrew dictionary
    NSString *hebrewByKey = hebrewTranslations()[key];
    if (hebrewByKey) {
        return hebrewByKey;
    }

    // Strategy 2: Try matching the resolved English value
    // This catches cases where Instagram uses internal keys (e.g. "ig_home_label")
    // but the resolved value is English text we know (e.g. "Home")
    if (original && original.length > 0 && ![original isEqualToString:key]) {
        NSString *hebrewByValue = hebrewTranslations()[original];
        if (hebrewByValue) {
            return hebrewByValue;
        }
    }

    return original;
}

%end
