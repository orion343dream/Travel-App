# Flutter SDK Setup Guide

## Project: Single-Vendor Travel App
**Setup Date:** February 24, 2026

---

## Flutter Installation Status

✅ **Flutter SDK Installed:** `C:\Program Files\flutter`  
✅ **t_admin - Dependencies:** Installed (`pubspec.lock` present)  
✅ **t_client - Dependencies:** Installed (`pubspec.lock` present)

---

## 1. Environment Configuration

### System PATH
Flutter has been added to your system PATH:
```
C:\Program Files\flutter\bin
```

To verify from any terminal:
```powershell
flutter --version
```

### Environment Variables (Already Set)
- **FLUTTER_HOME:** `C:\Program Files\flutter`
- **PATH:** Updated to include `C:\Program Files\flutter\bin`

---

## 2. Project Structure

```
Single-Vendor-Travel-main/
├── apps/
│   ├── t_admin/                 # Admin/Vendor App
│   │   ├── pubspec.yaml
│   │   ├── pubspec.lock        ✅ Generated
│   │   ├── lib/
│   │   ├── android/
│   │   ├── ios/
│   │   ├── macos/
│   │   └── web/
│   │
│   └── t_client/                # Customer App
│       ├── pubspec.yaml
│       ├── pubspec.lock        ✅ Generated
│       ├── lib/
│       ├── android/
│       ├── ios/
│       ├── macos/
│       ├── web/
│       └── khalti_flutter/      # Local package
```

---

## 3. Dependencies Status

### t_admin App
- **Dart SDK:** Supported by Flutter SDK
- **Key Dependencies:**
  - Flutter framework
  - Firebase (analytics, auth, storage)
  - Dio (HTTP client)
  - GetIt (dependency injection)
  - Package dependencies: ✅ All resolved

### t_client App
- **Dart SDK:** Supported by Flutter SDK
- **Key Dependencies:**
  - Flutter framework
  - Firebase
  - Khalti Flutter (local package)
  - Dio (HTTP client)
  - Package dependencies: ✅ All resolved

---

## 4. Quick Start Commands

### Setup Dependencies
```bash
# For t_admin
cd C:\Users\sadar\Music\Single-Vendor-Travel-main\apps\t_admin

# For t_client
cd apps/t_client
flutter pub get
```

### Run Applications

#### Admin App
```bash
cd apps/t_admin

# On Android
flutter run -d android

# On iOS
flutter run -d ios

# On Web (Chrome)
flutter run -d chrome

# On Windows (Desktop)
flutter run -d windows

# On macOS (Desktop)
flutter run -d macos
```

#### Client App
```bash
cd apps/t_client

# On Android
flutter run -d android

# On iOS
flutter run -d ios

# On Web (Chrome)
flutter run -d chrome
```

### Build for Release

#### Android APK
```bash
cd apps/t_admin
flutter build apk --release
# Output: build/app/outputs/app-release.apk
```

#### Android App Bundle (for Play Store)
```bash
cd apps/t_admin
flutter build appbundle --release
# Output: build/app/outputs/bundle-release.aab
```

#### iOS (for App Store)
```bash
cd apps/t_admin
flutter build ios --release
# Output: build/ios/Release-iphoneos/
```

#### Web
```bash
cd apps/t_admin
flutter build web --release
# Output: build/web/
```

---

## 5. Available Platforms

### Configured in pubspec.yaml

| Platform | t_admin | t_client | Status |
|----------|---------|----------|--------|
| Android | ✅ | ✅ | Ready |
| iOS | ✅ | ✅ | Ready |
| Web | ✅ | ✅ | Ready |
| macOS | ✅ | ✅ | Ready |
| Windows | ❓ | ❓ | Check `flutter config` |
| Linux | ❓ | ❓ | Check `flutter config` |

### Check Enabled Platforms
```bash
flutter config
```

### Enable Additional Platforms (if needed)
```bash
# Enable Windows
flutter config --enable-windows-desktop

# Enable Linux
flutter config --enable-linux-desktop

# Enable Web
flutter config --enable-web

# Enable macOS
flutter config --enable-macos-desktop
```

---

## 6. Development Tools

### Run Flutter Doctor
```bash
flutter doctor
```
This checks your Flutter installation and development environment.

### List Connected Devices
```bash
flutter devices
```

### Get Package Upgrades Available
```bash
flutter pub outdated
```

### Upgrade Packages
```bash
flutter pub upgrade
```

### Get Specific Package Version
```bash
flutter pub add package_name:version
```

---

## 7. IDE Integration

### Visual Studio Code
1. Install extensions:
   - **Flutter** (by Dart Code)
   - **Dart** (by Dart Code)

2. Configure Flutter SDK path (if not in PATH):
   - Open VS Code Settings
   - Search: `flutter.flutterSdkPath`
   - Set to: `C:\Program Files\flutter`

3. Restart VS Code

### Android Studio / IntelliJ IDEA
1. Install plugins:
   - Flutter
   - Dart

2. Configure SDK:
   - File → Settings → Languages & Frameworks → Flutter
   - Set Flutter SDK Path: `C:\Program Files\flutter`

---

## 8. Firebase Configuration

Both apps are configured with Firebase. Key files:

**Admin App:**
- `apps/t_admin/ios/Runner/GoogleService-Info.plist`
- `apps/t_admin/android/app/google-services.json`
- `apps/t_admin/lib/firebase_options.dart`

