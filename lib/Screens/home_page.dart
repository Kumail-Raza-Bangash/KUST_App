import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../services/ad_mob_services.dart';
import '/assets/colors/colors.dart';
import 'gpa_calculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BannerAd? _banner;
  InterstitialAd? _interstitialAd;

  @override
  void initState() {
    super.initState();

    _createBannerAd();
    _createInterstitialAd();
  }

  void _createBannerAd() {
    _banner = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdMobServices.bannerAdUnitId!,
      listener: AdMobServices.bannerListener,
      request: const AdRequest(),
    )..load();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c3,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Image(
              image: AssetImage('lib/assets/images/Kust-Logo.png'),
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 11,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'KUST APP',
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: c4,
                    fontSize: 30,
                  ),
                  speed: const Duration(milliseconds: 500),
                ),
              ],
              repeatForever: true,
              pause: const Duration(milliseconds: 3000),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              width: 370,
              child: Column(
                children: [
                  Text(
                    'The KUST APP simplifies the process of calculating Semester GPA for KUST University students.',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: s4,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'By providing an easy-to-use interface and clear results, the app helps students stay on track with their academic goals and make informed decisions about their course selections and academic progress.',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: s4,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Overall, the KUST APP is a valuable tool that can contribute to the academic success of KUST University students. ',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: s4,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _showInterstitialAd();
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const GPACalculator(),
                        ),
                      );
                    },
                    child: const Text('GPA Calculator'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _banner == null
          ? Container()
          : Container(
              margin: const EdgeInsets.only(bottom: 12),
              height: 52,
              child: AdWidget(
                ad: _banner!,
              ),
            ),
    );
  }
}
