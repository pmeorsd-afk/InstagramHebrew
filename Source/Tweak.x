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
            @"Complete your profile":       @"השלם את הפרופיל שלך",
            @"Add a bio":                   @"הוסף ביוגרפיה",
            @"Find people to follow":       @"מצא אנשים לעקוב אחריהם",
            @"Add Profile Photo":           @"הוסף תמונת פרופיל",
            @"No posts yet":                @"אין פוסטים עדיין",

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
            @"Connect":                     @"התחבר",
            @"Connect contacts":            @"חבר אנשי קשר",
            @"Find people you know":        @"מצא אנשים שאתה מכיר",
            @"Popular":                     @"פופולרי",

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
            @"Settings and activity":       @"הגדרות ופעילות",
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
            @"Account privacy":             @"פרטיות חשבון",
            @"Accounts Center":             @"מרכז חשבונות",
            @"Time management":             @"ניהול זמן",
            @"Instagram for iPad":          @"אינסטגרם לאייפד",
            @"Who can see your content":    @"מי יכול לראות את התוכן שלך",
            @"How you use Instagram":       @"איך אתה משתמש באינסטגרם",
            @"Your account":                @"החשבון שלך",
            @"Crossposting":                @"פרסום צולב",
            @"Blocked":                     @"חסומים",
            @"Hide story and live":         @"הסתר סטורי ושידור חי",

            // ═══════════════════════════════════════════
            // Accounts Center (Meta)
            // ═══════════════════════════════════════════
            @"Profiles and personal details":   @"פרופילים ופרטים אישיים",
            @"1 profile":                       @"פרופיל 1",
            @"Password and security":           @"סיסמה ואבטחה",
            @"Connected experiences":           @"חוויות מחוברות",
            @"Your information and permissions":@"המידע וההרשאות שלך",
            @"Ad preferences":                  @"העדפות פרסומות",
            @"Meta Pay":                        @"Meta Pay",
            @"Subscriptions":                   @"מנויים",
            @"Manage accounts":                 @"ניהול חשבונות",
            @"More from Meta":                  @"עוד מ-Meta",
            @"Meta Verified":                   @"Meta מאומת",
            @"AI Glasses":                      @"משקפי AI",
            @"Manage your connected experiences and account settings across Meta technologies like Facebook, Instagram and Meta Horizon.": @"נהל את החוויות המחוברות והגדרות החשבון שלך במוצרי Meta כמו פייסבוק, אינסטגרם ו-Meta Horizon.",

            // ═══════════════════════════════════════════
            // Password and Security
            // ═══════════════════════════════════════════
            @"Login & recovery":                @"כניסה ושחזור",
            @"Manage your passwords, login preferences and recovery methods.": @"נהל את הסיסמאות, העדפות הכניסה ושיטות השחזור שלך.",
            @"Change password":                 @"שנה סיסמה",
            @"Two-factor authentication":       @"אימות דו-שלבי",
            @"Verification selfie":             @"סלפי לאימות",
            @"Saved login":                     @"כניסה שמורה",
            @"Security checks":                 @"בדיקות אבטחה",
            @"Review security issues by running checks across apps, devices and emails sent.": @"בדוק בעיות אבטחה על ידי הפעלת בדיקות על אפליקציות, מכשירים ואימיילים שנשלחו.",
            @"Where you're logged in":          @"איפה אתה מחובר",
            @"Recent emails":                   @"אימיילים אחרונים",
            @"Security Checkup":                @"בדיקת אבטחה",

            // ═══════════════════════════════════════════
            // Change Password Screen
            // ═══════════════════════════════════════════
            @"Choose an account to make changes.":  @"בחר חשבון לביצוע שינויים.",
            @"Current password":                @"סיסמה נוכחית",
            @"New password":                    @"סיסמה חדשה",
            @"Re-type new password":            @"הקלד שוב את הסיסמה החדשה",
            @"Forgot your password?":           @"שכחת את הסיסמה?",
            @"Log out of other devices. Choose this if someone else used your account.": @"התנתק ממכשירים אחרים. בחר זאת אם מישהו אחר השתמש בחשבון שלך.",

            // ═══════════════════════════════════════════
            // Two-Factor Authentication Setup
            // ═══════════════════════════════════════════
            @"Choose an account to set up two-factor authentication.": @"בחר חשבון להגדרת אימות דו-שלבי.",
            @"Help protect your account":       @"עזור להגן על החשבון שלך",
            @"Choose how to confirm it's you":  @"בחר כיצד לאשר שזה אתה",
            @"Authentication app":              @"אפליקציית אימות",
            @"Get a code from an app, such as Duo Mobile or Google Authenticator.": @"קבל קוד מאפליקציה כמו Duo Mobile או Google Authenticator.",
            @"Recommended":                     @"מומלץ",
            @"SMS or WhatsApp":                 @"SMS או WhatsApp",
            @"We'll send you a code.":          @"נשלח לך קוד.",
            @"About two-factor authentication": @"אודות אימות דו-שלבי",

            // ═══════════════════════════════════════════
            // Two-Factor Auth Setup Instructions
            // ═══════════════════════════════════════════
            @"Instructions for setup":          @"הוראות הגדרה",
            @"1. Download an authentication app": @"1. הורד אפליקציית אימות",
            @"2. Scan this barcode/QR code or copy the key": @"2. סרוק ברקוד/קוד QR זה או העתק את המפתח",
            @"3. Copy and enter 6-digit code":  @"3. העתק והזן קוד בן 6 ספרות",
            @"Copy key":                        @"העתק מפתח",
            @"View barcode/QR code":            @"צפה בברקוד/קוד QR",
            @"Enter code":                      @"הזן קוד",

            // ═══════════════════════════════════════════
            // Enter Confirmation Code
            // ═══════════════════════════════════════════
            @"Enter confirmation code":         @"הזן קוד אימות",
            @"Enter code":                      @"הזן קוד",
            @"Get code via SMS instead":        @"קבל קוד באמצעות SMS במקום",
            @"Enter the 6-digit code":          @"הזן את הקוד בן 6 הספרות",

            // ═══════════════════════════════════════════
            // Check Your Email
            // ═══════════════════════════════════════════
            @"Check your email":                @"בדוק את האימייל שלך",
            @"Code":                            @"קוד",
            @"Try another way":                 @"נסה דרך אחרת",

            // ═══════════════════════════════════════════
            // Verification Selfie
            // ═══════════════════════════════════════════
            @"Save a verification selfie for profile recovery": @"שמור סלפי לאימות לשחזור פרופיל",

            // ═══════════════════════════════════════════
            // Saved Login
            // ═══════════════════════════════════════════
            @"Saved login info":                @"פרטי כניסה שמורים",

            // ═══════════════════════════════════════════
            // Where You're Logged In
            // ═══════════════════════════════════════════
            @"See what devices are used to log in to your accounts.": @"ראה אילו מכשירים משמשים להתחברות לחשבונות שלך.",
            @"We detected unrecognized logins.": @"זיהינו כניסות לא מוכרות.",
            @"Review devices":                  @"בדוק מכשירים",
            @"Select profile":                  @"בחר פרופיל",
            @"+ 3 more":                        @"+ 3 נוספים",
            @"+ 1 more":                        @"+ 1 נוסף",
            @"+ 2 more":                        @"+ 2 נוספים",

            // ═══════════════════════════════════════════
            // Account Login Activity
            // ═══════════════════════════════════════════
            @"Account login activity":          @"פעילות כניסה לחשבון",
            @"You're currently logged in on these devices:": @"אתה מחובר כרגע במכשירים אלה:",
            @"Logins on other devices":         @"כניסות במכשירים אחרים",
            @"This device":                     @"המכשיר הזה",
            @"Select devices to log out":       @"בחר מכשירים להתנתקות",

            // ═══════════════════════════════════════════
            // Security Checkup
            // ═══════════════════════════════════════════
            @"You completed all recommended actions": @"השלמת את כל הפעולות המומלצות",
            @"Contact info":                    @"פרטי קשר",
            @"Reviewed a day ago":              @"נבדק לפני יום",
            @"Reviewed just now":               @"נבדק עכשיו",
            @"Additional security steps":       @"צעדי אבטחה נוספים",

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
            @"Public":                      @"ציבורי",
            @"Private":                     @"פרטי",
            @"Search":                      @"חיפוש",

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
            @"Follow some accounts to get started": @"עקוב אחרי חשבונות להתחלה",

            // ═══════════════════════════════════════════
            // Login / Signup Screen
            // ═══════════════════════════════════════════
            @"Log In":                      @"התחבר",
            @"Log in":                      @"התחבר",
            @"Sign Up":                     @"הירשם",
            @"Sign up":                     @"הירשם",
            @"Sign up with email or phone number": @"הירשם עם אימייל או מספר טלפון",
            @"Create new account":          @"צור חשבון חדש",
            @"Create Account":              @"צור חשבון",
            @"Already have an account? Log in.": @"כבר יש לך חשבון? התחבר.",
            @"Forgot password?":            @"שכחת סיסמה?",
            @"Username":                    @"שם משתמש",
            @"Password":                    @"סיסמה",
            @"Email address":               @"כתובת אימייל",
            @"Phone number":                @"מספר טלפון",
            @"Full Name":                   @"שם מלא",
            @"Full name":                   @"שם מלא",
            @"Date of birth":               @"תאריך לידה",
            @"By signing up, you agree to our": @"בהרשמה, אתה מסכים ל",
            @"Terms":                       @"תנאים",
            @"Privacy Policy":              @"מדיניות פרטיות",
            @"Cookies Policy":              @"מדיניות עוגיות",
            @"Get a link to log in":        @"קבל קישור להתחברות",
            @"Log in with Facebook":        @"התחבר עם פייסבוק",
            @"Continue as":                 @"המשך בתור",
            @"Switch account":              @"החלף חשבון",
            @"OR":                          @"או",
            @"or":                          @"או",

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
            @"Start your first note...":    @"התחל את ההערה הראשונה שלך...",
            @"Start your\nfirst note...":   @"התחל את\nההערה הראשונה שלך...",
        };
    });
    return _hebrewTranslations;
}

