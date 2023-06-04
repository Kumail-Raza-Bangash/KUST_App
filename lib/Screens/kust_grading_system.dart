import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../assets/colors/colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../services/ad_mob_services.dart';

class Grade {
  final String percentage;
  final double points;
  final String letter;

  Grade({required this.percentage, required this.points, required this.letter});
}

class Grade1 {
  final String a1;
  final String d1;

  Grade1({required this.a1, required this.d1});
}

class Grade2 {
  final String a2;
  final String d2;

  Grade2({required this.a2, required this.d2});
}

final List<Grade> grades = [
  Grade(percentage: 'Below 50', points: 0.0, letter: 'F'),
  Grade(percentage: '50', points: 1.0, letter: 'D'),
  Grade(percentage: '51', points: 1.08, letter: 'D'),
  Grade(percentage: '52', points: 1.17, letter: 'D'),
  Grade(percentage: '53', points: 1.25, letter: 'D'),
  Grade(percentage: '54', points: 1.33, letter: 'D+'),
  Grade(percentage: '55', points: 1.42, letter: 'D+'),
  Grade(percentage: '56', points: 1.50, letter: 'D+'),
  Grade(percentage: '57', points: 1.58, letter: 'D+'),
  Grade(percentage: '58', points: 1.67, letter: 'C-'),
  Grade(percentage: '59', points: 1.75, letter: 'C-'),
  Grade(percentage: '60', points: 1.83, letter: 'C-'),
  Grade(percentage: '61', points: 1.92, letter: 'C-'),
  Grade(percentage: '62', points: 2.0, letter: 'C'),
  Grade(percentage: '63', points: 2.08, letter: 'C'),
  Grade(percentage: '64', points: 2.17, letter: 'C'),
  Grade(percentage: '65', points: 2.25, letter: 'C'),
  Grade(percentage: '66', points: 2.33, letter: 'C+'),
  Grade(percentage: '67', points: 2.42, letter: 'C+'),
  Grade(percentage: '68', points: 2.5, letter: 'C+'),
  Grade(percentage: '69', points: 2.58, letter: 'C+'),
  Grade(percentage: '70', points: 2.67, letter: 'B-'),
  Grade(percentage: '71', points: 2.75, letter: 'B-'),
  Grade(percentage: '72', points: 2.83, letter: 'B-'),
  Grade(percentage: '73', points: 2.92, letter: 'B-'),
  Grade(percentage: '74', points: 3.0, letter: 'B'),
  Grade(percentage: '75', points: 3.08, letter: 'B'),
  Grade(percentage: '76', points: 3.17, letter: 'B'),
  Grade(percentage: '77', points: 3.25, letter: 'B'),
  Grade(percentage: '78', points: 3.33, letter: 'B+'),
  Grade(percentage: '79', points: 3.42, letter: 'B+'),
  Grade(percentage: '80', points: 3.5, letter: 'B+'),
  Grade(percentage: '81', points: 3.58, letter: 'B+'),
  Grade(percentage: '82', points: 3.67, letter: 'A-'),
  Grade(percentage: '83', points: 3.75, letter: 'A-'),
  Grade(percentage: '84', points: 3.83, letter: 'A-'),
  Grade(percentage: '85', points: 3.92, letter: 'A-'),
  Grade(percentage: '86-100', points: 4.00, letter: 'A'),
];
final List<Grade1> grades1 = [
  Grade1(a1: 'A: ', d1: 'Excellent'),
  Grade1(a1: 'B: ', d1: 'Good'),
  Grade1(
      a1: 'C: ',
      d1: 'Adequate for undergraduate and minimum acceptable for graduate '),
  Grade1(
      a1: 'D: ',
      d1: 'Minimum acceptable for undergraduate and failure for graduate '),
  Grade1(
      a1: 'F: ',
      d1: 'Failure, implying that the student must repeat the entire course to receive any credit '),
  Grade1(
      a1: 'P: ',
      d1: 'Pass, this is used in case of research thesis/dissertation, credit hours counted '),
  Grade1(a1: 'S: ', d1: 'Satisfactory completion '),
  Grade1(a1: 'U: ', d1: 'Unsatisfactory completion '),
  Grade1(a1: 'W: ', d1: 'Withdrawal from the course '),
  Grade1(a1: 'E: ', d1: 'Exempted from the course '),
  Grade1(
      a1: 'WF: ',
      d1: 'Force Withdrawal from the course due to the shortage of attendance or disciplinary action '),
  Grade1(
      a1: 'IP: ',
      d1: 'In Progress, if Thesis, Project, Studio work spread over more than one semester than one semester '),
  Grade1(
      a1: 'I: ',
      d1: 'Incomplete, the student has to complete the requirement within the specified time. '),
];

