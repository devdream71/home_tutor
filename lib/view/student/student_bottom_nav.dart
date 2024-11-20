import 'package:education_home_tutor/view/academic/academic_home/academic_home.dart';
import 'package:education_home_tutor/view/academic/student_request/student_request.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/attendence.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/dashboard.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/exam.dart';
import 'package:education_home_tutor/view/student/student_bottom_page/homework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StudentHomeBottomNav extends StatefulWidget {
  const StudentHomeBottomNav({super.key});

  @override
  StudentHomeBottomNavState createState() => StudentHomeBottomNavState();
}

class StudentHomeBottomNavState extends State<StudentHomeBottomNav> {
  //final LoginController loginController = Get.put(LoginController());

  int _selectedIndex = 0;
  // Screens for each tab
  static final List<Widget> _pages = <Widget>[
    
    //const Center(child: Text('Dashboard')),
    //const Center(child: Text('Homework')),
    //const Center(child: Text('Attendance')),
    // const Center(child: Text('Exam')),
    // const StudentExamView(),
    const StudentDashBoardVIew(),
    const StudentHomeworkView(),
    const StudentAttendenceView(),
    const StudentExamView(),
    const Center(child: Text('Result')),
    const Center(child: Text('Fee')),
  ];

  // Function to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Laksam Cambrian School ',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          const SizedBox(
            width: 2,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
        backgroundColor: Colors.blue,
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
            label: 'Home work',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Attendence',
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
            icon: Icon(Icons.person),
            label: 'Fee',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Active tab color
        unselectedItemColor: Colors.grey, // Inactive tab color
        onTap: _onItemTapped,
      ),
    );
  }
}
