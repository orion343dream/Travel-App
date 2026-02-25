# Flutter Admin App - Complete Setup & Run Guide

## ✅ Project Status Check

**Project Location:** `C:\Users\sadar\Music\Single-Vendor-Travel-main`

**Apps Configured:**
- ✅ `apps/t_admin` - Admin/Vendor Dashboard
- ✅ `apps/t_client` - Customer App

**Flutter SDK:** `C:\Program Files\flutter`

---

## 🚀 How to Run the Admin App in Chrome (Complete Steps)

### Step 1: Open PowerShell or Command Prompt

Press **Windows Key + R**, type `powershell` or `cmd`, and press Enter.

### Step 2: Navigate to Admin App Directory

```powershell
cd C:\Users\sadar\Music\Single-Vendor-Travel-main\apps\t_admin
```

### Step 3: Clean Old Build Files

```powershell
flutter clean
```

**Wait for it to complete** - you should see:
```
Deleting build... (this takes a moment)
```

### Step 4: Download Latest Dependencies

```powershell
flutter pub get
```

**Wait for completion** - final message should be:
```
Got dependencies!
```

### Step 5: Generate Required Code Files

```powershell
flutter pub run build_runner build --delete-conflicting-outputs
```

**This is important!** Wait for completion - you should see:
```
[completed successfully]
```

### Step 6: Run the App

```powershell
flutter run -d chrome
```

**IMPORTANT:** This first build takes **3-5 minutes**. DO NOT CLOSE THE TERMINAL!

**Watch for these messages:**
1. `Launching lib/main.dart on Chrome...`
2. `Building application for the web...`
3. Eventually Chrome should **automatically open**
4. Final line shows: `Serving Flutter application on http://localhost:XXXXX`

---

## 🔍 What to Watch For

### ✅ Success Signs:
- Chrome browser opens automatically
- You see the app loading in the browser
- URL shows `http://localhost:XXXX` (not `localhost:7707`)
- App displays in Chrome

### ❌ If Nothing Happens:
1. **Check terminal** - scroll up to see if there are error messages
2. **Wait longer** - first build can take up to 5 minutes
3. **Look for URL** - Find the line that says `Serving Flutter application on http://localhost:...`
4. **Copy that URL** and paste in Chrome manually

### ❌ If You See Errors:

**Error: "Cannot GET /"**
- You're on the wrong port
- Use the URL from the terminal instead

**Error about Firebase:**
- Run: `flutter pub get`
- Then try again

**Error about build_runner:**
- Run: `flutter pub run build_runner build --delete-conflicting-outputs`
- Then try again

---

## 📋 Quick Command Summary

**Clean Everything:**
```powershell
cd C:\Users\sadar\Music\Single-Vendor-Travel-main\apps\t_admin
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

**Run the App:**
```powershell
flutter run -d chrome
```

**To Stop the App:**
- Press `Ctrl + C` in the terminal

**To Restart While Running:**
- While app is running, press `r` in the terminal for hot reload

---

## 🎯 Expected Output

When you run `flutter run -d chrome`, you should see something like:

```
Launching lib/main.dart on Chrome in debug mode...
Building application for the web...
... (lots of compile messages) ...

Serving Flutter application on http://localhost:54373
```

**Then Chrome opens automatically with your app!**

---

## 🆘 Still Not Working?

If Chrome doesn't open after 5 minutes:

1. Press `Ctrl + C` to stop
2. Take a screenshot of the terminal showing any errors
3. Report the exact error message

**Common Fixes:**
```powershell
# If build fails, try rebuilding
flutter clean
flutter pub get
flutter run -d chrome
```

---

## ✅ Success Checklist

- [ ] Flutter SDK is at `C:\Program Files\flutter`
- [ ] Navigated to `apps/t_admin` folder
- [ ] Ran `flutter clean`
- [ ] Ran `flutter pub get`
- [ ] Ran `flutter pub run build_runner build --delete-conflicting-outputs`
- [ ] Ran `flutter run -d chrome`
- [ ] Chrome opened with the app
- [ ] App is displaying in browser

---

**Once you see the admin app in Chrome, you're ready to develop!**

Press `r` while the app is running to hot reload changes.
Press `Ctrl + C` to stop the dev server.

