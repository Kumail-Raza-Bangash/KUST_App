import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:share/share.dart';
import '../assets/colors/colors.dart';
import '../services/ad_mob_services.dart';

class SharePage extends StatefulWidget {
  const SharePage({Key? key}) : super(key: key);

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  BannerAd? _banner;

  @override
  void initState() {
    super.initState();

    _createBannerAd();
  }

  void _createBannerAd() {
    _banner = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdMobServices.bannerAdUnitId!,
      listener: AdMobServices.bannerListener,
      request: const AdRequest(),
    )..load();
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
              height: 20,
            ),
            const Image(
              image: AssetImage('lib/assets/images/Kust-Logo.png'),
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 5,
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
              pause: const Duration(milliseconds: 1000),
            ),
            SizedBox(
              height: 500,
              width: 350,
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    'Why Rate the KUST App?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'We believe that great tools and resources are meant to be shared. Help your fellow students unlock the full potential of their academic journey by sharing the KUST App with them. With its intuitive features and helpful functionalities, the KUST App is designed to make campus life more efficient and productive for all. ',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Together, let\'s create an academic environment that thrives on innovation, efficiency, and collaboration. Share the KUST App with your fellow students today and unlock a world of possibilities for all. ',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Share this app with your friends!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: c4,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.share_rounded),
                            iconSize: 30,
                            color: s1,
                            onPressed: () {
                              Share.share(
                                'https://play.google.com/store/apps/details?id=com.thekami.kustapp',
                                subject: 'KUST App',
                              );
                            },
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Share',
                            style: TextStyle(
                              color: c4,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.email_rounded),
                            iconSize: 30,
                            color: s1,
                            onPressed: () {
                              Share.share(
                                'https://play.google.com/store/apps/details?id=com.thekami.kustapp',
                                subject: 'KUST App',
                                sharePositionOrigin: const Rect.fromLTWH(
                                    0, 0, 100, 100), // for email sharing
                              );
                            },
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Email',
                            style: TextStyle(
                              color: c4,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.sms_rounded),
                            iconSize: 30,
                            color: s1,
                            onPressed: () {
                              Share.share(
                                'https://play.google.com/store/apps/details?id=com.thekami.kustapp',
                                subject: 'KUST App',
                                sharePositionOrigin: const Rect.fromLTWH(
                                    0, 0, 100, 100), // for SMS sharing
                              );
                            },
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'SMS',
                            style: TextStyle(
                              color: c4,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
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