// MARK: - Translation Cache for performance
// Avoids repeated dictionary lookups for the same string

static NSCache<NSString *, NSString *> *_translationCache = nil;

static NSCache<NSString *, NSString *> *translationCache(void) {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _translationCache = [[NSCache alloc] init];
        _translationCache.countLimit = 512;
    });
    return _translationCache;
}

// Sentinel object used to cache "no translation found" results
static NSString *const kNoTranslation = @"__NO_TRANSLATION__";

static NSString *translateString(NSString *text) {
    if (!text || text.length == 0 || text.length > 200) return nil;

    // Check cache first
    NSCache *cache = translationCache();
    NSString *cached = [cache objectForKey:text];
    if (cached) {
        return [cached isEqualToString:kNoTranslation] ? nil : cached;
    }

    // Look up in dictionary
    NSString *hebrew = hebrewTranslations()[text];
    [cache setObject:(hebrew ?: kNoTranslation) forKey:text];
    return hebrew;
}

// MARK: - NSBundle Hook for Hebrew Localization

%hook NSBundle

- (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName {
    NSString *original = %orig;

    if (!key || key.length == 0) return original;

    BOOL isInstagramBundle = [self.bundleIdentifier isEqualToString:@"com.burbn.instagram"] ||
                             [self.bundlePath containsString:@"Instagram.app"];

    if (!isInstagramBundle) return original;

    // Try key first, then resolved value
    NSString *hebrew = hebrewTranslations()[key] ?: hebrewTranslations()[original];
    return hebrew ?: original;
}

// Instagram uses NSBundle category methods for localization internally
- (NSString *)ig_localizedStringForKey:(NSString *)key {
    NSString *original = %orig;
    if (!key || key.length == 0) return original;
    return hebrewTranslations()[key] ?: hebrewTranslations()[original] ?: original;
}

%end

// MARK: - UILabel Hook (optimized with cache)
// Uses cache to avoid repeated dictionary lookups on every setText call.

%hook UILabel

- (void)setText:(NSString *)text {
    @try {
        NSString *hebrew = translateString(text);
        if (hebrew) {
            %orig(hebrew);
            return;
        }
    } @catch (NSException *e) { }
    %orig;
}

// Also hook attributed text (Instagram uses this for styled text)
- (void)setAttributedText:(NSAttributedString *)attributedText {
    @try {
        if (attributedText && attributedText.length > 0 && attributedText.length < 200) {
            NSString *plain = attributedText.string;
            NSString *hebrew = translateString(plain);
            if (hebrew) {
                // Preserve original attributes but replace text
                NSMutableAttributedString *mutable = [attributedText mutableCopy];
                NSRange fullRange = NSMakeRange(0, mutable.length);
                // Replace the string while keeping attributes
                [mutable replaceCharactersInRange:fullRange withString:hebrew];
                %orig(mutable);
                return;
            }
        }
    } @catch (NSException *e) { }
    %orig;
}

%end

// MARK: - UIButton Hook (safe, with crash protection)

%hook UIButton

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    @try {
        NSString *hebrew = translateString(title);
        if (hebrew) {
            %orig(hebrew, state);
            return;
        }
    } @catch (NSException *e) { }
    %orig;
}

