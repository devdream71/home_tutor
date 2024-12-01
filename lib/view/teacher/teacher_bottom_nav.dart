import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/view/student/settings/settings.dart';
import 'package:education_home_tutor/view/teacher/mark/mark_entry.dart';
import 'package:education_home_tutor/view/teacher/teacher_attendance/teacher_attendance.dart';
import 'package:education_home_tutor/view/teacher/teacher_dashboard/teacher_dashboard.dart';
import 'package:education_home_tutor/view/teacher/teacher_homework.dart/teacher_homework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 

class TeacherHomeBottomNav extends StatefulWidget {
  const TeacherHomeBottomNav({super.key});

  @override
  TeacherHomeBottomNavState createState() => TeacherHomeBottomNavState();
} 

class TeacherHomeBottomNavState extends State<TeacherHomeBottomNav> {
  int _selectedIndex = 0;

  // Screens for each tab
  static final List<Widget> _pages = <Widget>[
    const TeacherDashBoardVIew(),
    const TeacherHomeworkView(),
    const TeacherAttendanceCreateView(),
    const MarkEntryView(),
    const Center(child: Text('More'))
    // const StudentResultView(),
    // const StudentFeeView(),
  ];

  // Titles for each tab
  static final List<String> _titles = [
    'Laksam Cambrian School',
    'Home Work',
    'Attendance',
    'Mark',
    'More',
     
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
              icon: Icon(Icons.account_balance_wallet),
              label: 'Mark',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'More',
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
