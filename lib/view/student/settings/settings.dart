import 'package:education_home_tutor/home.dart';
import 'package:education_home_tutor/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: AppColor.primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Card(
                child: ListTile(
                  title: const Text("Log out"),
                  leading: const Icon(Icons.logout),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    _logout(context);
                  },
                ),
              ),
              const SizedBox(height: 5.0),
            ],
          ),
        ));
  }
}

Future<bool> _logout(context) async {
  final shouldClose = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Log out'),
      content: const Text('Are you sure you want to logout the app?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () =>
              Get.off(const Home(), transition: Transition.rightToLeftWithFade),
          child: const Text('logout'),
        ),
      ],
    ),
  );
  return shouldClose ?? false; // Prevent exiting if dialog is dismissed
}
