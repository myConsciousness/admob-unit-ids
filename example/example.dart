// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:admob_unit_ids/admob_unit_ids.dart';

/// The example class that demonstraits [AdmobUnitIDs].
class DemoAdmobUnitIDs extends AdmobUnitIDs {
  /// The singleton instance of [DemoAdmobUnitIDs].
  static final DemoAdmobUnitIDs _singletonInstance =
      DemoAdmobUnitIDs._internal();

  /// The internal default constructor.
  DemoAdmobUnitIDs._internal();

  /// Returns the singleton instance of [DemoAdmobUnitIDs].
  factory DemoAdmobUnitIDs.getInstance() => _singletonInstance;

  @override
  String get releaseAppOpen => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseBanner => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseInterstitial => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseInterstitialVideo =>
      'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseNativeAdvanced => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseNativeAdvancedVideo =>
      'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseRewarded => 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  @override
  String get releaseRewardedInterstitial =>
      'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';
}

void main() {
  final AdmobUnitIDs admobUnitIDs = DemoAdmobUnitIDs.getInstance();

  // => ca-app-pub-3940256099942544/3419835294 or unit id for releasing.
  print(admobUnitIDs.appOpen);
  // => ca-app-pub-3940256099942544/6300978111 or unit id for releasing.
  print(admobUnitIDs.banner);
  // => ca-app-pub-3940256099942544/1033173712 or unit id for releasing.
  print(admobUnitIDs.interstitial);
  // => ca-app-pub-3940256099942544/8691691433 or unit id for releasing.
  print(admobUnitIDs.interstitialVideo);
  // => ca-app-pub-3940256099942544/5224354917 or unit id for releasing.
  print(admobUnitIDs.nativeAdvanced);
  // => ca-app-pub-3940256099942544/5354046379 or unit id for releasing.
  print(admobUnitIDs.nativeAdvancedVideo);
  // => ca-app-pub-3940256099942544/2247696110 or unit id for releasing.
  print(admobUnitIDs.rewarded);
  // => ca-app-pub-3940256099942544/1044960115 or unit id for releasing.
  print(admobUnitIDs.rewardedInterstitial);
}
