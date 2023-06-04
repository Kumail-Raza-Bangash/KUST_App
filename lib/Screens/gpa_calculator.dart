import 'package:flutter/material.dart';
import '../assets/colors/colors.dart';
import 'package:flutter/services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../services/ad_mob_services.dart';

@override
class Course {
  String name;
  double creditHours;
  String numbers;

  Course(
      {required this.name, required this.creditHours, required this.numbers});
}

List<Course> courses = [];

void addCourse() {
  String name = nameController.text;
  double creditHours = double.parse(creditHoursController.text);
  String numbers = letterGradeController.text;
  Course course =
      Course(name: name, creditHours: creditHours, numbers: numbers);
  courses.add(course);

  nameController.clear();
  creditHoursController.clear();
  letterGradeController.clear();
}

double gpa = 0.0;

void calculateGPA() {
  double totalGradePoints = 0.0;
  double totalCreditHours = 0.0;

  for (Course course in courses) {
    double gradePoints = 0.0;
    switch (course.numbers) {
      case '100':
        gradePoints = 4.00;
        break;
      case '99':
        gradePoints = 4.00;
        break;
      case '98':
        gradePoints = 4.00;
        break;
      case '97':
        gradePoints = 4.00;
        break;
      case '96':
        gradePoints = 4.00;
        break;
      case '95':
        gradePoints = 4.00;
        break;
      case '94':
        gradePoints = 4.00;
        break;
      case '93':
        gradePoints = 4.00;
        break;
      case '92':
        gradePoints = 4.00;
        break;
      case '91':
        gradePoints = 4.00;
        break;
      case '90':
        gradePoints = 4.00;
        break;
      case '89':
        gradePoints = 4.00;
        break;
      case '88':
        gradePoints = 4.00;
        break;
      case '87':
        gradePoints = 4.00;
        break;
      case '86':
        gradePoints = 4.00;
        break;
      case '85':
        gradePoints = 3.92;
        break;
      case '84':
        gradePoints = 3.83;
        break;
      case '83':
        gradePoints = 3.75;
        break;
      case '82':
        gradePoints = 3.67;
        break;
      case '81':
        gradePoints = 3.58;
        break;
      case '80':
        gradePoints = 3.50;
        break;
      case '79':
        gradePoints = 3.42;
        break;
      case '78':
        gradePoints = 3.33;
        break;
      case '77':
        gradePoints = 3.25;
        break;
      case '76':
        gradePoints = 3.17;
        break;
      case '75':
        gradePoints = 3.08;
        break;
      case '74':
        gradePoints = 3.00;
        break;
      case '73':
        gradePoints = 2.92;
        break;
      case '72':
        gradePoints = 2.83;
        break;
      case '71':
        gradePoints = 2.75;
        break;
      case '70':
        gradePoints = 2.67;
        break;
      case '69':
        gradePoints = 2.58;
        break;
      case '68':
        gradePoints = 2.50;
        break;
      case '67':
        gradePoints = 2.42;
        break;
      case '66':
        gradePoints = 2.33;
        break;
      case '65':
        gradePoints = 2.25;
        break;
      case '64':
        gradePoints = 2.17;
        break;
      case '63':
        gradePoints = 2.08;
        break;
      case '62':
        gradePoints = 2.00;
        break;
      case '61':
        gradePoints = 1.92;
        break;
      case '60':
        gradePoints = 1.83;
        break;
      case '59':
        gradePoints = 1.75;
        break;
      case '58':
        gradePoints = 1.67;
        break;
      case '57':
        gradePoints = 1.58;
        break;
      case '56':
        gradePoints = 1.50;
        break;
      case '55':
        gradePoints = 1.42;
        break;
      case '54':
        gradePoints = 1.33;
        break;
      case '53':
        gradePoints = 1.25;
        break;
      case '52':
        gradePoints = 1.17;
        break;
      case '51':
        gradePoints = 1.08;
        break;
      case '50':
        gradePoints = 1.0;
        break;

      default:
        gradePoints = 0.0;
        break;
    }
    totalGradePoints += gradePoints * course.creditHours;
    totalCreditHours += course.creditHours;
  }

  gpa = totalGradePoints / totalCreditHours;

  //return gpa;
}

final _formKey = GlobalKey<FormState>();

