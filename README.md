[![Dart](https://github.com/myConsciousness/admob-unit-ids/actions/workflows/dart.yml/badge.svg?branch=main)](https://github.com/myConsciousness/admob-unit-ids/actions/workflows/dart.yml)

# 1. Admob Unit IDs

## 1.1. What is it?

`Admob Unit IDs` is a library that provides a common structure for managing AdMob unit IDs licensed under BSD 3-Clause.

<!-- TOC -->

- [1. Admob Unit IDs](#1-admob-unit-ids)
  - [1.1. What is it?](#11-what-is-it)
  - [1.2. Motivation](#12-motivation)
  - [1.3. How To Use](#13-how-to-use)
    - [1.3.1. Get library](#131-get-library)
    - [1.3.2. Import and extend abstract class](#132-import-and-extend-abstract-class)
    - [1.3.3. Override methods](#133-override-methods)
    - [1.3.4. Call methods to get AdMob Unit IDs](#134-call-methods-to-get-admob-unit-ids)
    - [1.3.5. Overview](#135-overview)
  - [1.4. More Information](#14-more-information)

<!-- /TOC -->

## 1.2. Motivation

1. Provide common functionality regarding unit IDs when implementing AdMob.
2. Reduce redundant settings when deploying AdMob.

## 1.3. How To Use

### 1.3.1. Get library

Run this command:

With Flutter:

```terminal
flutter pub add admob_unit_ids
```

### 1.3.2. Import and extend abstract class

```dart
import 'package:admob_unit_ids/admob_unit_ids.dart';

class DemoAdmobUnitIDs extends AdmobUnitIDs {
}
```

### 1.3.3. Override methods

| Method Name                 | Remarks                                                       |
| --------------------------- | ------------------------------------------------------------- |
| releaseAppOpen              | Should return unit id of app open for releasing.              |
| releaseBanner               | Should return unit id of banner for releasing.                |
| releaseInterstitial         | Should return unit id of interstitial for releasing.          |
| releaseInterstitialVideo    | Should return unit id of interstitial video for releasing.    |
| releaseNativeAdvanced       | Should return unit id of native advanced for releasing.       |
| releaseNativeAdvancedVideo  | Should return unit id of native advanced video for releasing. |
| releaseRewarded             | Should return unit id of rewarded for releasing.              |
| releaseRewardedInterstitial | Should return unit id of rewarded interstitial for releasing. |

```dart
import 'package:universal_io/io.dart';
import 'package:admob_unit_ids/admob_unit_ids.dart';

class DemoAdmobUnitIDs extends AdmobUnitIDs {
  @override
  String get releaseAppOpen => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseBanner => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseInterstitial => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseInterstitialVideo => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseNativeAdvanced => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseNativeAdvancedVideo => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseRewarded => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseRewardedInterstitial => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
}
```

### 1.3.4. Call methods to get AdMob Unit IDs

If you override the above abstract methods in a class that extends from this abstract class, basically no need to use the overridden methods directly. But you can use the methods defined in this abstract class to get the unit ID depends on the application startup status.

The following methods check the application startup status, and returns the unit ID for testing when debugging, and returns the release unit ID implemented in concrete class extended this abstract class when releasing.

| Method Name          | Remarks                                                                  |
| -------------------- | ------------------------------------------------------------------------ |
| appOpen              | Returns the unit id of app open for debugging or releasing.              |
| banner               | Returns the unit id of banner for debugging or releasing.                |
| interstitial         | Returns the unit id of interstitial for debugging or releasing.          |
| interstitialVideo    | Returns the unit id of interstitial video for debugging or releasing.    |
| nativeAdvanced       | Returns the unit id of native advanced for debugging or releasing.       |
| nativeAdvancedVideo  | Returns the unit id of native advanced video for debugging or releasing. |
| rewarded             | Returns the unit id of rewarded for debugging or releasing.              |
| rewardedInterstitial | Returns the unit id of rewarded interstitial for debugging or releasing. |

```dart
void main() {
  final AdmobUnitIDs admobUnitIDs = DemoAdmobUnitIDs();

  // => Unit id for debugging or unit id for releasing.
  print(admobUnitIDs.appOpen);
  print(admobUnitIDs.banner);
  print(admobUnitIDs.interstitial);
  print(admobUnitIDs.interstitialVideo);
  print(admobUnitIDs.nativeAdvanced);
  print(admobUnitIDs.nativeAdvancedVideo);
  print(admobUnitIDs.rewarded);
  print(admobUnitIDs.rewardedInterstitial);
}
```

### 1.3.5. Overview

```dart
import 'package:universal_io/io.dart';
import 'package:admob_unit_ids/admob_unit_ids.dart';

class DemoAdmobUnitIDs extends AdmobUnitIDs {
  /// The singleton instance of [DemoAdmobUnitIDs].
  static final DemoAdmobUnitIDs _singletonInstance = DemoAdmobUnitIDs._internal();

  /// The internal default constructor.
  DemoAdmobUnitIDs._internal();

  /// Returns the singleton instance of [DemoAdmobUnitIDs].
  factory DemoAdmobUnitIDs.getInstance() => _singletonInstance;

  @override
  String get releaseAppOpen => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseBanner => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseInterstitial => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseInterstitialVideo => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseNativeAdvanced => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseNativeAdvancedVideo => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseRewarded => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseRewardedInterstitial => Platform.isAndroid
      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
}

void main() {
  final AdmobUnitIDs admobUnitIDs = DemoAdmobUnitIDs.getInstance();

  // => Unit id for debugging or unit id for releasing.
  print(admobUnitIDs.appOpen);
  print(admobUnitIDs.banner);
  print(admobUnitIDs.interstitial);
  print(admobUnitIDs.interstitialVideo);
  print(admobUnitIDs.nativeAdvanced);
  print(admobUnitIDs.nativeAdvancedVideo);
  print(admobUnitIDs.rewarded);
  print(admobUnitIDs.rewardedInterstitial);
}
```

## 1.4. More Information

`Admob Unit IDs` was designed and implemented by Kato Shinya, who works as a freelance developer.

Regardless of the means or content of communication, I would love to hear from you if you have any questions or concerns. I do not check my email box very often so a response may be delayed, anyway thank you for your interest!

- [Creator Profile](https://github.com/myConsciousness)
- [Creator Website](https://myconsciousness.github.io)
- [License](https://github.com/myConsciousness/admob-unit-ids/blob/main/LICENSE)
- [Release Note](https://github.com/myConsciousness/admob-unit-ids/releases)
- [File a Bug](https://github.com/myConsciousness/admob-unit-ids/issues)
