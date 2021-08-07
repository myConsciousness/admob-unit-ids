// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

/// The abstract class that represents the manager of AdMob Unit ID.
///
/// ### 1. What you need to override
///
/// By overriding the following abstract methods of this abstract class,
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
/// If you override the above abstract methods in a class that extends from this abstract class,
/// basically no need to use the overridden methods directly,
/// but use the following methods defined in this abstract class to get the unit ID depends on the application startup status.
///
/// The following methods check the application startup status,
/// and returns the unit ID for testing when debugging,
/// and returns the release unit ID implemented in concrete class extended this abstract class when releasing.
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
///  /// The singleton instance of [DemoAdmobUnitIDs].
///  static final DemoAdmobUnitIDs _singletonInstance = DemoAdmobUnitIDs._internal();
///
///  /// The internal default constructor.
///  DemoAdmobUnitIDs._internal();
///
///  /// Returns the singleton instance of [DemoAdmobUnitIDs].
///  factory DemoAdmobUnitIDs.getInstance() => _singletonInstance;
///
///  @override
///  String get releaseAppOpen => Platform.isAndroid
///      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
///      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseBanner => Platform.isAndroid
///      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
///      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseInterstitial => Platform.isAndroid
///      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
///      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseInterstitialVideo => Platform.isAndroid
///      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
///      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseNativeAdvanced => Platform.isAndroid
///      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
///      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseNativeAdvancedVideo => Platform.isAndroid
///      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
///      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseRewarded => Platform.isAndroid
///      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
///      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
///
///  @override
///  String get releaseRewardedInterstitial => Platform.isAndroid
///      ? 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx'
///      : 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
/// }
///
///void main() {
///  final AdmobUnitIDs admobUnitIDs = DemoAdmobUnitIDs.getInstance();
///
///  // => Unit id for debugging or unit id for releasing.
///  print(admobUnitIDs.appOpen);
///  print(admobUnitIDs.banner);
///  print(admobUnitIDs.interstitial);
///  print(admobUnitIDs.interstitialVideo);
///  print(admobUnitIDs.nativeAdvanced);
///  print(admobUnitIDs.nativeAdvancedVideo);
///  print(admobUnitIDs.rewarded);
///  print(admobUnitIDs.rewardedInterstitial);
///}
/// ```
abstract class AdmobUnitIDs {
  /// The flag that represents the execution mode of the application.
  static const bool release = const bool.fromEnvironment('dart.vm.product');

  /// The test unit id of app open.
  static final String _testAppOpen = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/3419835294'
      : 'ca-app-pub-3940256099942544/5662855259';

  /// The test unit id of banner.
  static final String _testBanner = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/2934735716';

  /// The test unit id of interstitial.
  static final String _testInterstitial = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/1033173712'
      : 'ca-app-pub-3940256099942544/4411468910';

  /// The test unit id of interstitial video.
  static final String _testInterstitialVideo = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/8691691433'
      : 'ca-app-pub-3940256099942544/5135589807';

  /// The test unit id of rewarded.
  static final String _testRewarded = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/5224354917'
      : 'ca-app-pub-3940256099942544/1712485313';

  /// The test unit id of rewarded interstitial.
  static final String _testRewardedInterstitial = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/5354046379'
      : 'ca-app-pub-3940256099942544/6978759866';

  /// The test unit id of native advanced.
  static final String _testNativeAdvanced = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/2247696110'
      : 'ca-app-pub-3940256099942544/3986624511';

  /// The test unit id of native advanced video.
  static final String _testNativeAdvancedVideo = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/1044960115'
      : 'ca-app-pub-3940256099942544/2521693316';

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
