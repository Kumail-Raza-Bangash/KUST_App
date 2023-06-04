import 'package:flutter/material.dart';
import 'Screens/splash-screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'assets/colors/colors.dart';
//import 'package:kust_app/services/ad_mob_services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KUST APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        primarySwatch: s1,
      ),
      home: const SplashScreen(),
    );
  }
}
