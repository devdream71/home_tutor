import 'package:education_home_tutor/view/academic/academic_home/academic_home.dart';
import 'package:education_home_tutor/view/academic/account/account_no_app_bar.dart';
 
import 'package:education_home_tutor/view/academic/home_work/home_work_to_appbar.dart';
import 'package:education_home_tutor/view/academic/more/more.dart';
import 'package:education_home_tutor/view/academic/student_request/all_student_no_app_bar.dart';
import 'package:education_home_tutor/view/academic/student_request/student_request.dart';
 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;

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
    // const Center(child: Text('Home work')),
    //AcademicHomeworkView(),
    // const Center(child: Text('Account')),
    //const Center(child: Text('Student')),
    const AcademicHomeworkNoAppBarView(),
    const AcademicAccountNoAppBar(),
    const AllStudentNoAppBar(),
    const More()
  ];

  static final List<String> _titles = [
    'Laksam Cambrian',
    'Home Work',
    'Account',
    'Student',
    'More',
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
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _titles[_selectedIndex], // Dynamic title
            style: const TextStyle(color: Colors.white),
          ),
          actions: [
            // InkWell(
            //   onTap: () {
            //     Get.to(const StudentRequest(),
            //         transition: Transition.rightToLeftWithFade);
            //   },
            //   child:
            //   CircleAvatar(
            //     radius: 15,
            //     backgroundColor: Colors.green.withOpacity(0.8),
            //     child: const Text(
            //       '12',
            //       style: TextStyle(color: Colors.white, fontSize: 12),
            //     ),
            //   ),
            // ),
            InkWell(
              onTap: () {
                Get.to(const StudentRequest(),
                    transition: Transition.rightToLeftWithFade);
              },
              child: const badges.Badge(
                badgeContent: Text('3'),
                child: Icon(Icons.account_circle),
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
              label: 'Account',
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