**Client App:**
- `apps/t_client/ios/Runner/GoogleService-Info.plist`
- `apps/t_client/android/app/google-services.json`
- `apps/t_client/lib/firebase_options.dart`

### Initialize Firebase (if needed)
```bash
dart pub global activate flutterfire_cli
flutterfire configure
```

---

## 9. Troubleshooting

### Issue: `flutter: command not found`
**Solution:**
```powershell
# Add to PATH temporarily
$env:Path += ";C:\Program Files\flutter\bin"

# Or add permanently
[System.Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\flutter\bin", "User")
```

### Issue: `pubspec.lock` conflicts
**Solution:**
```bash
cd apps/t_admin
flutter clean
flutter pub get
```

### Issue: Build failures
**Solution:**
```bash
# Clean all builds
flutter clean

# Get dependencies again
flutter pub get

# Check doctor
flutter doctor -v
```

### Issue: Android build fails
**Solution:**
```bash
cd apps/t_admin

# Clean and rebuild
flutter clean
flutter pub get
flutter run --verbose
```

### Issue: iOS build fails
**Solution:**
```bash
cd apps/t_admin

# Clean
flutter clean
flutter pub get

# Get iOS dependencies
cd ios
pod repo update
pod install
cd ..

# Build
flutter run --verbose
```

---

## 10. Development Workflow

### Local Development (Hot Reload)
```bash
cd apps/t_admin
flutter run
# While running, press 'r' for hot reload, 'R' for full restart
```

### Testing
```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/unit_test.dart

# Run with coverage
flutter test --coverage
```

### Analyze Code
```bash
flutter analyze
```

### Format Code
```bash
flutter format lib/
```

---

## 11. Publishing Checklist

### Before Publishing

- [ ] Update version in `pubspec.yaml`
- [ ] Update `CHANGELOG.md`
- [ ] Run `flutter analyze` - no issues
- [ ] Run all tests - passing
- [ ] Build APK/AAB and test on device
- [ ] Build iOS app and test on device
- [ ] Update app icons (app_icon_dir)
- [ ] Update app screenshots
- [ ] Prepare app store listings

### Android Play Store
- [ ] Create Google Play Developer account
- [ ] Generate signed keystore
- [ ] Build app bundle: `flutter build appbundle --release`
- [ ] Upload to Play Store Console
- [ ] Fill out store listing
- [ ] Submit for review

### iOS App Store
- [ ] Create Apple Developer account
- [ ] Create App ID in Apple Developer
- [ ] Create provisioning profiles
- [ ] Build iOS app: `flutter build ios --release`
- [ ] Upload via Xcode or Transporter
- [ ] Fill out app store listing
- [ ] Submit for review

---

## 12. Performance Optimization

### Release Build
```bash
# Always use --release for production
flutter build apk --release
flutter build appbundle --release
flutter build ios --release
flutter build web --release
```

### Enable Code Shrinking (Android)
In `android/app/build.gradle`:
```gradle
buildTypes {
    release {
        signingConfig signingConfigs.release
        shrinkResources true
        minifyEnabled true
    }
}
```

### Profile Mode (Performance Testing)
```bash
flutter run --profile
```

---

## 13. Useful Flutter Commands Summary

```bash
# Version & Info
flutter --version
flutter doctor
flutter doctor -v

# Setup
flutter pub get
flutter pub upgrade
flutter clean

# Development
flutter run
flutter run -d <device-id>
flutter run --profile
flutter run --release

# Build
flutter build apk
flutter build appbundle
flutter build ios
flutter build web
flutter build macos
flutter build windows

# Testing
flutter test
flutter test --coverage

# Code Quality
flutter analyze
flutter format lib/

# Device Management
flutter devices
flutter attach

# Pub Package Management
flutter pub outdated
flutter pub add package_name
flutter pub add package_name:version
flutter pub remove package_name
```

---

## 14. Additional Resources

- **Official Flutter Docs:** https://flutter.dev/docs
- **Flutter Pub:** https://pub.dev
- **Firebase Flutter:** https://firebase.flutter.dev
- **Flutter for Android:** https://flutter.dev/docs/development/add-to-app/android-project-migration
- **Flutter for iOS:** https://flutter.dev/docs/development/add-to-app/ios-project-setup

---

## 15. Project-Specific Notes

### Firebase Integration
- Both apps use Firebase for:
  - Authentication
  - Cloud Firestore (database)
  - Cloud Storage
  - Cloud Functions
  - Analytics

### Payment Integration
- **Khalti Payment Gateway** is integrated in t_client
- Located in: `apps/t_client/khalti_flutter/`

### Local Packages
- `khalti_flutter` is a local package used by t_client
- Located at: `apps/t_client/khalti_flutter/`

### App Module (Dependency Injection)
- DI setup using **GetIt**
- Located at: `apps/t_admin/lib/di/app_module.dart`
- Setup in: `apps/t_admin/lib/di/di_setup.dart`

---

## Support & Maintenance

For issues or questions:
1. Check `flutter doctor` output
2. Review Flutter documentation
3. Search on Stack Overflow
4. Check GitHub issues for packages used
5. Contact the development team

---

**Setup Completed:** February 24, 2026  
**Next Step:** Ready for development. Start with `flutter run` in either app directory.
