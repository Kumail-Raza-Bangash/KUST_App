import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../assets/colors/colors.dart';

class RateUs extends StatefulWidget {
  final String androidStoreUrl =
      'https://play.google.com/store/apps/details?id=your.package.name';

  const RateUs({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RateUsState createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  int _rating = 0;

  void _launchStoreUrl(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch store';
    }
  }

  Widget _buildStarIcon(int index) {
    if (index <= _rating) {
      return const Icon(Icons.star, color: c4, size: 50);
    } else {
      return const Icon(Icons.star_border, color: c4, size: 50);
    }
  }

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c3,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
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
              pause: const Duration(milliseconds: 3000),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  // Vertical ListView
                  height: 340,
                  width: 370,

                  child: ListView(
                    children: const [
                      SingleChildScrollView(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'RATE US',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: c4,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'Rate and Provide Feedback for the KUST App!',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'We value your opinion and strive to continuously improve the KUST App. Your feedback is essential in helping us enhance the app\'s features, user experience, and overall functionality. We kindly request a few moments of your time to rate and provide feedback for the KUST App.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'Why Rate the KUST App?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Help Us Improve: Your ratings and feedback are invaluable in guiding our efforts to improve the KUST App. By sharing your thoughts, you contribute to making the app even better, addressing any issues, and implementing new features that meet your needs.',
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Influence the Future: Your input shapes the future of the KUST App. Your ratings and feedback provide us with insights on what works well and what can be enhanced, enabling us to prioritize updates and developments that align with your expectations.',
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Support the Community: By rating the KUST App, you actively support the KUST community and contribute to a better digital experience for all students and faculty. Your feedback helps create a more efficient, user-friendly, and impactful app that benefits everyone.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'How to Rate the KUST App:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'App Store: Visit the app store from which you downloaded the KUST App (Google Play Store or Apple App Store). Search for the KUST App and navigate to the app\'s page. Tap on the rating section and provide your rating along with any additional comments.',
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'In-App Rating: Within the KUST App, you may find a prompt asking for your feedback or a dedicated "Rate Us" section. Follow the instructions provided to rate the app and share your thoughts directly within the app itself.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'We greatly appreciate your time and effort in rating the KUST App. Your feedback plays a crucial role in our continuous commitment to providing an exceptional user experience and ensuring that the app remains a valuable tool for all KUST students, faculty, and community members.',
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Thank you for being a part of the KUST App journey and for helping us make it even better for everyone!',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 170,
              width: 370,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'If you enjoy using the app, please take a moment to rate us on the Play Store.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: c4,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 1; i <= 5; i++)
                          GestureDetector(
                            onTap: () => _setRating(i),
                            child: _buildStarIcon(i),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => _launchStoreUrl(widget.androidStoreUrl),
              child: const Text('Rate on Play Store'),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: const Text(
                    'Developed by: theKami',
                    style: TextStyle(
                      color: c4,
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
