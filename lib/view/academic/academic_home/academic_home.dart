import 'package:education_home_tutor/view/academic/academic_class/academic_class.dart';
import 'package:education_home_tutor/view/academic/attendance/attendance.dart';
import 'package:education_home_tutor/view/academic/home_work/home_work.dart';
import 'package:education_home_tutor/view/academic/mark_entry/mark_entry.dart';
import 'package:education_home_tutor/view/academic/notice/notice.dart';
import 'package:education_home_tutor/view/academic/result/result.dart';
import 'package:education_home_tutor/view/academic/routine/routine.dart';
import 'package:education_home_tutor/view/academic/student_request/all_student.dart';
import 'package:education_home_tutor/view/academic/teacher/all_teacher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AcademicHome extends StatelessWidget {
  AcademicHome({super.key});

  final List<Map<String, dynamic>> items = [
    {
      'label': 'Attendance',
      'icon': Icons.calendar_today,
      'color': Colors.blue[100]
    },
    {'label': 'Teachers Info', 'icon': Icons.note, 'color': Colors.purple[100]},
    {'label': 'Class', 'icon': Icons.checklist, 'color': Colors.teal[100]},
    {
      'label': 'Mark Entry',
      'icon': Icons.event_note,
      'color': Colors.blue[100]
    },
    {
      'label': 'Home Work',
      'icon': Icons.edit_note,
      'color': Colors.yellow[100]
    },
    {'label': 'Student Info', 'icon': Icons.group, 'color': Colors.pink[100]},
    {'label': 'Result', 'icon': Icons.message, 'color': Colors.purple[100]},
    {'label': 'Notice', 'icon': Icons.event, 'color': Colors.green[100]},
    {'label': 'Routine', 'icon': Icons.event_note, 'color': Colors.blue[100]},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return GestureDetector(
                      onTap: () {
                        // Handle individual item clicks
                        switch (item['label']) {
                          case 'Attendance':
                            Get.to(Attendance(), transition: Transition.rightToLeftWithFade); 
                            break;
                          case 'Teachers Info':
                            Get.to(const AllTeacher(),
                                transition: Transition.rightToLeftWithFade);
                            break;
                          case 'Class':
                          Get.to(const AcademicClass(),
                                transition: Transition.rightToLeftWithFade);
                            break;
                          case 'Mark Entry':
                            Get.to(const MarkEntryPage(),
                                transition: Transition.rightToLeftWithFade);

                            break;
                          case 'Home Work':
                            Get.to(  HomeWorkPage(),
                                transition: Transition.rightToLeftWithFade);
                            break;
                          case 'Student Info':
                            Get.to(const AllStudent(),
                                transition: Transition.rightToLeftWithFade);
                            break;
                          case 'Result':
                            Get.to(const ResultPage(),
                                transition: Transition.rightToLeftWithFade);

                            break;
                          case 'Notice':
                            Get.to(const NoticePage(),
                                transition: Transition.rightToLeftWithFade);

                            break;
                          case 'Routine':
                            Get.to(const Routine(),
                                transition: Transition.rightToLeftWithFade);
                            break;
                          default:
                            print('Unknown item clicked');
                            break;
                        }
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: item['color'],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              item['icon'],
                              color: Colors.black54,
                              size: 25,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item['label'],
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                //teacher, student section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //teacher===>
                    ElevatedButton.icon(
                      icon: const Icon(Icons.school, color: Colors.white),
                      onPressed: () {},
                      label: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Teacher",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '25',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button fill color
                        padding: const EdgeInsets.all(
                            8), // Padding inside the button
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // Circular border
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    //student ====>
                    ElevatedButton.icon(
                      icon: const Icon(Icons.diversity_3, color: Colors.white),
                      onPressed: () {},
                      label: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Student",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '400',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button fill color
                        padding: const EdgeInsets.all(
                            8), // Padding inside the button
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // Circular border
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 8,
                ),

                ///today, offline, online--->
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Institute Today Balance",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black), //
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Today",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold), //
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 105,
                                        child: Text(
                                          "Offline",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          "Online",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Fee Collection'),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: const Text('৳ 500'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: const Text(
                                        '৳ 100',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Expense'),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: const Text('৳ 2000'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: const Text(
                                        '৳ 900',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                ///Account type
                SizedBox(
                  height: 210,
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Institute Available Balance',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Cash In Hand'),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: const Text(
                                        '৳ 6,000',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Bank'),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: const Text(
                                        '৳ 9,000',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Payment Gatway'),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: const Text(
                                        '৳ 1,200',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
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
