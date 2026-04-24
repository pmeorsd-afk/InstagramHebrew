# InstagramHebrew 🇮🇱

> טוויק שמתרגם את ממשק המשתמש של אינסטגרם לעברית

## מה זה עושה?

- 🔤 **תרגום ממשק** - מתרגם את כל הטקסטים המרכזיים באינסטגרם לעברית
- 📱 **Tab Bar** - בית, חיפוש, ריילס, חנות, פרופיל
- 👤 **פרופיל** - עוקבים, עוקב, פוסטים, ערוך פרופיל
- 💬 **הודעות** - הודעות ישירות, שליחה, קריאה
- 📸 **יצירת תוכן** - פוסט, סטורי, ריל, כיתוב
- ⚙️ **הגדרות** - כל תפריטי ההגדרות
- 🔔 **התראות** - התחיל לעקוב, לייק, תגובה
- ➡️ **RTL** - תמיכה אוטומטית בכיוון ימין-לשמאל

## דרישות

- iOS 14.0+
- מכשיר Jailbroken עם [Theos](https://theos.dev)
- MobileSubstrate / Substitute

## בנייה

```bash
# רגיל (rootful)
make package

# rootless (Dopamine / palera1n)
make package ROOTLESS=1

# roothide
make package ROOTHIDE=1
```

## התקנה

1. בנה את ה-DEB עם `make package`
2. התקן דרך Filza או Sileo
3. הפעל מחדש את אינסטגרם

## קרדיטים

- **Avi Miara** - פיתוח
- מבוסס על המבנה של [YTMusicUltimate](https://github.com/dayanch96/YTMusicUltimate) by dayanch96

## טלגרם

📣 [IL_Apk](https://t.me/IL_Apk) - עדכונים ואפליקציות פרוצות לאייפון

## רישיון

GPL-3.0