final TextEditingController nameController = TextEditingController();
final TextEditingController creditHoursController = TextEditingController();
final TextEditingController letterGradeController = TextEditingController();

final nameFocusNode = FocusNode();
final creditHoursFocusNode = FocusNode();
final letterGradeFocusNode = FocusNode();

bool nameValid = true;
bool creditHoursValid = true;
bool letterGradeValid = true;

class GPACalculator extends StatefulWidget {
  const GPACalculator({super.key});

  @override
  State<GPACalculator> createState() => _GPACalculatorState();
}

class _GPACalculatorState extends State<GPACalculator> {
  // ...

  InterstitialAd? _interstitialAd;
  RewardedAd? _rewardedAd;
  int _rewardedScore = 0;

  @override
  void initState() {
    super.initState();

    _createInterstitialAd();
    _createRewardedAd();
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

  void _createRewardedAd() {
    RewardedAd.load(
        adUnitId: AdMobServices.rewardedAdUnitId!,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) => setState(() => _rewardedAd = ad),
          onAdFailedToLoad: (error) => setState(() => _rewardedAd = null),
        ));
  }

  void _showRewardedAd() {
    if (_rewardedAd != null) {
      _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _createRewardedAd();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _createRewardedAd();
        },
      );
      _rewardedAd!.show(
        onUserEarnedReward: (ad, reward) => setState(() => _rewardedScore++),
      );
      _rewardedAd = null;
    }
  }

// ...

  void _addCourse() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        if (nameController.text.isEmpty ||
            creditHoursController.text.isEmpty ||
            letterGradeController.text.isEmpty) {
// set _validate to true if any required field is empty
        } else {
          addCourse();
// reset _validate to false
        }
      });
    }
  }

  void _calculateGPA() {
    setState(() {
      calculateGPA();
    });
  }

  String grade = '';
  @override
  void dispose() {
    super.dispose();
  }

  void _validateName() {
    setState(() {
      nameValid = nameController.text.isNotEmpty;
    });
  }

  void _validateEmail() {
    setState(() {
      creditHoursValid = creditHoursController.text.isNotEmpty;
    });
  }

  void _validatePhone() {
    setState(() {
      letterGradeValid = letterGradeController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c3,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage('lib/assets/images/Kust-Logo.png'),
                  height: 100,
                  width: 100,
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
                  height: 40,
                ),
                TextFormField(
                  controller: nameController,
                  focusNode: nameFocusNode,
                  onChanged: (_) => _validateName(),
                  validator: (_) {
                    if (!nameValid) {
                      return 'Please enter Course Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Course Name',
                    errorText: nameValid ? null : 'Please enter Course Name',
                  ),
                  maxLength: 40,
                ),
                TextFormField(
                  controller: creditHoursController,
                  focusNode: creditHoursFocusNode,
                  onChanged: (_) => _validateEmail(),
                  validator: (_) {
                    if (!creditHoursValid) {
                      return 'Please enter Course Credit Hours';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Course Credit Hours ',
                    errorText: creditHoursValid
                        ? null
                        : 'Please enter Course Credit Hours',
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  maxLength: 1,
                ),
                TextFormField(
                  controller: letterGradeController,
                  focusNode: letterGradeFocusNode,
                  onChanged: (_) => _validatePhone(),
                  validator: (_) {
                    if (!letterGradeValid) {
                      return 'Please enter your Obtained Marks';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Your Obtained Marks',
                    errorText: letterGradeValid
                        ? null
                        : 'Please enter your Obtained Marks',
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  maxLength: 2,
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: _addCourse,
                      child: const Text('Add Course'),
                    ),
                    Text(
                      'GPA: ${gpa.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _showRewardedAd();
                        _showInterstitialAd();
                        _calculateGPA();
                      },
                      child: const Text('Calculate GPA'),
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Expanded(
                  flex: 8,
                  child: ListView.builder(
                    itemCount: courses.length,
                    itemBuilder: (BuildContext context, int index) {
                      Course course = courses[index];
                      return ListTile(
                        leading: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              courses.removeAt(
                                  index); // Remove the item from the list.
                            });
                          },
                        ),
                        title: Text(course.name),
                        subtitle: Text('${course.creditHours} credit hours'),
                        trailing: Text(course.numbers),
                      );
                    },
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
        ),
      ),
    );
  }
}
