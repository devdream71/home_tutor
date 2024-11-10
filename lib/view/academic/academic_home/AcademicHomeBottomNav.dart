import 'package:flutter/material.dart';

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
    const Text('Home'),
    const Text('Home work'),
    const Text('account'),
    const Text('Student'),
    const Text('More'),
  ];

  // Titles for each tab
  static const List<String?> _titles = <String?>[
    'Home',
    'Home work',
    'account',
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
    // Load user info when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laksam Cambrian'),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // to show all tabs
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
