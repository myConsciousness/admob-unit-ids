// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// The abstract class that represents the manager of AdMob Unit ID.
///
///
/// ### 1. What you need to implement
///
/// By implementing the following abstract methods of this abstract class,
/// you can easily manage and use AdMob's unit ID for debugging and releasing.
///
/// - [releaseAppOpen]
/// - [releaseBanner]
/// - [releaseInterstitial]
/// - [releaseInterstitialVideo]
/// - [releaseRewarded]
/// - [releaseRewardedInterstitial]
/// - [releaseNativeAdvanced]
/// - [releaseNativeAdvancedVideo]
///
/// ### 2. What you should use then
///
/// If you implement the above abstract methods in a class that inherits from this abstract class,
/// basically no need to use the implemented methods directly,
/// but use the following methods defined in this abstract class to get the unit ID.
///
/// The following methods check the application startup status,
/// and returns the unit ID for testing when debugging,
/// and returns the release unit ID implemented in concrete class inherited this abstract class when releasing.
///
/// - [appOpen]
/// - [banner]
/// - [interstitial]
/// - [interstitialVideo]
/// - [rewarded]
/// - [rewardedInterstitial]
/// - [nativeAdvanced]
/// - [nativeAdvancedVideo]
///
/// ### 3. How to use in details
///
/// ```dart
/// import 'package:admob_unit_ids/admob_unit_ids.dart';
///
/// /// The example class that demonstraits [AdmobUnitIDs].
///class DemoAdmobUnitIDs extends AdmobUnitIDs {
///  @override
///  String get releaseAppOpen => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseBanner => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseInterstitial => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseInterstitialVideo => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseNativeAdvanced => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseNativeAdvancedVideo => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseRewarded => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseRewardedInterstitial => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
/// }
///
///main() {
///  final AdmobUnitIDs admobUnitIDs = DemoAdmobUnitIDs();
///
///  // => ca-app-pub-3940256099942544/3419835294 or unit id for releasing.
///  print(admobUnitIDs.appOpen);
///  // => ca-app-pub-3940256099942544/6300978111 or unit id for releasing.
///  print(admobUnitIDs.banner);
///  // => ca-app-pub-3940256099942544/1033173712 or unit id for releasing.
///  print(admobUnitIDs.interstitial);
///  // => ca-app-pub-3940256099942544/8691691433 or unit id for releasing.
///  print(admobUnitIDs.interstitialVideo);
///  // => ca-app-pub-3940256099942544/5224354917 or unit id for releasing.
///  print(admobUnitIDs.nativeAdvanced);
///  // => ca-app-pub-3940256099942544/5354046379 or unit id for releasing.
///  print(admobUnitIDs.nativeAdvancedVideo);
///  // => ca-app-pub-3940256099942544/2247696110 or unit id for releasing.
///  print(admobUnitIDs.rewarded);
///  // => ca-app-pub-3940256099942544/1044960115 or unit id for releasing.
///  print(admobUnitIDs.rewardedInterstitial);
///}
/// ```
abstract class AdmobUnitIDs {
  /// The flag that represents the execution mode of the application.
  static const bool release = const bool.fromEnvironment('dart.vm.product');

  /// The test unit id of app open.
  static const String _testAppOpen = 'ca-app-pub-3940256099942544/3419835294';

  /// The test unit id of banner.
  static const String _testBanner = 'ca-app-pub-3940256099942544/6300978111';

  /// The test unit id of interstitial.
  static const String _testInterstitial =
      'ca-app-pub-3940256099942544/1033173712';

  /// The test unit id of interstitial video.
  static const String _testInterstitialVideo =
      'ca-app-pub-3940256099942544/8691691433';

  /// The test unit id of rewarded.
  static const String _testRewarded = 'ca-app-pub-3940256099942544/5224354917';

  /// The test unit id of rewarded interstitial.
  static const String _testRewardedInterstitial =
      'ca-app-pub-3940256099942544/5354046379';

