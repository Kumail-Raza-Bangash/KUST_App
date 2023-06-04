// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../assets/colors/colors.dart';
import '../hiddenDrawer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HiddenDrawer(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 180,
            ),
            const Center(
              child: Image(
                image: AssetImage('lib/assets/images/Kust-Logo.png'),
                height: 280,
                width: 280,
              ),
            ),
            const SizedBox(
              height: 11,
            ),

            // Animated KUST APP
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  ' KUST ',
                  textStyle: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 150),
                ),
                TypewriterAnimatedText(
                  ' APP ',
                  textStyle: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 150),
                ),
              ],
            ),
            //--
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Developed by: theKami',
                    style: TextStyle(
                      color: wt,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
