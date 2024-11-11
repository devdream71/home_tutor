import 'package:education_home_tutor/view/academic/academic_home/academic_home.dart';
import 'package:education_home_tutor/view/academic/student_request/student_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AcademicHomeBottomNav extends StatefulWidget {
  const AcademicHomeBottomNav({super.key});

  @override
  AcademicHomeBottomNavState createState() => AcademicHomeBottomNavState();
}

class AcademicHomeBottomNavState extends State<AcademicHomeBottomNav> {
  //final LoginController loginController = Get.put(LoginController());

  int _selectedIndex = 0;
  // Screens for each tab
  static final List<Widget> _pages = <Widget>[
    AcademicHome(),
    const Center(child: Text('Home work')),
    const Center(child: Text('Account')),
    const Center(child: Text('Student')),
    const Center(child: Text('More')),
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
          'Laksam Cambrian',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.to(const StudentRequest(),
                  transition: Transition.rightToLeftWithFade);
            },
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.green.withOpacity(0.8),
              child: const Text(
                '12',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gavel),
            label: 'Home work',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Student',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'More',
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
