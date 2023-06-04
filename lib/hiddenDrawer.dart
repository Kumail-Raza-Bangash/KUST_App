// ignore: file_names
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'Screens/gpa_calculator.dart';
import 'Screens/home_page.dart';
import 'Screens/rate_us.dart';
import 'Screens/share.dart';
import 'Screens/about_us.dart';
import 'Screens/kust_cms.dart';
import 'Screens/kust_grading_system.dart';
import 'assets/colors/colors.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../services/ad_mob_services.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  InterstitialAd? _interstitialAd;

  void _createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdMobServices.interstitialAdUnitId!,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) => _interstitialAd = ad,
        onAdFailedToLoad: (LoadAdError error) => _interstitialAd = null,
      ),
    );
  }

  void _showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdShowedFullScreenContent: (ad) {
          ad.dispose();
          _createInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _createInterstitialAd();
        },
      );
      _interstitialAd!.show();
      _interstitialAd = null;
    }
  }

  List<ScreenHiddenDrawer> _pages = [];
  final mytextStyle1 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );
  final mytextStyle2 = const TextStyle(
    fontSize: 16,
    color: Colors.white,
  );
  @override
  void initState() {
    _createInterstitialAd(); //Interstitial Ads

    // ignore: todo
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: mytextStyle2,
          selectedStyle: mytextStyle1,
          colorLineSelected: wt,
          onTap: () {
            _showInterstitialAd();
          },
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'KCMS',
          baseStyle: mytextStyle2,
          selectedStyle: mytextStyle1,
          colorLineSelected: wt,
          onTap: () {
            _showInterstitialAd();
          },
        ),
        const KustCMS(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'KUST GPA Calculator',
          baseStyle: mytextStyle2,
          selectedStyle: mytextStyle1,
          colorLineSelected: wt,
          onTap: () {
            _showInterstitialAd();
          },
        ),
        const GPACalculator(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'KUST Grading System ',
          baseStyle: mytextStyle2,
          selectedStyle: mytextStyle1,
          colorLineSelected: wt,
          onTap: () {
            _showInterstitialAd();
          },
        ),
        const KustGradingSystem(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'About Us ',
          baseStyle: mytextStyle2,
          selectedStyle: mytextStyle1,
          colorLineSelected: wt,
          onTap: () {
            _showInterstitialAd();
          },
        ),
        const AboutUs(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Rate Us',
          baseStyle: mytextStyle2,
          selectedStyle: mytextStyle1,
          colorLineSelected: wt,
          onTap: () {
            _showInterstitialAd();
          },
        ),
        const RateUs(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Share',
          baseStyle: mytextStyle2,
          selectedStyle: mytextStyle1,
          colorLineSelected: wt,
          onTap: () {
            _showInterstitialAd();
          },
        ),
        const SharePage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: c1,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 55,
      contentCornerRadius: 50,
    );
  }
}
