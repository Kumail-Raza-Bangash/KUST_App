import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobServices {
  static String? get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6503100682056262/3554994132';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    }
    // ignore: dead_code
    return null;
  }

  static String? get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6503100682056262/4171794003';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/4411468910';
    }
    // ignore: dead_code
    return null;
  }

  static String? get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6503100682056262/5522529967';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/1712485313';
    }
    // ignore: dead_code
    return null;
  }

  static final BannerAdListener bannerListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint('Banner Ad Loaded'),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint('Banner Ad Failed');
    },
    onAdOpened: (ad) => debugPrint('Banner Ad Opened'),
    onAdClosed: (ad) => debugPrint('Banner Ad Closed'),
  );
}
