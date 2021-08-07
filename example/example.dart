// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';
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