  /// The test unit id of native advanced.
  static const String _testNativeAdvanced =
      'ca-app-pub-3940256099942544/2247696110';

  /// The test unit id of native advanced video.
  static const String _testNativeAdvancedVideo =
      'ca-app-pub-3940256099942544/1044960115';

  /// Returns the release unit id of app open.
  String get releaseAppOpen;

  /// Returns the release unit id of banner.
  String get releaseBanner;

  /// Returns the release unit id of interstitial.
  String get releaseInterstitial;

  /// Returns the release unit id of interstitial video.
  String get releaseInterstitialVideo;

  /// Returns the release unit id of rewarded.
  String get releaseRewarded;

  /// Returns the release unit id of rewarded interstitial.
  String get releaseRewardedInterstitial;

  /// Returns the release unit id of native advanced.
  String get releaseNativeAdvanced;

  /// Returns the release unit id of native advanced video.
  String get releaseNativeAdvancedVideo;

  /// Returns the unit id of app open.
  ///
  /// Checks the startup status of the application at runtime,
  /// and returns the unit ID for testing if the startup mode is debug mode,
  /// and returns the unit ID for releasing from implemented [releaseAppOpen]
  /// if the startup mode is release mode.
  String get appOpen => release ? this.releaseAppOpen : _testAppOpen;

  /// Returns the unit id of banner.
  ///
  /// Checks the startup status of the application at runtime,
  /// and returns the unit ID for testing if the startup mode is debug mode,
  /// and returns the unit ID for releasing from implemented [releaseBanner]
  /// if the startup mode is release mode.
  String get banner => release ? this.releaseBanner : _testBanner;

  /// Returns the unit id of interstitial.
  ///
  /// Checks the startup status of the application at runtime,
  /// and returns the unit ID for testing if the startup mode is debug mode,
  /// and returns the unit ID for releasing from implemented [releaseInterstitial]
  /// if the startup mode is release mode.
  String get interstitial =>
      release ? this.releaseInterstitial : _testInterstitial;

  /// Returns the unit id of interstitial video.
  ///
  /// Checks the startup status of the application at runtime,
  /// and returns the unit ID for testing if the startup mode is debug mode,
  /// and returns the unit ID for releasing from implemented [releaseInterstitialVideo]
  /// if the startup mode is release mode.
  String get interstitialVideo =>
      release ? this.releaseInterstitialVideo : _testInterstitialVideo;

  /// Returns the unit id of rewarded.
  ///
  /// Checks the startup status of the application at runtime,
  /// and returns the unit ID for testing if the startup mode is debug mode,
  /// and returns the unit ID for releasing from implemented [releaseRewarded]
  /// if the startup mode is release mode.
  String get rewarded => release ? this.releaseRewarded : _testRewarded;

  /// Returns the unit id of rewarded interstitial.
  ///
  /// Checks the startup status of the application at runtime,
  /// and returns the unit ID for testing if the startup mode is debug mode,
  /// and returns the unit ID for releasing from implemented [releaseRewardedInterstitial]
  /// if the startup mode is release mode.
  String get rewardedInterstitial =>
      release ? this.releaseRewardedInterstitial : _testRewardedInterstitial;

  /// Returns the unit id of native advanced.
  ///
  /// Checks the startup status of the application at runtime,
  /// and returns the unit ID for testing if the startup mode is debug mode,
  /// and returns the unit ID for releasing from implemented [releaseNativeAdvanced]
  /// if the startup mode is release mode.
  String get nativeAdvanced =>
      release ? this.releaseNativeAdvanced : _testNativeAdvanced;

  /// Returns the unit id of native advanced video.
  ///
  /// Checks the startup status of the application at runtime,
  /// and returns the unit ID for testing if the startup mode is debug mode,
  /// and returns the unit ID for releasing from implemented [releaseNativeAdvancedVideo]
  /// if the startup mode is release mode.
  String get nativeAdvancedVideo =>
      release ? this.releaseNativeAdvancedVideo : _testNativeAdvancedVideo;
}
