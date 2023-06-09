// ignore: file_names
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import '../assets/colors/colors.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
            const CircleAvatar(
              backgroundImage: AssetImage('lib/assets/images/theKami.png'),
              radius:
                  75, // Adjust the radius to set the desired size of the circular image
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
              height: 20,
            ),

            //--------

            // //--------

            Column(
              children: <Widget>[
                SizedBox(
                  // Vertical ListView
                  height: 500,
                  width: 370,

                  child: ListView(
                    children: const [
                      SingleChildScrollView(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ABOUT US',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: c4,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Welcome to the KUST App!',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'At "theKami", we are proud to present the KUST App, designed specifically for the students and community of Kohat University of Science and Technology. Our team of dedicated developers and designers have worked tirelessly to create an app that caters to the unique needs and requirements of the KUST community.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'Our mission is to provide a seamless and user-friendly experience through cutting-edge technology. The KUST App serves as a comprehensive platform, bringing together various features and functionalities that enhance the educational journey and campus life at KUST.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'KUST GPA Calculator:',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'We understand the importance of tracking your academic progress accurately. With the KUST GPA Calculator, you can effortlessly calculate your Grade Point Average (GPA) based on the courses you have taken. Input your course grades and credit hours, and the app will do the rest, giving you instant access to your GPA. Stay on top of your academic performance and make informed decisions about your studies.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'KUST Course Management System (CMS):',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Managing your courses and academic information has never been easier. The KUST CMS feature allows you to access your course details, including schedules, lecture materials, and assignments, all in one place. Stay organized and never miss important deadlines. With the CMS, you can communicate with your professors, submit assignments, and receive feedback efficiently, ensuring a smooth academic experience.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'GPA Grading System:',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Understanding the grading system is crucial for academic success. The KUST App\'s GPA Grading System provides you with a comprehensive overview of how different letter grades translate to GPA values. Stay informed about the grading criteria, understand the impact of each grade on your GPA, and make informed decisions about your academic performance.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'The KUST App is the result of our commitment to delivering excellence in mobile application development. We understand the unique challenges faced by the KUST community and have tailored this app to meet your specific needs. With regular updates and enhancements, we strive to continuously improve your experience.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'We would like to extend our gratitude to the administration, faculty, and students of KUST for their support and valuable feedback throughout the development process. Your input has been invaluable in shaping the KUST App into what it is today.',
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'Thank you for choosing the KUST App by "theKami". We hope you find the GPA Calculator, CMS, and GPA Grading System invaluable tools for your academic journey. We are dedicated to continuously improving and expanding our app to meet your evolving needs.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //---
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Share.share(
                  'https://play.google.com/store/apps/details?id=com.thekami.kustapp',
                  subject: 'KUST App',
                );
              },
              child: const Text(
                'Share this app with your friends!',
              ),
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
