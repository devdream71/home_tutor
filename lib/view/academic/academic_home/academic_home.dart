import 'package:education_home_tutor/utils/colors.dart';
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

  // List of menu items
  final List<Map<String, dynamic>> menuItems = [
    {"icon": Icons.school, "label": "Teacher info"},
    {"icon": Icons.group, "label": "Student Info"},
    {"icon": Icons.checklist, "label": "Class"},
    {"icon": Icons.event_note, "label": "Home work"},
    {"icon": Icons.edit_note, "label": "Attendance"},
    {"icon": Icons.group, "label": "Routine"},
    {"icon": Icons.event, "label": "Mark Entry"},
    {"icon": Icons.event_note, "label": "Result"},
    {"icon": Icons.edit_note, "label": "Notice"},
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
                const SizedBox(
                  height: 8,
                ),
                //teacher, student section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //teacher===>
                    SizedBox(
                      width: 130,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.school, color: Colors.white),
                        onPressed: () {},
                        label: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Teacher",
                              style: TextStyle(
                                fontSize: 14,
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
                          backgroundColor: AppColor.primaryColor,
                          padding: const EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    //student ====>
                    SizedBox(
                      width: 130,
                      child: ElevatedButton.icon(
                        icon:
                            const Icon(Icons.diversity_3, color: Colors.white),
                        onPressed: () {},
                        label: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Student",
                              style: TextStyle(
                                fontSize: 14,
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
                          backgroundColor:
                              AppColor.primaryColor, // Button fill color
                          padding: const EdgeInsets.all(
                              8), // Padding inside the button
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15), // Circular border
                          ),
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
                  height: 150,
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
                            height: 8,
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        minimumSize: const Size(0, 0),
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        minimumSize: const Size(0, 0),
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        minimumSize: const Size(0, 0),
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        minimumSize: const Size(0, 0),
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        minimumSize: const Size(0, 0),
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

                 

                const SizedBox(
                  height: 15,
                ),

                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 8, right: 8, bottom: 0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                        childAspectRatio: 1,
                      ),
                      itemCount: menuItems.length,
                      itemBuilder: (context, index) {
                        final menu = menuItems[index];
                        return GestureDetector(
                          onTap: () {
                            switch (menu['label']) {
                              case 'Teacher info':
                                Get.to(const AllTeacher(),
                                    transition: Transition.rightToLeftWithFade);
                                break;

                              case 'Student Info':
                                Get.to(const AllStudent(),
                                    transition: Transition.rightToLeftWithFade);
                                break;

                              case 'Class':
                                Get.to(const AcademicClass(),
                                    transition: Transition.rightToLeftWithFade);
                                break;

                              case 'Home work':
                                Get.to(const AcademicHomeworkView(),
                                    transition: Transition.rightToLeftWithFade);
                                break;

                              case 'Attendance':
                                Get.to(const AcademicAttendanceCreateView(),
                                    transition: Transition.rightToLeftWithFade);
                                break;

                              case 'Routine':
                                Get.to(const Routine(),
                                    transition: Transition.rightToLeftWithFade);
                                break;

                              case 'Mark Entry':
                                Get.to(const AcademicMarkEntryView(),
                                    transition: Transition.rightToLeftWithFade);

                                break;

                              case 'Result':
                                Get.to(const ResultPage(),
                                    transition: Transition.rightToLeftWithFade);

                                break;
                              case 'Notice':
                                Get.to(const AcademicNoticePage(),
                                    transition: Transition.rightToLeftWithFade);

                                break;

                              default:
                                print('Unknown item clicked');
                                break;
                            }
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 24, // Adjust icon size
                                backgroundColor: Colors.blue.withOpacity(0.1),
                                child: Icon(
                                  menuItems[index]['icon'],
                                  color: Colors.blue,
                                  size: 28,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                menuItems[index]['label'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