final List<Grade2> grades2 = [
  Grade2(a2: 'A ', d2: '4.00 (Can Not be repeated)'),
  Grade2(a2: 'A- ', d2: '3.67 (Can Not be repeated)'),
  Grade2(a2: 'B+ ', d2: '3.33(Can Not be repeated)'),
  Grade2(a2: 'B ', d2: '3.00(Can Not be repeated)'),
  Grade2(
      a2: 'B- ',
      d2: '2.67 (Graduate courses can be repeated only if related to the specialization of the Graduate Student.)'),
  Grade2(
      a2: 'C+ ',
      d2: '2.33(Graduate courses can be repeated only if related to the specialization of the Graduate Student.)'),
  Grade2(
      a2: 'C ',
      d2: '2.00(Graduate courses can be repeated only if related to the specialization of the Graduate Student.)'),
  Grade2(
      a2: 'C- ',
      d2: '1.67  (can be repeated and must be repeated if related to the speciation of the graduate student)'),
  Grade2(
      a2: 'D+ ',
      d2: '1.33 (can be repeated and must be repeated if related to the speciation of the graduate student)'),
  Grade2(
      a2: 'D ',
      d2: '1.00 (can be repeated and must be repeated if related to the speciation of the graduate student)'),
  Grade2(
      a2: 'F ',
      d2: '0.00 (must be repeated if the course is a degree requirement)'),
  Grade2(a2: 'W ', d2: 'Nil Credit, not counted in the calculation of GPA'),
  Grade2(
      a2: 'I ',
      d2: 'Nil Credit, not counted in the calculation of Credit Hours or GPA'),
  Grade2(a2: 'S ', d2: 'Not counted in the calculation of Credit Hours or GPA'),
  Grade2(a2: 'P ', d2: 'Not counted in the calculation of GPA'),
  Grade2(a2: 'U ', d2: 'Not counted in the calculation of GPA'),
  Grade2(a2: 'E ', d2: 'Nil Credit, not counted in the calculation of GPA.'),
  Grade2(
      a2: 'IP ',
      d2: 'Thesis, projects, and studio work spread over multiple semesters may be graded as "In Progress" (IP) until completion. '),
  Grade2(
      a2: 'WF ',
      d2: 'student registered in a subject may not be permitted to continue due to a shortage of attendance etc.'),
];

class KustGradingSystem extends StatefulWidget {
  const KustGradingSystem({super.key});

  @override
  State<KustGradingSystem> createState() => _KustGradingSystemState();
}

class _KustGradingSystemState extends State<KustGradingSystem> {
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Grading System',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: c4,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //--------

            // //--------

            Column(
              children: <Widget>[
                SizedBox(
                  // Vertical ListView
                  height: 500,
                  width: 370,

                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              ' KUST has adopted the policy of Absolute Grading System as per following details:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,

                                fontSize: 16,
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            DataTable(
                              columns: const [
                                DataColumn(
                                    label: Text(
                                  'Score (%)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                                DataColumn(
                                    label: Text(
                                  'Grade Points',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                                DataColumn(
                                    label: Text(
                                  'Letter Grades',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ],
                              rows: const [
                                DataRow(cells: [
                                  DataCell(Text('Below 50')),
                                  DataCell(Text('0.00')),
                                  DataCell(Text('F')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('50-53')),
                                  DataCell(Text('1.00 – 1.25')),
                                  DataCell(Text('D')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('54-57')),
                                  DataCell(Text('1.33 – 1.58')),
                                  DataCell(Text('D+')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('58-61')),
                                  DataCell(Text('1.67 – 1.92')),
                                  DataCell(Text('C-')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('62-65')),
                                  DataCell(Text('2.00 – 2.25')),
                                  DataCell(Text('C')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('66-69')),
                                  DataCell(Text('2.33 – 2.58')),
                                  DataCell(Text('C+')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('70-73')),
                                  DataCell(Text('2.67 – 2.92')),
                                  DataCell(Text('B-')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('74-77')),
                                  DataCell(Text('3.00 – 3.25')),
                                  DataCell(Text('B')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('78-81')),
                                  DataCell(Text('3.33 – 3.58')),
                                  DataCell(Text('B+')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('82-85')),
                                  DataCell(Text('3.67 – 3.92')),
                                  DataCell(Text('A-')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('86-89')),
                                  DataCell(Text('3.97 – 3.92')),
                                  DataCell(Text('A')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('90-100')),
                                  DataCell(Text('4.00')),
                                  DataCell(Text('A')),
                                ]),
                              ],
                            ),
                            //--
                            const SizedBox(
                              height: 20,
                            ),
                            //--
                            DataTable(
                              columns: const [
                                DataColumn(
                                  label: Text(
                                    'Score (%)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Grade Points',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Letter Grades',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                              rows: grades
                                  .map((grade) => DataRow(
                                        cells: [
                                          DataCell(
                                            Text(grade.percentage),
                                          ),
                                          DataCell(
                                            Text(grade.points
                                                .toStringAsFixed(2)),
                                          ),
                                          DataCell(
                                            Text(grade.letter),
                                          ),
                                        ],
                                      ))
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              ' The grades indicate the following level of performance. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //--
                            DataTable(
                              columns: const [
                                DataColumn(
                                  label: Text(
                                    'Letter',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Definition',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                              rows: grades1
                                  .map((grade1) => DataRow(
                                        cells: [
                                          DataCell(
                                            Text(grade1.a1),
                                          ),
                                          DataCell(
                                            Text(grade1.d1),
                                          ),
                                        ],
                                      ))
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              ' Each grade is assigned Grade Points per Credit Hour (GPCH) according to the following table. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //--
                            DataTable(
                              columns: const [
                                DataColumn(
                                  label: Text(
                                    'Grade',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    ' GPCH',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                              rows: grades2
                                  .map((grade2) => DataRow(
                                        cells: [
                                          DataCell(
                                            Text(grade2.a2),
                                          ),
                                          DataCell(
                                            Text(grade2.d2),
                                          ),
                                        ],
                                      ))
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              ' At the time of submission of results by the concerned teacher, all relevant record of the students must be handed over to the HoD.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,

                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //--
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            //---
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