%end

// MARK: - UINavigationItem Hook (safe)

%hook UINavigationItem

- (void)setTitle:(NSString *)title {
    @try {
        NSString *hebrew = translateString(title);
        if (hebrew) {
            %orig(hebrew);
            return;
        }
    } @catch (NSException *e) { }
    %orig;
}

%end

// MARK: - UITabBarItem Hook (tab bar labels)

%hook UITabBarItem

- (void)setTitle:(NSString *)title {
    @try {
        NSString *hebrew = translateString(title);
        if (hebrew) {
            %orig(hebrew);
            return;
        }
    } @catch (NSException *e) { }
    %orig;
}

%end

// MARK: - UIAlertController Hook (popups and alerts)

%hook UIAlertController

- (void)setTitle:(NSString *)title {
    @try {
        NSString *hebrew = translateString(title);
        if (hebrew) {
            %orig(hebrew);
            return;
        }
    } @catch (NSException *e) { }
    %orig;
}

- (void)setMessage:(NSString *)message {
    @try {
        NSString *hebrew = translateString(message);
        if (hebrew) {
            %orig(hebrew);
            return;
        }
    } @catch (NSException *e) { }
    %orig;
}

%end

// MARK: - UIAlertAction Hook (alert buttons)

%hook UIAlertAction

+ (instancetype)actionWithTitle:(NSString *)title style:(UIAlertActionStyle)style handler:(void (^)(UIAlertAction *))handler {
    @try {
        NSString *hebrew = translateString(title);
        if (hebrew) {
            return %orig(hebrew, style, handler);
        }
    } @catch (NSException *e) { }
    return %orig;
}

%end
