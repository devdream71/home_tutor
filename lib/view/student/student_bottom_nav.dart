// import 'package:education_home_tutor/view/student/student_bottom_page/attendence.dart';
// import 'package:education_home_tutor/view/student/student_bottom_page/dashboard.dart';
// import 'package:education_home_tutor/view/student/student_bottom_page/exam.dart';
// import 'package:education_home_tutor/view/student/student_bottom_page/fee/fee.dart';
// import 'package:education_home_tutor/view/student/student_bottom_page/home_work.dart/homework.dart';
// import 'package:education_home_tutor/view/student/student_bottom_page/result/result.dart';
// import 'package:flutter/material.dart';

// class StudentHomeBottomNav extends StatefulWidget {
//   const StudentHomeBottomNav({super.key});

//   @override
//   StudentHomeBottomNavState createState() => StudentHomeBottomNavState();
// }

// class StudentHomeBottomNavState extends State<StudentHomeBottomNav> {
//   int _selectedIndex = 0;

//   // Screens for each tab
//   static final List<Widget> _pages = <Widget>[
//     const StudentDashBoardVIew(),
//     const StudentHomeworkView(),
//     const StudentAttendenceView(),
//     const StudentExamView(),
//     const StudentResultView(),
//     const StudentFeeView(),
//   ];

//   // Titles for each tab
//   static final List<String> _titles = [
//     'Laksam Cambrian School',
//     'Home Work',
//     'Attendance',
//     'Exam',
//     'Result',
//     'Fee',
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           _titles[_selectedIndex], // Dynamic title
//           style: const TextStyle(color: Colors.white),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.notifications),
//           ),
//           const SizedBox(width: 2),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.settings),
//           ),
//           const SizedBox(width: 8),
//         ],
//         backgroundColor: Colors.blue,
//         iconTheme: const IconThemeData(
//           color: Colors.white,
//         ),
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Dashboard',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.gavel),
//             label: 'Home Work',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_balance_wallet),
//             label: 'Attendance',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_bag),
//             label: 'Exam',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Result',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.attach_money),
//             label: 'Fee',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/student/settings/settings.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/attendence.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/dashboard.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/exam.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/fee/fee.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/home_work.dart/homework.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/result/result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class StudentHomeBottomNav extends StatefulWidget {
  const StudentHomeBottomNav({super.key});

  @override
  StudentHomeBottomNavState createState() => StudentHomeBottomNavState();
}

class StudentHomeBottomNavState extends State<StudentHomeBottomNav> {
  int _selectedIndex = 0;

  // Screens for each tab
  static final List<Widget> _pages = <Widget>[
    const StudentDashBoardVIew(),
    const StudentHomeworkView(),
    const StudentAttendenceView(),
    const StudentExamView(),
    const StudentResultView(),
    const StudentFeeView(),
  ];

  // Titles for each tab
  static final List<String> _titles = [
    'Laksam Cambrian School',
    'Home Work',
    'Attendance',
    'Exam',
    'Result',
    'Fee',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _titles[_selectedIndex], // Dynamic title
            style: const TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
            const SizedBox(width: 2),
            IconButton(
              onPressed: () {
                Get.to(const Settings(), transition: Transition.leftToRightWithFade);
              },
              icon: const Icon(Icons.settings),
            ),
            const SizedBox(width: 8),
          ],
          backgroundColor: AppColor.primaryColor,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gavel),
              label: 'Home Work',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Attendance',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Exam',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Result',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: 'Fee',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    final shouldClose = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit App'),
        content: const Text('Are you sure you want to close the app?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Exit'),
          ),
        ],
      ),
    );
    return shouldClose ?? false; // Prevent exiting if dialog is dismissed
  }
}
