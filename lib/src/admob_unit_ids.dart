// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

  String get appOpen => release ? this.releaseAppOpen : _testAppOpen;
  String get banner => release ? this.releaseBanner : _testBanner;
  String get interstitial =>
      release ? this.releaseInterstitial : _testInterstitial;
  String get interstitialVideo =>
      release ? this.releaseInterstitialVideo : _testInterstitialVideo;
  String get rewarded => release ? this.releaseRewarded : _testRewarded;
  String get rewardedInterstitial =>
      release ? this.releaseRewardedInterstitial : _testRewardedInterstitial;
  String get nativeAdvanced =>
      release ? this.releaseNativeAdvanced : _testNativeAdvanced;
  String get nativeAdvancedVideo =>
      release ? this.releaseNativeAdvancedVideo : _testNativeAdvancedVideo;
}
